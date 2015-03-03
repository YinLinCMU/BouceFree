//
//  Ghost.m
//  BounceFree
//
//  Created by Yin Lin on 3/2/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Ghost.h"

@implementation Ghost{
    CCNode *_ghost;
}
- (void)didLoadFromCCB{
    _ghost.physicsBody.collisionType = @"ghost";
    _ghost.physicsBody.sensor = YES;
    _ghost.physicsBody.velocity = ccp(-500, self.physicsBody.velocity.y);
}
@end
