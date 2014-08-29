//
//  ConstantsTmpTutor.h
//  frdfrd
//
//  Created by westbugs on 11-04-18.
//  Copyright 2011 Alcy, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ConstantsTmpTutor : NSObject 

//Use ConstantsSceneCode to determine kNumOfPages
extern NSString* const kTmpTutorScene;
extern NSString* const kTmpTutorPage; // Current Page 


typedef enum {
	
	//kNumberOfPages based on value of tmpTutorScene(key) which is ConstantsSceneCode
	//Once you arrange a date, you have to get there on time. She will be angry if you are late. There is some secret event in different place in specific time
	
	//Concept: (^)-(*)-(^) one connection, show act then show Info in pageSV
	kNumOfPagesForTutorNil = 0,
	kNumOfPagesForTutorMain = 11, //Act(5): Achi, Arrange, SMS, Move, Attr; Info(6): Season, Day, AT, Background, Event, popAttr(Action 12 Max)
	kNumOfPagesForTutorAchi = 6, //Act(2): Gift Icon, Main; Info(4): Gift Total, Alias, Gift Desc, Receive from which Region
	kNumOfPagesForTutorAttr = 9, //Act(1): Schedule; Info(8): Weekday, Time, Health Exp, Health Lv, Social Exp, Social Lv, Talent Exp, Talent Lv
	kNumOfPagesForTutorDate = 11, //Act(5): Achi, Chat, Romance, Leave, Attr; Info(6): Season, Day, AT, Background, Player, Event
	kNumOfPagesForTutorWalk = 10, //Act(5): Achi, Talk, Look, Leave, Attr; Info(5): Season, Day, AT, Background, Event
	kNumOfPagesForTutorEvent = 10, //Act(1): Message Button; Info(9): Season, Day, AT, Background, Player, NPC, Item, Attribute (Love, Health, Social, Talent), Lv up (Love...)
	kNumOfPagesForTutorMap = 8, //Act(4) Nav, Detail, Go, Back; Info(4): AT, Thumbnail, Lv Requirement: H = Health, S = Social, T = Talent YES with Circle or No with Cross, Go-> Heart, Go->Enable, Go->Disable
	kNumOfPagesForTutorArrange = 4, //Act(2): Ok = Available, No = Occupied 10:00 to 00:00, Back; Info(2): Weekday, time
	kNumOfPagesForTutorPlace = 4, //Act(2): R-A = Region A, Back; Info(2): AT, Region
	kNumOfPagesForTutorSchedule = 2, //Act(1): Back; Info(1): Today's Schedule from 10:00 to 12:00
	kNumOfPagesForTutorDetail = 3, //Act(1)Back; Info(2): Name, Attr Effect
	kNumOfPagesForTutorSms = 5, //Act(2)Back, Sms; Info(3): AT, Send, Reply
	

}kTmpTutor;

typedef enum{
	kTutorMainPage1 = 0, //kTutorMainPageAchiScroll 
	kTutorMainPage2 = 1, //kTutorMainPageCallButton
	kTutorMainPage3 = 2, //kTutorMainPageSmsButton
	kTutorMainPage4 = 3, //kTutorMainPageMoveButton
	kTutorMainPage5 = 4, //kTutorMainPageAttrScroll
	
	kTutorMainPage6 = 5, //kTutorMainPageSeason
	kTutorMainPage7 = 6, //kTutorMainPageDay
	kTutorMainPage8 = 7, //kTutorMainPageAt
	kTutorMainPage9 = 8, //kTutorMainPageBackground
	kTutorMainPage10 = 9, //kTutorMainPageEvent
	kTutorMainPage11 = 10, //kTutorMainPagePopAt

}kTutorMainPage;

//Achi and so on...
typedef enum{
	kTutorAchiPage1 = 0, //kTutorAchiPageGiftButton
	kTutorAchiPage2 = 1, //kTutorAchiPageMainScroll

	kTutorAchiPage3 = 2, //kTutorAchiPageGiftTotal
	kTutorAchiPage4 = 3, //kTutorAchiPageAlias
	kTutorAchiPage5 = 4, //kTutorAchiPageGiftDesc
	kTutorAchiPage6 = 5, //kTutorAchiPageGiftRegion

	
}kTutorAchiPage;

typedef enum{
	
	kTutorAttrPage1 = 0, //kTutorAttrPageScheduleButton
	
	kTutorAttrPage2 = 1, //kTutorAttrPageWeekday
	kTutorAttrPage3 = 2, //kTutorAttrPageTime

	kTutorAttrPage4 = 3, //kTutorAttrPageHealthExp
	kTutorAttrPage5 = 4, //kTutorAttrPageHealthLv
	
	kTutorAttrPage6 = 5, //kTutorAttrPageSocialExp
	kTutorAttrPage7 = 6, //kTutorAttrPageSocialLv
	
	kTutorAttrPage8 = 7, //kTutorAttrPageTalentExp
	kTutorAttrPage9 = 8, //kTutorAttrPageTalentLv

	
}kTutorAttrPage;

