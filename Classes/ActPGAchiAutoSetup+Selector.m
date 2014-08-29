//
//  ActPGAchiAutoSetup+Selector.m
//  frdfrd
//
//  Created by westbugs on 10-10-15.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGAchiAutoSetup+Selector.h"

//Additional
#import "PGAchiViewController.h"

	//Method
#import "MLoad.h"
#import "MGift.h"
#import "MUi.h"
#import "MGirl.h"

//Constants
#import "ConstantsPGAchi.h"
#import "ConstantsAuditorUserDefaults.h"
#import "ConstantsSceneCode.h"

#import "ConstantsPGAchiFileName.h"

static const float kAniDuration = 1.0f;

@interface ActPGAchiAutoSetup ()

-(void)setAnimation;
-(void)setView1;
-(void)setViewTopTitle;
-(void)setViewTopLeftLabel;



@end

@implementation ActPGAchiAutoSetup(Selector)

-(void)setLevel{
	
	NSUInteger i = [[[MGirl getGirl] loveLv] intValue];
	switch (i) {
		case 1:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias1 scene:kSceneCodePGAchi];
			break;
		case 2:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias2 scene:kSceneCodePGAchi];
			break;
		case 3:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias3 scene:kSceneCodePGAchi];
			break;
		case 4:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias4 scene:kSceneCodePGAchi];
			break;
		case 5:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias5 scene:kSceneCodePGAchi];
			break;
		case 6:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias6 scene:kSceneCodePGAchi];
			break;
		case 7:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias7 scene:kSceneCodePGAchi];
			break;
		case 8:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias8 scene:kSceneCodePGAchi];
			break;
		case 9:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias9 scene:kSceneCodePGAchi];
			break;
		default:
			[MUi modifyTag:kAchiNicknameLabel role:kAudUDNumPGAchiAlias9 scene:kSceneCodePGAchi];
			break;
	}
}

-(void)updateGiftIconsRole{
	for (NSUInteger i = kAchiGiftUpLeftButton; i <= kAchiGiftBottomRightButton; i++) {
		[MGift setGiftRoleWithTag:i];
	}
}

-(void)setViewWithTag{
	[self setViewTopTitle];
	[self setViewTopLeftLabel];

	for (NSUInteger i = 1; i <= kAchiViewTotal; i++) {
		if (i != kAchiViewHelp && i != kAchiIconImage) 
			[MLoad setViewWithTag:i controller:self.resource];
		else if (i == kAchiIconImage)
			[self setAnimation];
	}
}

-(void)setViewTopLeftLabel{
	[(UILabel*)[[(PGAchiViewController*)self.resource view] viewWithTag:kAchiTopLeftLabel] 
	 setText:NSLocalizedString(kAchiTopLeftLabelText,  @"Localized")];
	
}

-(void)setViewTopTitle{
	[(UILabel*)[[(PGAchiViewController*)self.resource view] viewWithTag:kAchiViewTitle] 
	 setText:NSLocalizedString(kAchiTitleText,  @"Localized")];
	
}

-(void)setAnimation{
	[self setView1];
}
-(void)setView1{
	
	NSString* path1 = [[NSBundle mainBundle] pathForResource:kPgAchiView1AniImage1 ofType:kPgAchiView1AniImageType];
	NSString* path2 = [[NSBundle mainBundle] pathForResource:kPgAchiView1AniImage2 ofType:kPgAchiView1AniImageType];
	
	[(UIImageView*)[(PGAchiViewController*)self.resource view1] 
	 setAnimationImages:[NSArray arrayWithObjects:[UIImage imageWithContentsOfFile:path1], [UIImage imageWithContentsOfFile:path2], nil]]; 

	[(UIImageView*)[(PGAchiViewController*)self.resource view1] setAnimationDuration:kAniDuration];

	[(UIImageView*)[(PGAchiViewController*)self.resource view1] startAnimating];
}


@end
