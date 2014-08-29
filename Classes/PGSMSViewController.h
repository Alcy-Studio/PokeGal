//
//  PGSMSViewController.h
//  PocketDraft
//
//  Created by westbugs on 10-08-23.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class ADBannerView;
@interface PGSMSViewController : UIViewController {
	id          view1, view2, view3, view4, view5, view6; 
	Boolean lock;
	
	//unsigned int pageNumber;
	
	//TableView
	NSMutableArray		*chatArray;
	NSMutableDictionary *currentChatInfo;
	UITableView*		tv;
	
	UIView* contentView;
	//ADBannerView* banner;
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

//TableView
@property (nonatomic, retain) NSMutableArray* chatArray;
@property (nonatomic, retain) NSMutableDictionary* currentChatInfo;

@property (nonatomic, retain) IBOutlet UITableView* tv;

@property (nonatomic, retain) IBOutlet UIView *contentView;

#pragma mark iAd
//@property (nonatomic, retain) ADBannerView *banner;
@end