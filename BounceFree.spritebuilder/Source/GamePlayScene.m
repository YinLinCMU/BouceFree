#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize////////////
{
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    [self addObstacle];
    
    timeSinceObstacle = 0.0f;
}

-(void)update:(CCTime)delta//////////////
{
    // put update code here
    timeSinceObstacle += delta; //delta = 1/60 of a second
    //check to see if 2s have passed

    if(timeSinceObstacle > 0.5f){
    //add new obstacle
        [self addObstacle];
        //[_topPipe loadup];
        //then reset the timmer
        timeSinceObstacle = 0.0f;
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
