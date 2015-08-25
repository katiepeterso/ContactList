//
//  ContactList.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (id)initWithContacts: (NSMutableArray *)contactList {
    if ((self = [super init])) {
        self.contacts = contactList;
        return self;
    }
    else {
        return nil;
    }    
}


@end