typedef enum{
	kTutorDatePage1 = 0, //kTutorDatePageAchiScroll
	kTutorDatePage2 = 1, //kTutorDatePageChatButton
	kTutorDatePage3 = 2, //kTutorDatePageRomanceButton
	kTutorDatePage4 = 3, //kTutorDatePageLeaveButton
	kTutorDatePage5 = 4, //kTutorDatePageAttrScroll
	
	kTutorDatePage6 = 5, //kTutorDatePageSeason
	kTutorDatePage7 = 6, //kTutorDatePageDay
	kTutorDatePage8 = 7, //kTutorDatePageAt
	kTutorDatePage9 = 8, //kTutorDatePageBackground
	kTutorDatePage10 = 9, //kTutorDatePagePlayer
	kTutorDatePage11 = 10, //kTutorDatePageEvent

	
}kTutorDatePage;

//Act(5): Achi, Talk, Look, Leave, Attr; Info(5): Season, Day, AT, Background, Event

typedef enum{
	kTutorWalkPage1 = 0, //kTutorWalkPageAchiScroll
	kTutorWalkPage2 = 1, //kTutorWalkPageTalkButton
	kTutorWalkPage3 = 2, //kTutorWalkPageLookButton
	kTutorWalkPage4 = 3, //kTutorWalkPageLeaveButton
	kTutorWalkPage5 = 4, //kTutorWalkPageAttrScroll
	
	kTutorWalkPage6 = 5, //kTutorWalkPageSeason
	kTutorWalkPage7 = 6, //kTutorWalkPageDay
	kTutorWalkPage8 = 7, //kTutorWalkPageAt
	kTutorWalkPage9 = 8, //kTutorWalkPageBackground
	kTutorWalkPage10 = 9, //kTutorWalkPageEvent
	
}kTutorWalkPage;

//Act(1): Message Button; 
//Info(9): Season, Day, AT, Background, Player, NPC, Item, Attribute (Love, Health, Social, Talent), Lv up (Love...)
typedef enum{
	kTutorEventPage1 = 0, //kTutorEventPageMessageButton

	kTutorEventPage2 = 1, //kTutorEventPageSeason
	kTutorEventPage3 = 2, //kTutorEventPageDay
	kTutorEventPage4 = 3, //kTutorEventPageAt
	kTutorEventPage5 = 4, //kTutorEventPageBackground
	
	kTutorEventPage6 = 5, //kTutorEventPagePlayer
	kTutorEventPage7 = 6, //kTutorEventPageNpc
	kTutorEventPage8 = 7, //kTutorEventPageItem
	kTutorEventPage9 = 8, //kTutorEventPagePopAttr
	kTutorEventPage10 = 9, //kTutorEventPagePopLv



	
}kTutorEventPage;

//Act(4) Nav, Detail, Go, Back; Info(4): AT, Thumbnail, Lv Requirement: H = Health, S = Social, T = Talent YES with Circle or No with Cross, Go-> Heart, Go->Enable, Go->Disable

typedef enum{
	kTutorMapPage1 = 0, //kTutorMapPageNavButton
	kTutorMapPage2 = 1, //kTutorMapPageDetailButton
	kTutorMapPage3 = 2, //kTutorMapPageGoButton
	kTutorMapPage4 = 3, //kTutorMapPageBackButton

	kTutorMapPage5 = 4, //kTutorMapPageAt
	kTutorMapPage6 = 5, //kTutorMapPageThumbnail
	kTutorMapPage7 = 6, //kTutorMapPageLvReq
	kTutorMapPage8 = 7, //kTutorMapPageGoStatus


	
}kTutorMapPage;

//Act(2): Ok = Available, No = Occupied 10:00 to 00:00, Back; Info(2): Weekday, time

typedef enum{
	kTutorArrangePage1 = 0, //kTutorArrangePageArrangeButton
	kTutorArrangePage2 = 1, //kTutorArrangePageBackButton

	kTutorArrangePage3 = 2, //kTutorArrangePageWeekday
	kTutorArrangePage4 = 3, //kTutorArrangePageTime

	
}kTutorArrangePage;

//Act(2): R-A = Region A, Back; Info(2): AT, Region

typedef enum{
	kTutorPlacePage1 = 0, //kTutorPlacePageRegionButton
	kTutorPlacePage2 = 1, //kTutorPlacePageBackButton

	kTutorPlacePage3 = 2, //kTutorPlacePageAt
	kTutorPlacePage4 = 3, //kTutorPlacePageRegion

	
}kTutorPlacePage;

//Act(1): Back; Info(1): Today's Schedule from 10:00 to 12:00
typedef enum{
	kTutorSchedulePage1 = 0, //kTutorSchedulePageBackButton
	kTutorSchedulePage2 = 1, //kTutorSchedulePageSchedule

	
}kTutorSchedulePage;

//Act(1)Back; Info(2): Name, Attr Effect

typedef enum{
	kTutorDetailPage1 = 0, //kTutorDetailPageBackButton

	kTutorDetailPage2 = 1, //kTutorDetailPageName
	kTutorDetailPage3 = 2, //kTutorDetailPageEffect

	
}kTutorDetailPage;

//Act(2)Back, Sms; Info(3): At, Send, Reply

typedef enum{
	kTutorSmsPage1 = 0, //kTutorSmsPageBackButton
	
	kTutorSmsPage2 = 1, //kTutorSmsPageSmsButton
	
	kTutorSmsPage3 = 2, //kTutorSmsPageAt
	kTutorSmsPage4 = 3, //kTutorSmsPageSend
	kTutorSmsPage5 = 4, //kTutorSmsPageReply

	
	
}kTutorSmsPage;
@end
