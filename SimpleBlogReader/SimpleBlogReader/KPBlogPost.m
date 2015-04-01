//
//  KPBlogPost.m
//  SimpleBlogReader
//
//  Created by Kirill Pahnev on 6.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPBlogPost.h"

@implementation KPBlogPost

- (id)initWithTitle:(NSString *)title
{
    self = [super init];

    if (self) {
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }

    return self;
}

+ (id)blogPostWithTitle:(NSString *)title;
{
    // Allocate it and take iniWithTitle from above and pass it title
    return [[self alloc] initWithTitle:title];
}

- (NSURL *)thumbnailURL
{
    return [NSURL URLWithString:self.thumbnail];
}

- (NSString *)formattedDate
{
	NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
	[dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
	NSDate *temporaryDate = [dateFormatter dateFromString:self.date];
	
	[dateFormatter setDateFormat:@"EE MMM, dd"];
	
	return [dateFormatter stringFromDate:temporaryDate];
	
}
@end
