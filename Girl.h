//
//  Girl.h
//  frdfrd
//
//  Created by westbugs on 11-03-06.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Gift;
@class Graphic2D;

@interface Girl :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * sportExp;
@property (nonatomic, retain) NSNumber * loveLv;
@property (nonatomic, retain) NSNumber * sportLv;
@property (nonatomic, retain) NSNumber * atTotal;
@property (nonatomic, retain) NSNumber * giftTotal;
@property (nonatomic, retain) NSNumber * loveExp;
@property (nonatomic, retain) NSNumber * movieExp;
@property (nonatomic, retain) NSNumber * musicLv;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSNumber * musicExp;
@property (nonatomic, retain) NSNumber * movieLv;
@property (nonatomic, retain) NSNumber * atMax;
@property (nonatomic, retain) NSNumber * page;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSSet* graphic2D;
@property (nonatomic, retain) NSSet* gift;

@property (nonatomic, retain) NSNumber * ending;
@property (nonatomic, retain) NSNumber * opening;

@end


@interface Girl (CoreDataGeneratedAccessors)
- (void)addGraphic2DObject:(Graphic2D *)value;
- (void)removeGraphic2DObject:(Graphic2D *)value;
- (void)addGraphic2D:(NSSet *)value;
- (void)removeGraphic2D:(NSSet *)value;

- (void)addGiftObject:(Gift *)value;
- (void)removeGiftObject:(Gift *)value;
- (void)addGift:(NSSet *)value;
- (void)removeGift:(NSSet *)value;

@end

