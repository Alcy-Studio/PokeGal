//
//  GCCViewController.m
//  GCCalendar
//
//	GUI Cocoa Common Code Library
//
//  Created by Caleb Davenport on 1/23/10.
//  Copyright GUI Cocoa Software 2010. All rights reserved.
//

#import "GCCViewController.h"
#import "GCCalendarDayView.h"
#import "GCCalendarTile.h"
#import "GCDatePickerControl.h"
#import "GCCalendar.h"

//Back Button
#import "ActPGScheduleBackButtonTUpInside.h"
#import "ActPGScheduleBackButtonTUpInside+Combo.h"



#define kCalendarBGViewX 0
#define kCalendarBGViewY 0
#define kCalendarBGViewW 320
#define kCalendarBGViewH 480

#define kCalendarBGTitleViewX 85
#define kCalendarBGTitleViewY 0
#define kCalendarBGTitleViewW 150
#define kCalendarBGTitleViewH 30

#define kCalendarBGTopLblX 100
#define kCalendarBGTopLblY 0
#define kCalendarBGTopLblW 120
#define kCalendarBGTopLblH 23

#define kCalendarButtonView1X 20
#define kCalendarButtonView1Y 0
#define kCalendarButtonView1W 50
#define kCalendarButtonView1H 50

#define kCalendarButtonView2X 250
#define kCalendarButtonView2Y 0
#define kCalendarButtonView2W 50
#define kCalendarButtonView2H 50

#define kCalendarButtonView3X 201


#define kCalendarButtonViewY 360
#define kCalendarButtonViewWidth 72
#define kCalendarButtonViewHeight 72



#define kCalendarAnimationDuration 0.3f
//#define kCalendarDayPickerX 10
#define kCalendarDayPickerY 60
#define kCalendarDayPickerHeight 45

#define kCalendarBGLbl1X 0
#define kCalendarBGLbl1Y 0
#define kCalendarBGLbl1W 320
#define kCalendarBGLbl1H 25

#define kCalendarBGLbl2X 0
#define kCalendarBGLbl2Y 25
#define kCalendarBGLbl2W 320
#define kCalendarBGLbl2H 25


#define kCalendarBGDVLbl1X 0
#define kCalendarBGDVLbl1Y 95
#define kCalendarBGDVLbl1W 320
#define kCalendarBGDVLbl1H 5

#define kCalendarBGDVLbl2X 0
#define kCalendarBGDVLbl2Y 435
#define kCalendarBGDVLbl2W 320
#define kCalendarBGDVLbl2H 5


#define kCalendarDayViewMarginX 0
#define kCalendarDayViewMarginY 100
#define kCalendarDayViewWidth 320
#define kCalendarDayViewHeight 335

#define kCalendarHintViewHeight 40

@interface GCCViewController ()
@property (nonatomic, retain) NSDate *date;
@property (nonatomic, retain) GCCalendarDayView *dayView;

- (void)reloadDayAnimated:(BOOL)animated context:(void *)context;
@end

@implementation GCCViewController

@synthesize date, dayView, dayPicker, hasAddButton;

#pragma mark create and destroy view
- (id)init {
	if(self = [super init]) {
		//Test
		self.delegate = self;
		self.dataSource = self;
		self.hasAddButton = YES;

		self.title = [[NSBundle mainBundle] localizedStringForKey:@"CALENDAR" value:@"" table:@"GCCalendar"];
		self.tabBarItem.image = [UIImage imageNamed:@"Calendar.png"];
		
		viewDirty = YES;
		viewVisible = NO;
		
		[[NSNotificationCenter defaultCenter] addObserver:self 
												 selector:@selector(calendarTileTouch:)
													 name:__GCCalendarTileTouchNotification
												   object:nil];
		[[NSNotificationCenter defaultCenter] addObserver:self 
												 selector:@selector(calendarShouldReload:)
													 name:GCCalendarShouldReloadNotification
												   object:nil];
	}
	
	return self;
}
- (void)dealloc {
	[[NSNotificationCenter defaultCenter] removeObserver:self];
	
	[hintView release];
	[date release];
	[dayView release];	
	[dayPicker release];
	
	[super dealloc];
	
	
}

