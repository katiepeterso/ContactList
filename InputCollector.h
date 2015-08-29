//
//  InputCollector.h
//  ContactList
//
//  Created by Katherine Peterson on 2015-08-28.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property (nonatomic) NSMutableArray *commandHistory;

-(NSString *)inputForPrompt:(NSString *)promptString;
-(void)printRecentCommandHistory;

@end