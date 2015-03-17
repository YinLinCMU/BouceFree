//
//  bush.m
//  BounceFree
//
//  Created by Yin Lin on 2/21/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "bush.h"

@implementation bush{
    CCNode *_bush;
}
- (void)didLoadFromCCB {
    _bush.physicsBody.collisionType = @"fense";
    _bush.physicsBody.sensor = YES;
    
}


@end