#pragma mark calendar actions
- (void)calendarShouldReload:(NSNotification *)notif {
	viewDirty = YES;
}
- (void)calendarTileTouch:(NSNotification *)notif {
	if (delegate != nil) {
		GCCalendarTile *tile = [notif object];
		[delegate calendarTileTouchedInView:self withEvent:[tile event]];
	}
}

#pragma mark GCDatePickerControl actions
- (void)datePickerDidChangeDate:(GCDatePickerControl *)picker {
	NSTimeInterval interval = [date timeIntervalSinceDate:picker.date];
	
	self.date = picker.date;
	
	[[NSUserDefaults standardUserDefaults] setObject:date forKey:@"GCCalendarDate"];
	
	[self reloadDayAnimated:YES context:[NSNumber numberWithInt:interval]];
}

#pragma mark button actions
- (void)today {
	dayPicker.date = [NSDate date];
	
	self.date = dayPicker.date;
	
	[[NSUserDefaults standardUserDefaults] setObject:date forKey:@"GCCalendarDate"];
	
	[self reloadDayAnimated:NO context:NULL];
}
- (void)add {
	if (delegate != nil) {
		[delegate calendarViewAddButtonPressed:self];
	}
}

//Back Button Touch Down
- (void)back{
	NSLog(@"GCCViewController - ActBackButtonTUpInside");
	ActPGScheduleBackButtonTUpInside* b = [[ActPGScheduleBackButtonTUpInside alloc]init];
	[b setComboBackButton];
	[b autorelease];
	
	
}
//

#pragma mark custom setters
- (void)setHasAddButton:(BOOL)b {
	hasAddButton = b;
	
	if (hasAddButton) {
		UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
																				target:self
																				action:@selector(add)];
		self.navigationItem.rightBarButtonItem = button;
		[button release];
	}
	else {
		self.navigationItem.rightBarButtonItem = nil;
	}
}

