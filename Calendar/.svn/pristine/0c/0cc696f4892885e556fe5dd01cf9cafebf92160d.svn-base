//
//  GCDatePickerControl.m
//  GCCalendar
//
//	GUI Cocoa Common Code Library
//
//  Created by Caleb Davenport on 1/23/10.
//  Copyright GUI Cocoa Software 2010. All rights reserved.
//

#import "GCDatePickerControl.h"
#import "GCCalendar.h"

@interface GCDatePickerControl ()
@property (nonatomic) BOOL today;
@end

@implementation GCDatePickerControl

@synthesize date, today;

#pragma mark create and destroy view
- (id)init {
	if(self = [super init]) {
		//self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"GCDatePickerControlBackground.png"]];
		//self.backgroundColor = [UIColor clearColor];

		// left button
		backButton = [[UIButton alloc] init];
		[backButton setImage:[UIImage imageNamed:@"uiArrowLeft.png"] forState:UIControlStateNormal];
		//backButton.showsTouchWhenHighlighted = NO;
		//backButton.adjustsImageWhenHighlighted = NO;
		[backButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
		
		// right button
		forwardButton = [[UIButton alloc] init];
		[forwardButton setImage:[UIImage imageNamed:@"uiArrowRight.png"] forState:UIControlStateNormal];
		//forwardButton.showsTouchWhenHighlighted = NO;
		//forwardButton.adjustsImageWhenHighlighted = NO;
		[forwardButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
		
		// label
		titleLabel = [[UILabel alloc] init];
		titleLabel.backgroundColor = [UIColor clearColor];
		titleLabel.opaque = YES;
		titleLabel.textAlignment = UITextAlignmentCenter;
		titleLabel.shadowColor = [UIColor whiteColor];
		titleLabel.shadowOffset = CGSizeMake(0, 1);
		titleLabel.font = [UIFont fontWithName:@"Helvetica" size:16];
		titleLabel.font = [UIFont boldSystemFontOfSize:16];


		
		[self addSubview:backButton];
		//[backButton release];
		
		[self addSubview:forwardButton];
		//[forwardButton release];

		[self addSubview:titleLabel];
		//[titleLabel release];

		
		self.today = NO;
	}
	
	return self;
}
- (void)dealloc {
	[backButton release];
	//backButton = nil;
	
	[forwardButton release];
	//forwardButton = nil;
	
	[titleLabel release];
	//titleLabel = nil;
	
	[date release ];
	
	[super dealloc];
}

#pragma mark view notifications
- (CGSize)sizeThatFits:(CGSize)size {
	return CGSizeMake(size.width, 30.0f);
}
- (void)layoutSubviews {
#define kButtonWidth 25
	[super layoutSubviews];
	
	CGRect tempFrame;
	
	tempFrame = CGRectMake(20, 0, kButtonWidth, 30);
	backButton.frame = tempFrame;
	
	tempFrame = CGRectMake(self.frame.size.width - kButtonWidth - 20, 0, kButtonWidth, 30);
	forwardButton.frame = tempFrame;
	
	tempFrame = CGRectMake(kButtonWidth, 0, self.frame.size.width - (kButtonWidth * 2), 30);
	titleLabel.frame = tempFrame;
}

#pragma mark setters
- (void)setDate:(NSDate *)newDate {
	[date release];
	date = newDate;
	[date retain];
	
	self.today = [GCCalendar dateIsToday:date];
		
	NSDateComponents *comp = [[NSCalendar currentCalendar] components:
							  (NSWeekdayCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSYearCalendarUnit)
															 fromDate:date];
	
	NSInteger weekday = [comp weekday];
	NSInteger month = [comp month];
	NSInteger year = [comp year];
	NSInteger day = [comp day];
	
	NSArray *weekdayStrings = [[GCCalendar dateFormatter] weekdaySymbols];
	NSArray *monthStrings = [[GCCalendar dateFormatter] shortMonthSymbols];
	
	NSString *toDisplay = [NSString stringWithFormat:@"%@ %@ %d %d", 
							[weekdayStrings objectAtIndex:weekday - 1],
							[monthStrings objectAtIndex:month - 1],
							day, year];
	titleLabel.text = toDisplay;
}
- (void)setFrame:(CGRect)newFrame {
	newFrame.size.height = 30;
	super.frame = newFrame;
	
	[self setNeedsLayout];
}
- (void)setToday:(BOOL)newToday {
	today = newToday;
	
	if(today) {
		titleLabel.textColor = [UIColor colorWithRed:0
											   green:(88.0/255.0)
												blue:(238.0/255.0)
											   alpha:1.0];
	} else {
		titleLabel.textColor = [UIColor colorWithRed:(48.0/255.0)
											   green:(65.0/255.0)
												blue:(84.0/255.0)
											   alpha:1.0];
	}
}

#pragma mark button actions
- (void)buttonPressed:(UIButton *)sender {
#define kSecondsInDay (60 * 60 * 24)
	if(sender == backButton) {
		NSDate *newDate = [[NSDate alloc] initWithTimeInterval:-kSecondsInDay sinceDate:date];
		self.date = newDate;
		[newDate release];
	} else if(sender == forwardButton) {
		NSDate *newDate = [[NSDate alloc] initWithTimeInterval:kSecondsInDay sinceDate:date];
		self.date = newDate;
		[newDate release];
	}
	
	[self sendActionsForControlEvents:UIControlEventValueChanged];
}

@end
