//
//  MotorBusqueda.m
//  Superclase
//
//  Created by Ricardo Maqueda on 25/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "MotorBusqueda.h"
#import "FacebookContact.h"
#import "AgendaContact.h"

@implementation MotorBusqueda

+ (MotorBusqueda *)sharedInstance {
    
    static MotorBusqueda *_sharedInstance = nil;
    static dispatch_once_t oncePredicate;
    
    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[MotorBusqueda alloc] init];
    });
    
    return _sharedInstance;
}

- (void)datosContacto:(NSString *)idContacto completion:(void(^)(NSDictionary *, NSError *))completion{
    [[FacebookContact sharedInstance] giveContactWith:idContacto andCompletionBlock:completion];
}

- (void)datosAgendaFromContacto:(NSString *)idContacto completion:(void(^)(NSDictionary *, NSError *))completion{
    AgendaContact *agenda = [[AgendaContact alloc] init];
    [agenda giveContactWith:idContacto andCompletionBlock:completion];
}







@end
