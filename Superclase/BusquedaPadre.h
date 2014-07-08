//
//  BusquedaPadre.h
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchProtocol.h"

@interface BusquedaPadre : NSObject <SearchProtocol>

- (BOOL)checkParamaters:(NSString *)idContact;
- (void)giveContactData:(NSString *)idContact completionBlock:(void(^)(NSDictionary *dict, NSError *error))completion;

- (id)cacheHit:(NSString *)idContact;
- (void)addCache:(id)contact name:(NSString *)name;




@end
