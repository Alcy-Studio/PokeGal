//
//  ActPGMapGoButtonTUpInside.m
//  PocketDraft
//
//  Created by westbugs on 10-09-23.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import "ActPGMapGoButtonTUpInside.h"

//Categories
#import "ActPGMapGoButtonTUpInside+Combo.h"

//Constants
#import "ConstantsAuditorUserDefaults.h"

@implementation ActPGMapGoButtonTUpInside

-(id)initWithRole:(unsigned int)r{
	self = [super init];
	if(!self)
		return self;
	self.role = r;
	return self;
}
-(void)setCombo{
	switch (self.role) {
		case kAudUDNumPGMapGoButton:
			[self setComboGoButton];
			break;
		
		case kAudUDNumPGMapGoButtonA:
			[self setComboGoButtonA];
			break;
		case kAudUDNumPGMapGoButtonB:
			[self setComboGoButtonB];
			break;
		case kAudUDNumPGMapGoButtonC:
			[self setComboGoButtonC];
			break;
		case kAudUDNumPGMapGoButtonD:
			[self setComboGoButtonD];
			break;
		case kAudUDNumPGMapGoButtonE:
			[self setComboGoButtonE];
			break;
		case kAudUDNumPGMapGoButtonF:
			[self setComboGoButtonF];
			break;
		case kAudUDNumPGMapGoButtonG:
			[self setComboGoButtonG];
			break;
		case kAudUDNumPGMapGoButtonH:
			[self setComboGoButtonH];
			break;
		case kAudUDNumPGMapGoButtonI:
			[self setComboGoButtonI];
			break;
			
			//Go Button with Date
		case kAudUDNumPGMapDateButtonA:
			[self setComboDateButtonA];
			break;
		case kAudUDNumPGMapDateButtonB:
			[self setComboDateButtonB];
			break;
		case kAudUDNumPGMapDateButtonC:
			[self setComboDateButtonC];
			break;
		case kAudUDNumPGMapDateButtonD:
			[self setComboDateButtonD];
			break;
		case kAudUDNumPGMapDateButtonE:
			[self setComboDateButtonE];
			break;
		case kAudUDNumPGMapDateButtonF:
			[self setComboDateButtonF];
			break;
		case kAudUDNumPGMapDateButtonG:
			[self setComboDateButtonG];
			break;
		case kAudUDNumPGMapDateButtonH:
			[self setComboDateButtonH];
			break;
		case kAudUDNumPGMapDateButtonI:
			[self setComboDateButtonI];
			break;
			
			
		default:
			break;
	}
	
};
@end

