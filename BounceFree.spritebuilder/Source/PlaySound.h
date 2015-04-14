//
//  PlaySound.h
//  BounceFree
//
//  Created by Yin Lin on 4/14/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "CCNode.h"

@interface PlaySound : CCSprite
- (void)bouceSound;
- (void)play :(NSString *)fName :(NSString *) ext;
@end
