//
//  ConstantsPGDetail.h
//  frdfrd
//
//  Created by westbugs on 10-12-17.
//  Copyright 2010 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsPGDetail : NSObject {

}

extern NSString* const kDetailTitleText;
extern NSString* const kDetailHintText;

extern NSString* const kDetailTextEffect1;
extern NSString* const kDetailTextEffect2;
extern NSString* const kDetailTextEffect3;


#pragma mark TAG
typedef enum{
	kDetailViewTotal = 10,
	
	kDetailView = 0,
	kDetailBackButton = 1,
	kDetailAtPointLabel = 2,
	kDetailThumb = 3,
	kDetailHintLabel = 4,
	
	kDetailTitle = 5,		//View5, Diary List
	
	kDetailEffect1 = 6,		//View6, Diary List
	kDetailEffect2 = 7,		//View7, Diary List
	kDetailEffect3 = 8,		//View8, Diary List
	
	kDetailDescription = 9,		//View9, Diary List
	
	kDetailViewHelp = 10,		//View10, Diary List

	kDetailViewTitleButton = 300,

	kDetailViewTitle = 500,
	
	kDetailViewEffect1 = 511,
	kDetailViewEffect2 = 512,
	kDetailViewEffect3 = 513,


	
}kPGDetail;


@end
