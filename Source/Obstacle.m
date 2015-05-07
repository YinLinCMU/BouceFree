//
//  Obstacle.m
//  FlappyBird
//
//  Created by Benjamin Encz on 10/02/14.
//  Copyright (c) 2014 MakeGamesWithUs inc. Free to use for all purposes.
//

#import "Obstacle.h"

@implementation Obstacle {
  CCNode *_obstacle;
}
- (void)didLoadFromCCB {
    _obstacle.physicsBody.collisionType = @"minus";
    _obstacle.physicsBody.sensor = YES;     
}


@end