//
//  SearchProtocol.h
//  Superclase
//
//  Created by Carlos Roig Salvador on 08/07/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SearchProtocol <NSObject>

- (void)giveContactWith:(NSString *)idContact andCompletionBlock:(void(^)(NSDictionary *dict, NSError *error))completion;

@end
