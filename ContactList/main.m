//
//  main.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *newInput = [[InputCollector alloc] init];
        ContactList *newList = [[ContactList alloc] init];
        
        while (newInput) {
            NSString *menuSelection = [newInput inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n quit - Exit Application"];
            
            if ([menuSelection isEqualTo:@"quit\n"]) {
                NSLog(@"So long!");
                return 0;
            }
            else if ([menuSelection isEqualTo:@"new\n"]) {
                Contact *newContact = [[Contact alloc] init];
                newContact.contactName = [newInput inputForPrompt:@"What is the name of your new contact?"];
                newContact.contactEmail = [newInput inputForPrompt:@"What is your new contact's email address?"];
                [newList addContact:newContact];
            }

        }
        
    }
    return 0;
}
