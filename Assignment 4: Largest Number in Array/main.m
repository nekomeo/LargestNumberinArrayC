//
//  main.m
//  Assignment 4: Largest Number in Array
//
//  Created by Elle Ti on 2017-04-30.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *unsortedNumbers = @[@3, @7, @6, @88, @44];
        
        NSNumber *largestNumber = 0;
        
        for (int i = 0; i < [unsortedNumbers count]; i++)
        {
            NSNumber *number = [unsortedNumbers objectAtIndex:i];
            if (largestNumber < number)
            {
                largestNumber = number;
            }
        }
        
        NSLog(@"\nThe largest number is %@", largestNumber);
    }
    return 0;
}
