//
//  Gift.h
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Girl;
@class Graphic2D;

@interface Gift :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * musicLvReq;
@property (nonatomic, retain) NSNumber * movieLvReq;
@property (nonatomic, retain) NSNumber * unlocked;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSNumber * sportLvReq;
@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSNumber * eventReq;
@property (nonatomic, retain) NSSet* graphic2D;
@property (nonatomic, retain) NSSet* girl;

@property (nonatomic, retain) NSString * preset;

@end


@interface Gift (CoreDataGeneratedAccessors)
- (void)addGraphic2DObject:(Graphic2D *)value;
- (void)removeGraphic2DObject:(Graphic2D *)value;
- (void)addGraphic2D:(NSSet *)value;
- (void)removeGraphic2D:(NSSet *)value;

- (void)addGirlObject:(Girl *)value;
- (void)removeGirlObject:(Girl *)value;
- (void)addGirl:(NSSet *)value;
- (void)removeGirl:(NSSet *)value;

@end

