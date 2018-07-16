//
//  NSDate+DXYExtension.m
//  OKC
//
//  Created by 杜新元 on 16/4/14.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import "NSDate+DXYExtension.h"

@implementation NSDate (DXYExtension)

/** 比较from和self的时间差值 */
- (NSDateComponents *)dateFrom:(NSDate *)from {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:from toDate:self options:0];
}

/** 是否是今年 */
- (BOOL)isThisYear {
    
    /** 日历 */
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSInteger nowYear = [calendar component:(NSCalendarUnitYear) fromDate:[NSDate date]];
    NSInteger selfYear = [calendar component:(NSCalendarUnitYear) fromDate:self];
    
    return nowYear == selfYear;
}

/** 是否是今天 */
- (BOOL)isToday {
    
    /** 两种做法 */
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *nowDate = [fmt stringFromDate:[NSDate date]];
    NSString *selfDate = [fmt stringFromDate:self];
    
    return [nowDate isEqualToString:selfDate];
    
    /** 日历 */
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    
//    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitDay | NSCalendarUnitMonth;
//    NSDateComponents *nowCmps = [calendar components:unit fromDate:[NSDate date]];
//    NSDateComponents *selfCmps = [calendar components:unit fromDate:self];
//    
//    return nowCmps.year == selfCmps.year && nowCmps.month == selfCmps.month && nowCmps.day == selfCmps.day;
}

/** 是否是昨天 */
- (BOOL)isYesterday {
    
    /** 日历 */
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    
    NSDate *nowDate = [fmt dateFromString:[fmt stringFromDate:[NSDate date]]];
    NSDate *selfDate = [fmt dateFromString:[fmt stringFromDate:self]];
    
    NSDateComponents *cmps = [calendar components:(NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay) fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0 && cmps.month == 0 && cmps.day == 1;
}
@end
