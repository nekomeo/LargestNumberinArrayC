//
//  FindNumber.h
//  Assignment 4: Largest Number in Array
//
//  Created by Elle Ti on 2017-05-07.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FindNumber : NSObject

- (NSNumber *) getLargestNumber:(NSArray *)unsortedNumbers;
- (NSNumber *) getSmallestNumber:(NSArray *)unsortedNumbers;
- (float) getMedianNumber:(NSArray *)unsortedNumbers;

@end
