//
//  MTextOut.m
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MTextOut.h"

#import "ConstantsMTextOut.h"
static const int kRandMod = 10;

@implementation MTextOut

+(NSString*)randomDateSms{

	NSInteger i = (arc4random() % kRandMod) + 1;
	
	switch (i) {
		case 1:
			return kMTextOutDateSms1;
			break;
		case 2:
			return kMTextOutDateSms2;
			break;
		case 3:
			return kMTextOutDateSms3;
			break;
		case 4:
			return kMTextOutDateSms4;
			break;
		case 5:
			return kMTextOutDateSms5;
			break;
		case 6:
			return kMTextOutDateSms6;
			break;
		case 7:
			return kMTextOutDateSms7;
			break;
		case 8:
			return kMTextOutDateSms8;
			break;
		case 9:
			return kMTextOutDateSms9;
			break;
		case 10:
			return kMTextOutDateSms10;
			break;
		default:
			break;
	}
	return nil;
}

@end
