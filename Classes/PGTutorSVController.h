//
//  PGTutorSVController.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PGTutorSVController : UIViewController <UIScrollViewDelegate> {
	id          view1, view2; 
	UIScrollView* scrollView;
	Boolean lock;
	
	UIPageControl *pageControl;
    NSMutableArray *viewControllers;
	
	NSUInteger numberOfPages;
	
    // To be used when scrolls originate from the UIPageControl
    BOOL pageControlUsed;
	
	//unsigned int pageNumber;
}
#pragma mark IBOutlet
@property (nonatomic, retain) IBOutlet id view1;
@property (nonatomic, retain) IBOutlet id view2;
@property (nonatomic, retain) IBOutlet UIScrollView* scrollView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;
@property (nonatomic, retain) NSMutableArray *viewControllers;


#pragma mark ScreenLock
@property (nonatomic)Boolean lock;

//#pragma mark PageNumberForSV
//- (id)initWithPageNumber:(int)page;

- (IBAction)changePage:(id)sender;


@end
