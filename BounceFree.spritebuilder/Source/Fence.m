//
//  Fence.m
//  BounceFree
//
//  Created by Yin Lin on 3/31/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Fence.h"

@implementation Fence{
    CCNode *_fence;
}
- (void)didLoadFromCCB {
    _fence.physicsBody.collisionType = @"edge";
    _fence.physicsBody.sensor = YES;
}


@end
