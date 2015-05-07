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
    OALSimpleAudio *bgm = [OALSimpleAudio sharedInstance];
    [bgm playBg:[NSString stringWithFormat:@"bgm.mp3"]loop:TRUE];
    

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
    
   // character.physicsBody.velocity = ccp(character.physicsBody.velocity.x, character.physicsBody.velocity.y);
    
    //
//    if(time%2 == 0){
//        NSLog(@"here");
        character.physicsBody.velocity = ccp(character.physicsBody.velocity.x + 0.1f, character.physicsBody.velocity.y);

    _speedLabel.string = [NSString stringWithFormat:@"%.1f", character.physicsBody.velocity.x];
    _speedLabel.visible = true;
//        //[character speedup];
//        NSLog(@"%f",character.physicsBody.velocity.x);
//    }
    
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{/////////
    [character flap];
    [self play:@"bounce" :@".wav"];
}

-(void)speedup{
    [character speedup];
}

- (void)play :(NSString *)fName :(NSString *) ext{

        SystemSoundID audioEffect;
        NSString *path = [[NSBundle mainBundle] pathForResource : fName ofType :ext];
        
        if ([[NSFileManager defaultManager] fileExistsAtPath : path]) {
            NSURL *pathURL = [NSURL fileURLWithPath: path];
            
            AudioServicesCreateSystemSoundID((__bridge CFURLRef) pathURL, &audioEffect);
            AudioServicesPlaySystemSound(audioEffect);
        }
        else {
            NSLog(@"error, file not found: %@", path);
        }


}

//- (void)audio{
//    p++;
//    if (p%2 == 0) {
//        playAudio = TRUE;
//        NSLog(@"play");
//        NSLog(playAudio ? @"Yes" : @"No");
//        CCSpriteFrame *startNormalImage = [CCSpriteFrame frameWithImageNamed:@"volume.png"];
//        
//    }
//    else{
//        playAudio = FALSE;
//        NSLog(@"mute");
//        NSLog(playAudio ? @"Yes" : @"No");


        
        
        //CCSpriteFrame *aboutNormalImage = [CCSpriteFrame frameWithImageNamed:@"mute.png"];
//        //CCSpriteFrame *aboutHighlightedImage = [CCSpriteFrame frameWithImageNamed:@"btn_about_pressed.png"];
//        //_audioButton = [CCButton buttonWithTitle:nil spriteFrame:aboutNormalImage];
//
//        CCSpriteFrame *startNormalImage = [CCSpriteFrame frameWithImageNamed:@"mute.png"];
//        
//        //Replacing
//        [_audioButton setBackgroundSpriteFrame:startNormalImage forState:CCControlStateNormal];
//        [_audioButton ]
    
@end
