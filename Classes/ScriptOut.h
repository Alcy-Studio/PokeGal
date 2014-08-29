//
//  ScriptOut.h
//  frdfrd
//
//  Created by westbugs on 11-01-24.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <CoreData/CoreData.h>


@interface ScriptOut :  NSManagedObject  
{
}

@property (nonatomic, retain) NSString * url;
@property (nonatomic, retain) NSNumber * alternateId;
@property (nonatomic, retain) NSString * fileName;
@property (nonatomic, retain) NSNumber * platform;
@property (nonatomic, retain) NSNumber * size;
@property (nonatomic, retain) NSNumber * sid;
@property (nonatomic, retain) NSString * extension;
@property (nonatomic, retain) NSNumber * genre;
@property (nonatomic, retain) NSNumber * fileSize;
@property (nonatomic, retain) NSNumber * info;

@end



