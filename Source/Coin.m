//
//  Coin.m
//  BounceFree
//
//  Created by Yin Lin on 2/21/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "Coin.h"

@implementation Coin{
    CCNode *_coin;
}
- (void)didLoadFromCCB {
    _coin.physicsBody.collisionType = @"bonus";
    _coin.physicsBody.sensor = YES;
    
}
@end