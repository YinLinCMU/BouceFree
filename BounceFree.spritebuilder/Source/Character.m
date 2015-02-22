//
//  Character.m
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Character.h"
#import "GamePlayScene.h"

@implementation Character{
    int b;
}

- (void)didLoadFromCCB
{
    self.position = ccp(115, 100);
    self.zOrder = DrawingOrderHero;
    self.physicsBody.collisionType = @"character";
    b = 0;
    
}

- (void)flap
{   //self.rotation = 180.0f;
    //self.position = ccp(self.position.x+1, 320 - self.position.y);
    b++;
    if (b%2 == 0) {
        self.physicsBody.velocity = ccp(self.physicsBody.velocity.x,  100);
    }
    else{
        self.physicsBody.velocity = ccp(self.physicsBody.velocity.x,  -100);
    }
}
-(void)speedup{
    self.physicsBody.velocity = ccp(self.physicsBody.velocity.x + 500, self.physicsBody.velocity.y);
}

@end
