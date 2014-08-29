//
//  ActPGSMSSendButtonTUpInside+Selector.m
//  PocketDraft
//
//  Created by westbugs on 10-09-24.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGSMSSendButtonTUpInside+Selector.h"

#import "PGSMSViewController.h"

#import "MGirl.h" //Method
#import "MTime.h"

#import "ConstantsPGSMSMsg.h"

//static const unsigned int kRandDelayMod = 4;
static const unsigned int kRandMod = 5;
static const unsigned int kChatArrayMax = 20;
static const float kDelay = 3.0f;
static const float kDelayBuffer = 2.0f;

@implementation ActPGSMSSendButtonTUpInside(Selector)

-(void)invalidateTimer{
	
	MTime* time = [[MTime alloc]init];
	[time invalidateTimer];
	[time release];
}

-(void)receiveMsgDelay{
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	if ([defaults boolForKey:kTmpSMSMsg]) {
		return;
	}
	[defaults setBool:YES forKey:kTmpSMSMsg];
	
	//NSUInteger ui = arc4random()% kRandDelayMod + 1;
	[self performSelector:@selector(receiveMsg) withObject:nil afterDelay:kDelay];
}

-(void)msgSound{}

-(NSString*)getReceiveMsgPathForLoveLv{
	[MGirl getGirl];
	//get LoveLv
	NSString* s;
	switch ([[[MGirl getGirl] loveLv] intValue]) {
		case 0:
			s = [NSString stringWithString:kPGSMSGfOtherLv0];
			return s;
			break;
		case 1:
			s = [NSString stringWithString:kPGSMSGfOtherLv1];
			return s; 
			break;
		case 2:
			s = [NSString stringWithString:kPGSMSGfOtherLv2];
			return s; 
			break;
		case 3:
			s = [NSString stringWithString:kPGSMSGfOtherLv3];
			return s; 
			break;
		case 4:
			s = [NSString stringWithString:kPGSMSGfOtherLv4];
			return s; 
			break;
		case 5:
			s = [NSString stringWithString:kPGSMSGfOtherLv5];
			return s; 
			break;
		case 6:
			s = [NSString stringWithString:kPGSMSGfOtherLv6];
			return s; 
			break;
		case 7:
			s = [NSString stringWithString:kPGSMSGfOtherLv7];
			return s; 
			break;
		case 8:
			s = [NSString stringWithString:kPGSMSGfOtherLv8];
			return s; 
			break;
		case 9:
			s = [NSString stringWithString:kPGSMSGfOtherLv9];
			return s; 
			break;
		default:
			s = [NSString stringWithString:kPGSMSGfOtherLv9];
			return s; 
			break;
	}
	return nil;
}

-(NSString*)getSendMsgPathForLoveLv{
	[MGirl getGirl];
	//get LoveLv
	NSString* s;
	switch ([[[MGirl getGirl] loveLv] intValue]) {
		case 0:
			s = [NSString stringWithString:kPGSMSGfSelfLv0];
			return s;
			break;
		case 1:
			s = [NSString stringWithString:kPGSMSGfSelfLv1];
			return s; 
			break;
		case 2:
			s = [NSString stringWithString:kPGSMSGfSelfLv2];
			return s; 
			break;
		case 3:
			s = [NSString stringWithString:kPGSMSGfSelfLv3];
			return s; 
			break;
		case 4:
			s = [NSString stringWithString:kPGSMSGfSelfLv4];
			return s; 
			break;
		case 5:
			s = [NSString stringWithString:kPGSMSGfSelfLv5];
			return s; 
			break;
		case 6:
			s = [NSString stringWithString:kPGSMSGfSelfLv6];
			return s; 
			break;
		case 7:
			s = [NSString stringWithString:kPGSMSGfSelfLv7];
			return s; 
			break;
		case 8:
			s = [NSString stringWithString:kPGSMSGfSelfLv8];
			return s; 
			break;
		case 9:
			s = [NSString stringWithString:kPGSMSGfSelfLv9];
			return s; 
			break;
		default:
			s = [NSString stringWithString:kPGSMSGfSelfLv9];
			return s; 
			break;
	}
	return nil;
}

