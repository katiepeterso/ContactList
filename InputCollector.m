//
//  InputCollector.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-28.
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

-(void)printRecentCommandHistory {
    NSString *mostRecent = [self.commandHistory objectAtIndex:self.commandHistory.count - 1];
    NSString *second = [self.commandHistory objectAtIndex:self.commandHistory.count - 2];
    NSString *third = [self.commandHistory objectAtIndex:self.commandHistory.count - 3];
    
    NSString *mostRecentTrimmed = [mostRecent stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *secondTrimmed = [second stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    NSString *thirdTrimmed = [third stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    NSLog(@"The most recent command was %@, with %@ before that and %@ before that.", mostRecentTrimmed, secondTrimmed, thirdTrimmed);
}


@end