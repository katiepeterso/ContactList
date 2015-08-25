//
//  main.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *newInput = [[InputCollector alloc] init];
        NSString *menuSelection = [newInput inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application"];
        NSLog(@"%@", menuSelection);
        
        if ([menuSelection isEqualTo:@"quit\n"]) {
            NSLog(@"So long!");
        }
    }
    return 0;
}
