//
//  Graphic2D.h
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>

@class Gift;
@class Girl;

@interface Graphic2D :  NSManagedObject  
{
}

@property (nonatomic, retain) NSNumber * fileSize;
@property (nonatomic, retain) NSString * fileName;
@property (nonatomic, retain) NSNumber * scene;
@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSNumber * size;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSNumber * alternateId;
@property (nonatomic, retain) NSString * extension;
@property (nonatomic, retain) NSNumber * info;
@property (nonatomic, retain) NSNumber * kind;
@property (nonatomic, retain) NSNumber * genre;
@property (nonatomic, retain) NSSet* girl;
@property (nonatomic, retain) Gift * gift;

@end


@interface Graphic2D (CoreDataGeneratedAccessors)
- (void)addGirlObject:(Girl *)value;
- (void)removeGirlObject:(Girl *)value;
- (void)addGirl:(NSSet *)value;
- (void)removeGirl:(NSSet *)value;

@end