-(void)receiveMsg{
	
	if (![(PGSMSViewController*)self.resource chatArray]) {
		[(PGSMSViewController*)self.resource setChatArray:[[[NSMutableArray alloc]init] autorelease]];
	}
	if (![(PGSMSViewController*)self.resource currentChatInfo]) {
		[(PGSMSViewController*)self.resource setCurrentChatInfo:[[[NSMutableDictionary alloc] init] autorelease]];
	}
	//Based on Love Lv ------
	NSString* p = [[NSBundle mainBundle] pathForResource:[self getReceiveMsgPathForLoveLv] ofType:kMsgFileType];
	//Based on Love Lv ------

	
	NSArray *a = [[NSArray alloc] initWithContentsOfFile:p];
	
	
	//NSUInteger ui = arc4random() % kRandMod;
	NSString* s;

	//s = (NSString*)[a objectAtIndex:sendMsgIndex]; //never use this again, not safe! Keep in Mind!
	s = [NSString stringWithFormat:@"%@",[a objectAtIndex:sendMsgIndex]];

	[a release];
	
	//add sentence
	UIView* chatView = [self bubbleView:NSLocalizedString(s, @"localized") from:NO];
	
	[[(PGSMSViewController*)self.resource chatArray] addObject:[NSDictionary dictionaryWithObjectsAndKeys:
																NSLocalizedString(s, @"localized"), @"text",
																@"other" , @"speaker", 
																chatView, @"view", nil]];
	
	//update attribute
	
	//erase unwant sentence
	if([[(PGSMSViewController*)self.resource chatArray] count] > kChatArrayMax)
		[[(PGSMSViewController*)self.resource chatArray] removeObjectAtIndex:0];
	
	
	
	
	
	
	
	
	
	
	
	[[(PGSMSViewController*)self.resource tv] reloadData];
	
	[[(PGSMSViewController*)self.resource tv] scrollToRowAtIndexPath:
	 [NSIndexPath indexPathForRow:[[(PGSMSViewController*)self.resource chatArray] count]-1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];
	
	
}

-(void)sendMsg{
	//No need to care other methods, modify the following to establish sentence
	
	//load from plist
	
	//NSString* p = [[NSBundle mainBundle] pathForResource:@"PGSMS" ofType:nil];
	
	//NSMutableArray *a1 = [NSKeyedUnarchiver unarchiveObjectWithFile:p];
	
	//if (!a1) {
	//	a1 = [[NSMutableArray alloc] init];
	//}
	//NSMutableArray *a = [[NSMutableArray alloc] initWithContentsOfFile:p];
	if (![(PGSMSViewController*)self.resource chatArray]) {
		[(PGSMSViewController*)self.resource setChatArray:[[[NSMutableArray alloc]init] autorelease]];
	}
	if (![(PGSMSViewController*)self.resource currentChatInfo]) {
		[(PGSMSViewController*)self.resource setCurrentChatInfo:[[[NSMutableDictionary alloc] init] autorelease]];
	}
	//Based on Love Lv ------
	NSString* p = [[NSBundle mainBundle] pathForResource:[self getSendMsgPathForLoveLv] ofType:kMsgFileType];
	//Based on Love Lv ------

	NSArray *a = [[NSArray alloc] initWithContentsOfFile:p];
	
			
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	
	sendMsgIndex = [defaults integerForKey:kTmpSMSMsgIndex];
	
	NSUInteger ui = arc4random() % kRandMod;
	
	
	NSString* s;

	//make current msg different from the previous
	if (sendMsgIndex == ui) {
		switch (sendMsgIndex) {
			case 0:
				++sendMsgIndex;
				break;
			default:
				--sendMsgIndex;
				break;
		}
	}else {
		sendMsgIndex = ui;
	}
	
	[defaults setInteger:sendMsgIndex forKey:kTmpSMSMsgIndex];

	//NSLog(@"index: %i ui: %i", sendMsgIndex, ui );
	NSLog(@"%@", [a objectAtIndex:sendMsgIndex]);

	//s = (NSString*)[a objectAtIndex:sendMsgIndex]; //never use this again, not safe! Keep in Mind!
	s = [NSString stringWithFormat:@"%@",[a objectAtIndex:sendMsgIndex]];
	[a release];
	/*
	 //insert original entries to chatArray first
	 UIView* chatView;
	 for (NSInteger i; i < [a1 count]; i++) {
	 chatView = [self bubbleView:[NSString stringWithFormat:@"speak sentence: %i", i] 
	 from:NO];
	 //add sentence
	 }
	 */
	//add sentence
	//NSLog(@"%@", s);
	UIView* chatView = [self bubbleView:NSLocalizedString(s, @"localized") from:YES];
	
	[[(PGSMSViewController*)self.resource chatArray] addObject:[NSDictionary dictionaryWithObjectsAndKeys:
																NSLocalizedString(s, @"localized"), @"text",
																@"self" , @"speaker", 
																chatView, @"view", nil]];
		
	//update attribute
	
	
	//erase unwant sentence
	if([[(PGSMSViewController*)self.resource chatArray] count] > kChatArrayMax)
		[[(PGSMSViewController*)self.resource chatArray] removeObjectAtIndex:0];
	
	//save to Array , array to plist
	
	//NSLog(@"%@", p);
	
	//[NSKeyedArchiver archiveRootObject:a toFile:p];
	
	//[a writeToFile:p atomically:YES];
	
	//NSLog(@"Array count: %i", [a count]);
	
	//[(PGSMSViewController*)self.resource setChatArray:[[[NSMutableArray alloc]initWithArray:a] autorelease]];
	
	
	
	//NSLog(@"%@",[[chatArray lastObject] objectForKey:@"text"]);
	
	[[(PGSMSViewController*)self.resource tv] reloadData];
	
	[[(PGSMSViewController*)self.resource tv] scrollToRowAtIndexPath:
	 [NSIndexPath indexPathForRow:[[(PGSMSViewController*)self.resource chatArray] count]-1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];
	
	
	//-----------------
	[self performSelector:@selector(refreshDelay) withObject:nil afterDelay:kDelayBuffer];
}
-(void)refreshDelay{
	
	[[NSUserDefaults standardUserDefaults] setBool:NO forKey:kTmpSMSMsg];

}

- (UIView *)bubbleView:(NSString *)text from:(BOOL)fromSelf {
	// build single chat bubble cell with given text
	UIView *returnView = [[UIView alloc] initWithFrame:CGRectZero];
	returnView.backgroundColor = [UIColor clearColor];
	
	UIImage *bubble = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:fromSelf?@"bubbleSelf":@"bubble" ofType:@"png"]];
	UIImageView *bubbleImageView = [[UIImageView alloc] initWithImage:[bubble stretchableImageWithLeftCapWidth:21 topCapHeight:14]];
	
	bubbleImageView.alpha = 0.5f;
	UIFont *font = [UIFont systemFontOfSize:12];
	CGSize size = [text sizeWithFont:font constrainedToSize:CGSizeMake(150.0f, 1000.0f) lineBreakMode:UILineBreakModeWordWrap];
	
	UILabel *bubbleText = [[UILabel alloc] initWithFrame:CGRectMake(21.0f, 14.0f, size.width+10, size.height+10)];
	bubbleText.backgroundColor = [UIColor clearColor];
	bubbleText.font = font;
	bubbleText.numberOfLines = 0;
	bubbleText.lineBreakMode = UILineBreakModeWordWrap;
	bubbleText.text = text;
	bubbleText.textAlignment = UITextAlignmentCenter;
	
	bubbleImageView.frame = CGRectMake(0.0f, 0.0f, size.width+60, size.height+40.0f);
	if(fromSelf)
		returnView.frame = CGRectMake(320.0f - bubbleImageView.frame.size.width, 10.0f, 200.0f, size.height+50.0f);
	else
		returnView.frame = CGRectMake(0.0f, 10.0f, 200.0f, size.height+50.0f);
	
	[returnView addSubview:bubbleImageView];
	[bubbleImageView release];
	[returnView addSubview:bubbleText];
	[bubbleText release];
	
	return [returnView autorelease];
}

@end
