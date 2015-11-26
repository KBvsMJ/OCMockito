//  OCMockito by Jon Reid, http://qualitycoding.org/about/
//  Copyright 2015 Jonathan M. Reid. See LICENSE.txt

#import <Foundation/Foundation.h>

@class MKTInvocationMatcher;


@interface MKTInvocationsFinder : NSObject

@property (nonatomic, assign) NSUInteger count;

+ (MKTInvocationsFinder *)findInvocationsInList:(NSArray *)invocations
                                       matching:(MKTInvocationMatcher *)wanted;

@end