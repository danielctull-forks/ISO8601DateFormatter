//
//  ISO8601DateFormatter+Static.m
//  Issues
//
//  Created by Daniel Tull on 30.08.2011.
//  Copyright 2011 Daniel Tull. All rights reserved.
//

#import "ISO8601DateFormatter+Static.h"

static ISO8601DateFormatter *dateFormatter;

@implementation ISO8601DateFormatter (Static)

+ (NSDate *)dateFromString:(NSString *)string {
	
	static dispatch_once_t onceToken;
	dispatch_once(&onceToken, ^{
		dateFormatter = [[ISO8601DateFormatter alloc] init];
	});
	
	return [dateFormatter dateFromString:string];
}

@end
