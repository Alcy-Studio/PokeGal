//
//  MBgm.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MBgm.h"
#import "MUi.h"
#import "Setting.h"

#import "Bgm.h"
#import "PGNavController.h"

#import "ConstantsMBgmEx.h"

@implementation MBgm

@synthesize player, numberOfLoops, bgmVolume; // the player object
@synthesize currentBgm;

//@synthesize delegate;

+(MBgm*)getBgm{
	return [(PGNavController*)[MUi getNavigationController] bgm];
}

- (id)init{
	[super init];
	NSLog(@"MBgm init");
	
	self.player.delegate = self;
	//init indefinite loop
	self.numberOfLoops = -1;
		
	//Set Music Volume
	
	Setting *setting = [[Setting alloc]init];
	self.bgmVolume = setting.bgmVolume;
	[setting release];
	
	NSLog(@"Bgm Volume: %f", self.bgmVolume);
		
	return self;
}

- (void)dealloc{
	[player release];
	//[delegate release];
	[currentBgm release];
	[super dealloc];
}


-(void)loadSong:(NSString*)f extension:(NSString*)e{
	NSLog(@"MBgm setSong: extension");
	NSString *soundFilePath =
	[[NSBundle mainBundle] pathForResource: f
									ofType: e];
	
	if (!soundFilePath) {
		NSLog(@"MBgm loadSong: File Not Exist");
		return;
	}
	NSURL *fileURL = [[NSURL alloc] initFileURLWithPath: soundFilePath];
	
	//AVAudioPlayer *newPlayer =
//	[[AVAudioPlayer alloc] initWithContentsOfURL: fileURL
//										   error: nil];
	
	NSError *error = nil;
	AVAudioPlayer *newPlayer = [[AVAudioPlayer alloc] 
								initWithData:[NSData dataWithContentsOfURL:fileURL] error:&error];	
	[fileURL release];

	if(!newPlayer){
		[newPlayer release];
		 NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		 abort();
	}
	 
	
	
	newPlayer.numberOfLoops = self.numberOfLoops;
	newPlayer.volume = self.bgmVolume;
	
	self.player = newPlayer;
	[newPlayer release];
	
	[player prepareToPlay];
	[player setDelegate: self];
	
	//set Current Bgm
	self.currentBgm = f;


}

- (void) playOrPause {
	NSLog(@"MBgm playOrPause");
    // if already playing, then pause
    if (self.player.playing) {
        [self.player pause];
		
		// if stopped or paused, start playing
    } else if ([self.player deviceCurrentTime] != 0) {
		[self.player play];

	} else {
		NSLog(@"MBgm - Failed: playOrPause pre-Stopped Bgm");

	}
	 
}

- (void) unloadSong{
	
	[self.player stop];
	self.player = nil;
	self.currentBgm = nil;

}


- (void) changeSong:(NSString*)f extension:(NSString*)e{
	if ([self.player isPlaying]) {
		[self.player stop];
	}
	if ([self.player url] != nil) {
		[self unloadSong];
	}
	[self loadSong:f extension:e];

	//current player bgm
	self.currentBgm = f;


}

-(void)doVolumeFade
{  
	//[[NSUserDefaults standardUserDefaults] setBool:YES forKey:kSongFading];
    if (self.player.volume > 0.1) {
        self.player.volume = self.player.volume - 0.1;
        [self performSelector:@selector(doVolumeFade) withObject:nil afterDelay:0.1];  
	} else {
        // Stop and get the sound ready for playing again
		//[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kSongFading];
        [self.player stop];
        self.player.currentTime = 0;
        [self.player prepareToPlay];
        self.player.volume = 1.0;
    }
}

- (void)audioPlayerBeginInterruption:(AVAudioPlayer *)player{
	NSLog (@"Interrupted. The system has paused audio playback.");
    
    if (self.player.playing) {
		
		[self.player stop];
    }
}
- (void)audioPlayerDecodeErrorDidOccur:(AVAudioPlayer *)player error:(NSError *)error{}
- (void)audioPlayerDidFinishPlaying:(AVAudioPlayer *)player successfully:(BOOL)flag{}
- (void)audioPlayerEndInterruption:(AVAudioPlayer *)player{
	NSLog (@"Interruption ended. Resuming audio playback.");
    
    
    if ([self.player deviceCurrentTime] == 0) {
		
        [self.player prepareToPlay];
        [self.player play];
    }
}
//- (void)audioPlayerEndInterruption:(AVAudioPlayer *)player withFlags:(NSUInteger)flags{}


@end