#pragma mark view notifications
- (void)loadView {
	[super loadView];
	
	//Honesty Unknown
	//self.date = [[NSUserDefaults standardUserDefaults] objectForKey:@"GCCalendarDate"];
	if (date == nil) {
		self.date = [NSDate date];
	}
	
	// Setup Background
	[self.view setBackgroundColor:[UIColor whiteColor]];
	
	// Setup Info Background Image
	NSString* path1 = [[NSBundle mainBundle] pathForResource: @"BGBlueTile"
									ofType: @"png"];
	UIImageView *BGImageView = [[UIImageView alloc] init];
	[BGImageView setImage:[UIImage imageWithContentsOfFile:path1]];
	
	
	BGImageView.frame = CGRectMake(kCalendarBGViewX, 
								   kCalendarBGViewY, 
								   kCalendarBGViewW,  
								   kCalendarBGViewH);
	
	[self.view addSubview:BGImageView];
	[BGImageView release];
	
	// Setup Top labels
	UILabel *BGLbl1 = [[UILabel alloc] init];
	BGLbl1.frame = CGRectMake(kCalendarBGLbl1X, 
								kCalendarBGLbl1Y, 
								kCalendarBGLbl1W, 
								kCalendarBGLbl1H);
	BGLbl1.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:BGLbl1];
	[BGLbl1 release];
	
	UILabel *BGLbl2 = [[UILabel alloc] init];
	BGLbl2.frame = CGRectMake(kCalendarBGLbl2X, 
								kCalendarBGLbl2Y, 
								kCalendarBGLbl2W, 
								kCalendarBGLbl2H);
	BGLbl2.backgroundColor = [UIColor colorWithRed:219.0f/255.0f green:218.0f/255.0f blue:249.0f/255.0f alpha:1.0f];
	[self.view addSubview:BGLbl2];
	[BGLbl2 release];
	
	// Setup Top Title
	NSString* path2 = [[NSBundle mainBundle] pathForResource: @"BGTitleHalf"
													 ofType: @"png"];
	UIImageView *BGTitleView = [[UIImageView alloc] init];
	[BGTitleView setImage:[UIImage imageWithContentsOfFile:path2]];
	
	
	BGTitleView.frame = CGRectMake(kCalendarBGTitleViewX, 
								   kCalendarBGTitleViewY, 
								   kCalendarBGTitleViewW,  
								   kCalendarBGTitleViewH);
	
	[self.view addSubview:BGTitleView];
	[BGTitleView release];
	
	UILabel *BGTopLbl = [[UILabel alloc] init];
	BGTopLbl.frame = CGRectMake(kCalendarBGTopLblX, 
							  kCalendarBGTopLblY, 
							  kCalendarBGTopLblW, 
							  kCalendarBGTopLblH);
	BGTopLbl.backgroundColor = [UIColor clearColor];
	BGTopLbl.textAlignment = UITextAlignmentCenter;
	BGTopLbl.textColor = [UIColor whiteColor];
	BGTopLbl.font = [UIFont fontWithName:@"Helvetica-Bold" size:16.0f];
	BGTopLbl.shadowColor = [UIColor darkGrayColor];
	BGTopLbl.shadowOffset = CGSizeMake(1.0f, -1.0f);
	BGTopLbl.text = @"SCHEDULE";
	[self.view addSubview:BGTopLbl];
	[BGTopLbl release];
	
	//NSLog(@"%@", [[UIFont fontNamesForFamilyName:@"Helvetica"] description]);

	// Setup dayView Label
	UILabel *BGDVLbl1 = [[UILabel alloc] init];
	BGDVLbl1.frame = CGRectMake(kCalendarBGDVLbl1X, 
							  kCalendarBGDVLbl1Y, 
							  kCalendarBGDVLbl1W, 
							  kCalendarBGDVLbl1H);
	BGDVLbl1.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:BGDVLbl1];
	[BGDVLbl1 release];
	
	UILabel *BGDVLbl2 = [[UILabel alloc] init];
	BGDVLbl2.frame = CGRectMake(kCalendarBGDVLbl2X, 
							  kCalendarBGDVLbl2Y, 
							  kCalendarBGDVLbl2W, 
							  kCalendarBGDVLbl2H);
	BGDVLbl2.backgroundColor = [UIColor whiteColor];
	[self.view addSubview:BGDVLbl2];
	[BGDVLbl2 release];


	
	// setup day picker
	dayPicker = [[GCDatePickerControl alloc] init];
	dayPicker.frame = CGRectMake(0, 
								 kCalendarDayPickerY, 
								 self.view.frame.size.width, 
								 kCalendarDayPickerHeight);
	dayPicker.autoresizingMask = UIViewAutoresizingNone;
	dayPicker.date = date;
	[dayPicker addTarget:self action:@selector(datePickerDidChangeDate:) forControlEvents:UIControlEventValueChanged];
	
	[self.view addSubview:dayPicker];
	[dayPicker release];
	
	
	// setup initial day view
	dayView = [[GCCalendarDayView alloc] initWithCalendarView:self];
	
	//Modify Here
	/*
	dayView.frame = CGRectMake(0,
							   dayPicker.frame.size.height,
							   self.view.frame.size.width,
							   self.view.frame.size.height - dayPicker.frame.size.height - kHintViewHeight);
	*/
	dayView.frame = CGRectMake(kCalendarDayViewMarginX,
							   kCalendarDayViewMarginY,
							   kCalendarDayViewWidth,
							   kCalendarDayViewHeight);
	dayView.autoresizingMask = (UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth);
	[self.view addSubview:dayView];
	

	// Setup Back Button
	buttonBack = [UIButton buttonWithType:UIButtonTypeCustom];
	//[buttonBack setTitle:@"Back" forState:UIControlStateNormal];
	NSString* pathBack = [[NSBundle mainBundle] pathForResource:@"uiActBack" ofType:@"png"];
	[buttonBack setImage:[UIImage imageWithContentsOfFile:pathBack] forState:UIControlStateNormal];
	buttonBack.frame = CGRectMake(kCalendarButtonView1X, 
								  kCalendarButtonView1Y, 
								  kCalendarButtonView1W,  
								  kCalendarButtonView1H);
	
	[buttonBack addTarget:self action:@selector(back) forControlEvents:UIControlStateHighlighted];
	[self.view addSubview:buttonBack];
	
	// Setup Today Button
	buttonToday = [UIButton buttonWithType:UIButtonTypeCustom];
	//[buttonToday setTitle:@"Today" forState:UIControlStateNormal];
	NSString* pathToday = [[NSBundle mainBundle] pathForResource:@"uiActRefresh" ofType:@"png"];
	[buttonToday setImage:[UIImage imageWithContentsOfFile:pathToday] forState:UIControlStateNormal];
	
	buttonToday.frame = CGRectMake(kCalendarButtonView2X, 
								   kCalendarButtonView2Y, 
								   kCalendarButtonView2W,  
								   kCalendarButtonView2H);
	
	[buttonToday addTarget:self action:@selector(today) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:buttonToday];
	
	/*
	// Setup Info Button
	UIButton *buttonInfo = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[buttonInfo setTitle:@"Info" forState:UIControlStateNormal];
	buttonInfo.frame = CGRectMake(kCalendarButtonView3X, 
								  kCalendarButtonViewY, 
								  kCalendarButtonViewWidth,  
								  kCalendarButtonViewHeight);
	
	[self.view addSubview:buttonInfo];
	 
	*/
	
	
	
	
	// setup Hint
	hintView = [[UILabel alloc] init];
	hintView.text = @"Coming Event";
	hintView.textAlignment = UITextAlignmentCenter;
	hintView.textColor = [UIColor whiteColor];
	hintView.backgroundColor = [UIColor blackColor];
	
	hintView.frame = CGRectMake(0, 
								self.view.frame.size.height - kCalendarHintViewHeight, 
								self.view.frame.size.width, 
								kCalendarHintViewHeight);
	hintView.alpha = 0.5f;
	
	[self.view addSubview:hintView];
	[hintView release];
	
	// setup today button
	
	
	
	/*
	UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:[[NSBundle mainBundle] localizedStringForKey:@"TODAY" value:@"" table:@"GCCalendar"]
															   style:UIBarButtonItemStylePlain
															  target:self 
															  action:@selector(today)];
	self.navigationItem.leftBarButtonItem = button;
	
	*/
	
	//Setup up Interface Here

}
- (void)viewWillAppear:(BOOL)animated {
	[super viewWillAppear:animated];
	
	if (viewDirty) {
		[self reloadDayAnimated:NO context:NULL];
		viewDirty = NO;
	}
	
	viewVisible = YES;
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    dayPicker = nil;
	dayView = nil;
	hintView = nil;
	
		
	
	
}

