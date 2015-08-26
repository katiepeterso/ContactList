//
//  Contact.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"


@implementation Contact

- (void)addPhoneNumbers{
    InputCollector *newInput = [[InputCollector alloc] init];
    NSString *phoneSelection = [newInput inputForPrompt:@"Would you like to add a phone number for this contact?"];
    while ([phoneSelection isEqualToString:@"yes\n"]) {
        NSString *phoneType = [newInput inputForPrompt:@"What type of line is it?"];
        NSString *number = [newInput inputForPrompt:@"What is the number?"];
        [self.contactPhones setValue:number forKey:phoneType];
        phoneSelection = [newInput inputForPrompt:@"Would you like to add another number?"];
    }
    
}

@end
