//
//  NSDate+DXYExtension.h
//  OKC
//
//  Created by 杜新元 on 16/4/14.
//  Copyright © 2016年 Kevin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (DXYExtension)
/** 比较from和self的时间差值 */
- (NSDateComponents *)dateFrom:(NSDate *)from;

/** 是否是今年 */
- (BOOL)isThisYear;

/** 是否是今天 */
- (BOOL)isToday;

/** 是否是昨天 */
- (BOOL)isYesterday;
@end
