//
//  InputCollector.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString {
    char selectionChars[255];
    NSLog(@"%@", promptString);
    fgets(selectionChars, 255, stdin);
    NSString *selection = [NSString stringWithUTF8String:selectionChars];
    
    return selection;
}

@end
