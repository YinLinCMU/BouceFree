//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Character.h"
#import "PlaySound.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    Character* character;
    CCPhysicsNode* physicsNode;
    float timeSinceObstacle;
    int time;
    PlaySound *bouncesound;
    CCLabelTTF *_speedLabel;
    CCButton *_audioButton;

}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;
-(void) speedup;
-(void) play :(NSString *)fName :(NSString *) ext;
-(void) audio;
@end
