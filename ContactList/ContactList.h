//
//  ContactList.h
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContactList : NSObject

@property (nonatomic, strong) NSMutableArray *contacts;

- (id)initWithContacts: (NSMutableArray *)contactList;

@end
