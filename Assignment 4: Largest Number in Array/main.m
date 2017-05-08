//
//  main.m
//  Assignment 4: Largest Number in Array
//
//  Created by Elle Ti on 2017-04-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FindNumber.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *unsortedNumbers = @[@3, @7, @6, @88, @44];
        FindNumber *findNumber = [[FindNumber alloc] init];
        
        NSLog(@"\nThe largest number is %@.\n", [findNumber getLargestNumber:unsortedNumbers]);
        NSLog(@"\nThe smallest number is %@.\n", [findNumber getSmallestNumber:unsortedNumbers]);
        NSLog(@"\nThe median number is %.1f.\n", [findNumber getMedianNumber:unsortedNumbers]);

    }
    return 0;
}
