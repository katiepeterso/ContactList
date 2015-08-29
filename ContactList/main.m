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
        BOOL firstContact = YES;
        newInput.commandHistory = [NSMutableArray new];
        
        while (newInput) {
            NSString *menuSelection = [newInput inputForPrompt:@"What would you like do next?\n new - Create a new contact\n list - List all contacts\n show - Show the name and email for a specified contact ID\n find - Find a contact using a specified search term\n history - View the most recent three commands\n quit - Exit Application"];
            
            if ([menuSelection isEqualTo:@"quit\n"]) {
                NSLog(@"So long!");
                return 0;
            }
            else if ([menuSelection isEqualTo:@"new\n"]) {
                
                Contact *newContact = [[Contact alloc] init];
                newContact.contactEmail = [newInput inputForPrompt:@"What is your new contact's email address?"];
                
                if (firstContact == YES) {
                    newContact.contactName = [newInput inputForPrompt:@"What is the name of your new contact?"];
                    [newContact addPhoneNumbers];
                    [newList addContact:newContact];
                    firstContact = NO;
                }
                else {
                    for (Contact *contact in newList.contacts) {
                        
                        if ([contact.contactEmail isEqualToString:newContact.contactEmail]) {
                            NSLog(@"Contact already exists");
                            break;
                        }
                        else {
                            newContact.contactName = [newInput inputForPrompt:@"What is the name of your new contact?"];
                            [newContact addPhoneNumbers];
                            [newList addContact:newContact];
                        }
                    }
                }
            }
            else if ([menuSelection isEqualTo:@"list\n"]) {
                [newList printContactList];
            }
            else if ([menuSelection isEqualTo:@"show\n"]) {
                NSString *stringContactIndex = [newInput inputForPrompt:@"What is the ID of the contact you would like to show?"];
                NSString *trimmedString = [stringContactIndex stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                int contactIndex = [trimmedString intValue];
                Contact *aContact = [newList.contacts objectAtIndex:contactIndex];
                NSLog(@"%@%@", aContact.contactName, aContact.contactEmail);
            }
            else if ([menuSelection isEqualTo:@"find\n"]) {
                NSString *searchTerm = [newInput inputForPrompt:@"What term would you like to search for?"];
                NSString *trimmedSearchTerm = [searchTerm stringByReplacingOccurrencesOfString:@"\n" withString:@""];
                [newList searchForContact:trimmedSearchTerm];
            }
            else if ([menuSelection isEqualTo:@"history\n"]) {
                [newInput printRecentCommandHistory];
            }
            else {
                NSLog(@"I'm sorry, I don't recognize that command");
            }
            [newInput.commandHistory addObject:menuSelection];
        }
    }
    return 0;
}
