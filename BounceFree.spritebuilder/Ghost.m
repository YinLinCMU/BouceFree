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
    
}
- (void)fly{
    self.physicsBody.velocity = ccp(-200, 0);
}
@end
