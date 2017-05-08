//
//  FindNumber.m
//  Assignment 4: Largest Number in Array
//
//  Created by Elle Ti on 2017-05-07.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "FindNumber.h"

@implementation FindNumber

- (NSNumber *) getLargestNumber:(NSArray *)unsortedNumbers
{
    NSNumber *largestNumber = 0;
    for (int i = 0; i < [unsortedNumbers count]; i++)
    {
        NSNumber *number = [unsortedNumbers objectAtIndex:i];
        if (largestNumber < number)
        {
            largestNumber = number;
        }
    }
    return largestNumber;
}

- (NSNumber *) getSmallestNumber:(NSArray *)unsortedNumbers
{
    NSNumber *smallestNumber;
    
    for (int i = 0; i < [unsortedNumbers count]; i++)
    {
        NSNumber *number = [unsortedNumbers objectAtIndex:i];
        if (smallestNumber == nil || smallestNumber > number)
        {
            smallestNumber = number;
        }
    }
    return smallestNumber;
}

- (float) getMedianNumber:(NSArray *)unsortedNumbers
{
    NSArray *sortedNumbers = [unsortedNumbers sortedArrayUsingSelector:@selector(compare:)];
    unsigned long middleNumber = sortedNumbers.count / 2;
    
    if (sortedNumbers.count == 0)
    {
        return 0.0f;
    }
    
    if (sortedNumbers.count == 1)
    {
        return [[sortedNumbers objectAtIndex:0] floatValue];
    }
    
    if (sortedNumbers.count % 2 == 0)
    {
        float middleNumber1 = [[sortedNumbers objectAtIndex:middleNumber] floatValue];
        middleNumber--;
        float middleNumber2 = [[sortedNumbers objectAtIndex:middleNumber] floatValue];
        return (middleNumber1 + middleNumber2) / 2;
    }
    
    return [[sortedNumbers objectAtIndex:middleNumber] floatValue];
}

@end
