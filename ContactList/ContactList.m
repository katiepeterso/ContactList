//
//  ContactList.m
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init{
    if (self = [super init]) {
        self.contacts = [[NSMutableArray alloc] init];
        return self;
    }
    else {
        return nil;
    }
}


-(void)addContact:(Contact *)newContact {
    [self.contacts addObject:newContact];
}


-(void)printContactList {
    for (Contact *contact in self.contacts) {
        NSLog(@"%lu:%@\n", (unsigned long)[self.contacts indexOfObject:contact], contact.contactName);
    }
}

@end
