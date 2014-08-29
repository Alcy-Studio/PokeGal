//
//  Region.h
//  frdfrd
//
//  Created by westbugs on 11-01-27.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface Region :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * effect;
@property (nonatomic, retain) NSNumber * lvReqA;
@property (nonatomic, retain) NSNumber * lvReqB;
@property (nonatomic, retain) NSNumber * lvReqC;
@property (nonatomic, retain) NSNumber * unlocked;
@property (nonatomic, retain) NSString * image;
@property (nonatomic, retain) NSString * thumb;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSString * type;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * desc;

@end



