//
//  AgendaContact.m
//  Superclase
//
//  Created by Carlos Roig Salvador on 08/07/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "AgendaContact.h"

@implementation AgendaContact

#pragma mark - Initializer Methods


#pragma mark - Protocol Methods

- (void)giveContactWith:(NSString *)idContact andCompletionBlock:(void (^)(NSDictionary *, NSError *))completion {
    NSDictionary *result = @{@"Nombre" : @"Pepito"};
    completion(result,nil);
}

@end
