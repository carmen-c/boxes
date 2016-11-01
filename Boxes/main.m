//
//  main.m
//  Boxes
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//
//Inside main.m:
//
//Initialize a Box using three floats as inputs for height, width, and length
//Calculate the volume of the box and check your answer by NSLogging the box’s volume
//To find the volume of any cube you need to know the length, width and height. The formula to find the volume multiplies the length by the width by the height.


#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        
        Box *box1 = [[Box alloc]initWithWidth:1.5 andHeight:1.5 andLength:1.5];
        Box *box2 = [[Box alloc]initWithWidth:1.5 andHeight:1.5 andLength:1.5];
        
        NSLog(@"Volume: %f", box1.volume);
        NSLog(@"%f can fit.", [box1 canFit:box2]);

    }
    return 0;
}

