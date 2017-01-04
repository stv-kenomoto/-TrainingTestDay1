//
//  CalendarDateCell.m
//  TrainingTestDay1
//
//  Created by Kouki Enomoto on 2016/12/21.
//  Copyright © 2016年 enomt. All rights reserved.
//

#import "CalendarDateCell.h"
#import "NSDate+Calendar.h"
#import "NSString+Localizable.h"

NSString *const CalendarDateCellIdentifier = @"CalendarDateCell";
const CGFloat CalendarDateCellHeight = 66;

@interface CalendarDateCell ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation CalendarDateCell

- (void)setupWithCalendar:(Calendar *)calendar {
    self.label.text = [calendar.date dateStringWithFormat:NSStringDayFormat.localized];
    if (calendar.isDifferentMonth) {
        self.label.textColor = [UIColor lightGrayColor];
        return;
    }

    switch ([calendar.date weekdayType]) {
        case NSDateWeekdayTypeSunday:
            self.label.textColor = [UIColor redColor];
            break;

        case NSDateWeekdayTypeSaturday:
            self.label.textColor = [UIColor blueColor];
            break;

        default:
            self.label.textColor = [UIColor blackColor];
            break;
    }
}

@end
