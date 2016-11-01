//
//  Box.m
//  Boxes
//
//  Created by carmen cheng on 2016-11-01.
//  Copyright © 2016 carmen cheng. All rights reserved.
//
//Inside Box:
//
//Add three properties (height, width, and length) and make each member a float.
//Create an instance method that initializes a Box by taking in three floats as parameters. An instance method is a method that applies to a specific instance of a Box, it has a “-” sign at the start of the function name.
//Create a instance method that will calculate the volume and return it as a float. You refer to the properties of an instance by prefixing “self.”
//Inside main.m:
//
//Initialize a Box using three floats as inputs for height, width, and length
//Calculate the volume of the box and check your answer by NSLogging the box’s volume
//To find the volume of any cube you need to know the length, width and height. The formula to find the volume multiplies the length by the width by the height.
//Inside Box:
//
//Add a method that takes in another box and returns how many times one box will fit inside the other. Be conscious about understanding which box has a greater volume and how that will affect the result.
//NOTE: Just use the volumes to calculate how many times a box can fit into another box, don't bother with trying to come up with the logic of physically fitting boxes into each other.


#import "Box.h"

@implementation Box

- (instancetype)initWithWidth:(float)width andHeight:(float)height andLength:(float)length
{
    self = [super init];
    if (self) {
        self.width = width;
        self.height = height;
        self.length = length;
    }
    return self;
}

-(float)volume
{
    return self.width * self.height * self.length;
}

-(float)canFit:(Box *)OtherBox
{
    return [OtherBox volume] / [self volume];
}

@end
