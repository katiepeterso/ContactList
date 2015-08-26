//
//  Contact.h
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-25.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic, strong) NSString *contactName;
@property (nonatomic, strong) NSString *contactEmail;
@property (nonatomic, strong) NSMutableDictionary *contactPhones;

- (void)addPhoneNumbers;

@end
