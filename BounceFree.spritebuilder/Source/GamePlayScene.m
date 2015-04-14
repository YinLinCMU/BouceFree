#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"
#import "PlaySound.h"


@implementation GamePlayScene



- (void) initialize{
    // your code here
    
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    time = 0;
    timeSinceObstacle = 0.0f;

}

-(void)update:(CCTime)delta//////////////
{
    time += delta;
    timeSinceObstacle += delta; //

    if(timeSinceObstacle > 0.7f){
        [self addObstacle];
        timeSinceObstacle = 0.0f;
        time++;
    }
    
    if(time%10 == 0){
       // [character speedup];
    }
    
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{/////////
    [character flap];
    //[bouncesound bouceSound];
    //[bouncesound play:@"/Users/yinlin/Desktop/s15/ios/finalproj/sound" :@"bounce.wav"];
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle]
                           pathForResource:@"bounce" ofType:@"wav"];
    NSLog(@"%@",soundFile);
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)[NSURL fileURLWithPath:soundFile], &soundID);
    AudioServicesPlaySystemSound(soundID);
}

-(void)speedup{
    [character speedup];
}
@end