- (void)viewDidDisappear:(BOOL)animated {
	[super viewDidDisappear:animated];
	
	viewVisible = NO;
}

#pragma mark view animation functions
- (void)reloadDayAnimated:(BOOL)animated context:(void *)context {
	if (animated) {
		NSTimeInterval interval = [(NSNumber *)context doubleValue];
		
		// block user interaction
		dayPicker.userInteractionEnabled = NO;
		
		// setup next day view
		GCCalendarDayView *nextDayView = [[GCCalendarDayView alloc] initWithCalendarView:self];
		CGRect initialFrame = dayView.frame;
		if (interval < 0) {
			initialFrame.origin.x = initialFrame.size.width;
		}
		else if (interval > 0) {
			initialFrame.origin.x = 0 - initialFrame.size.width;
		}
		else {
			[nextDayView release];
			return;
		}
		nextDayView.frame = initialFrame;
		nextDayView.date = date;
		[nextDayView reloadData];
		nextDayView.contentOffset = dayView.contentOffset;

		[self.view addSubview:nextDayView];
		
		[UIView beginAnimations:nil context:nextDayView];
		[UIView setAnimationDuration:kCalendarAnimationDuration];
		[UIView setAnimationDelegate:self];
		[UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
		CGRect finalFrame = dayView.frame;
		if(interval < 0) {
			finalFrame.origin.x = 0 - finalFrame.size.width;
		} else if(interval > 0) {
			finalFrame.origin.x = finalFrame.size.width;
		}
		nextDayView.frame = dayView.frame;
		dayView.frame = finalFrame;
		[UIView commitAnimations];
	}
	else {
		CGPoint contentOffset = dayView.contentOffset;
		dayView.date = date;
		[dayView reloadData];
		dayView.contentOffset = contentOffset;
	}
}
- (void)animationDidStop:(NSString *)animationID 
				finished:(NSNumber *)finished 
				 context:(void *)context {
	
	GCCalendarDayView *nextDayView = (GCCalendarDayView *)context;
	
	// cut variables
	[dayView removeFromSuperview];
	
	// reassign variables
	self.dayView = nextDayView;
	
	// release pointers
	[nextDayView release];
	
	// reset pickers
	dayPicker.userInteractionEnabled = YES;
}

#pragma mark GCCalendarDataSource
- (NSArray *)calendarEventsForDate:(NSDate *)delegateDate {
	NSMutableArray *events = [NSMutableArray array];
	
	NSDateComponents *components = [[NSCalendar currentCalendar] components:
									(NSWeekdayCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSYearCalendarUnit)
																   fromDate:delegateDate];
	[components setSecond:0];
	
	// fetch EKEvents+ from sqlite based on "date" predicate
	// convert events to GCCalendarEvent
	// add events to "events" array
	
	//**Edit GCCalendarEvent so it behaves like EKEvent(avoid subclassing for compatibility reasons)
	
	/*
	 Use CustomEvent to add or delete events(sqlite and iCal), then use MixCalendar to fetch it(sqlite)
	 */
	
	
	// create 5 calendar events that aren't all day events
	for (NSInteger i = 0; i < 5; i++) {
		GCCalendarEvent *event = [[GCCalendarEvent alloc] init];
		event.color = [[GCCalendar colors] objectAtIndex:i];
		event.allDayEvent = NO;
		event.eventName = [event.color capitalizedString];
		event.eventDescription = event.eventName;
		
		[components setHour:12 + i];
		[components setMinute:0];
		
		event.startDate = [[NSCalendar currentCalendar] dateFromComponents:components];
		[components setMinute:50];
		
		event.endDate = [[NSCalendar currentCalendar] dateFromComponents:components];
		
		[events addObject:event];
		[event release];
	}
	
	GCCalendarEvent *evt = [[GCCalendarEvent alloc] init];
	evt.color = [[GCCalendar colors] objectAtIndex:1];
	evt.allDayEvent = NO;
	evt.eventName = @"Test event";
	evt.eventDescription = @"Description for test event. This is intentionnaly too long to stay on a single line.";
	[components setHour:13];
	[components setMinute:0];
	evt.startDate = [[NSCalendar currentCalendar] dateFromComponents:components];
	[components setHour:15];
	[components setMinute:30];
	evt.endDate = [[NSCalendar currentCalendar] dateFromComponents:components];
	[events addObject:evt];
	[evt release];
	
	// create an all day event
	GCCalendarEvent *event = [[GCCalendarEvent alloc] init];
	event.allDayEvent = YES;
	event.eventName = @"All Day Event";
	[events addObject:event];
	[event release];
	
	return events;
}

- (NSInteger)workingDayStart
{
	return 10;
}

- (NSInteger)workingDayEnd
{
	return 24;
}

- (BOOL)showOnlyWorkingHours
{
	return YES;
}

#pragma mark GCCalendarDelegate
- (void)calendarTileTouchedInView:(GCCalendarView *)view withEvent:(GCCalendarEvent *)event {
	NSLog(@"Touch event %@", event.eventName);
}
- (void)calendarViewAddButtonPressed:(GCCalendarView *)view {
	NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
