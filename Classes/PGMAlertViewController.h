//
//  PGMAlertViewController.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PGMAlertViewController : UIViewController{
	id          view1, view2, view3, view4, view5, view6; 
	Boolean lock;
	
	//unsigned int pageNumber;
}
#pragma mark IBOutlet
@property (nonatomic, retain) IBOutlet id view1;
@property (nonatomic, retain) IBOutlet id view2;
@property (nonatomic, retain) IBOutlet id view3;
@property (nonatomic, retain) IBOutlet id view4;
@property (nonatomic, retain) IBOutlet id view5;
@property (nonatomic, retain) IBOutlet id view6;





#pragma mark ScreenLock
@property (nonatomic)Boolean lock;

//#pragma mark PageNumberForSV
//- (id)initWithPageNumber:(int)page;



@end