//
//  Setting+System.m
//  PocketDraft
//
//  Created by westbugs on 10-08-26.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Setting+System.h"
#import "ConstantsSettingSystem.h"

@implementation Setting(System)

- (void) loadUserDefaultsSetting{
	NSLog(@"Setting+System loadUserDefault");
	
	NSAutoreleasePool* pool = [[NSAutoreleasePool alloc]init];
	
	
	NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
	
	
	self.seVolume =  [defaults floatForKey:kSeSliderKey];
	self.voiceVolume =  [defaults floatForKey:kVoiceSliderKey];
	self.bgmVolume =  [defaults floatForKey:kBgmSliderKey];
	
	//NSLog(@"seVol: %f voiceVol: %f bgmVolume: %f", self.seVolume, self.voiceVolume, self.bgmVolume);

	[pool release];
}

-(float) loadSeVolume{
	//if (!self.udLoaded) {
//		NSLog(@"Setting - seVolume not setup")
//	}
	return self.seVolume;

}
-(float) loadVoiceVolume{
	//if (!self.udLoaded) {
//		NSLog(@"Setting - voiceVolume not setup")
//	}
	return self.voiceVolume;

}
-(float) loadBgmVolume{
	//if (!self.udLoaded) {
//		NSLog(@"Setting - bgmVolume not setup")
//	}
	return self.bgmVolume;

}


@end
