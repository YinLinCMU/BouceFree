#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene


- (void)didLoadFromCCB////////////
{
    CCScene *scene = [CCBReader loadAsScene:@"WelcomeScene"];
    [[CCDirector sharedDirector] replaceScene:scene];
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
}

-(void)speedup{
    [character speedup];
}
@end
