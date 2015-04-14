//
//  PlaySound.m
//  BounceFree
//
//  Created by Yin Lin on 4/14/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "PlaySound.h"

@implementation PlaySound

- (void)PlaySound :(NSString *)fName :(NSString *) ext{
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

- (void)bouceSound {
    [self PlaySound:@"/Users/yinlin/Desktop/s15/ios/finalproj/sound" :@"bounce.wav"];
}
@end
