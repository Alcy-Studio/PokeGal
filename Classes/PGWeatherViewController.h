//
//  PGWeatherViewController.h
//  WeatherDemo
//
//  Created by shinren.pan@gmail.com on 2010/12/14.
//  Copyright 2010 http://coding-in.blogspot.com  All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeatherObject.h"
@interface PGWeatherViewController : UIViewController <WeatherDelegate>{
	WeatherObject *theWeather;
	
	IBOutlet UIImageView *current_Image;	//目前天氣圖
	//IBOutlet UIImageView *today_Image;		//今天天氣圖
//	IBOutlet UIImageView *tomorrow_Image;	//明天天氣圖
	
	IBOutlet UILabel *current_Date;			//目前日期
	IBOutlet UILabel *current_Temp;			//目前溫度
	IBOutlet UILabel *current_Text;			//目前天氣描述
	
	IBOutlet UITextView *current_TextView;		//目前天氣描述

	IBOutlet UILabel *current_TextLabel;		//目前天氣描述

	//IBOutlet UILabel *today_Date;			//今天日期
//	IBOutlet UILabel *today_Temp;			//今天天氣
//	IBOutlet UILabel *today_Text;			//今天天氣描述
//	
//	IBOutlet UILabel *tomorrow_Date;		//明天日期
//	IBOutlet UILabel *tomorrow_Temp;		//明天天氣
//	IBOutlet UILabel *tomorrow_Text;		//明天天氣描述
//	
//	IBOutlet UINavigationItem *nav;			//用來顯示地區名稱用
	IBOutlet UIActivityIndicatorView *actView; 
	
	IBOutlet UIScrollView* sv;
	NSInteger geoCode;
}
@property(nonatomic, retain)WeatherObject *theWeather;
@property(nonatomic)NSInteger geoCode;

- (IBAction)refreshWeather:(id)sender;		//更新天氣
-(void)showTextView:(NSInteger)i;

@end

