//
//  KPBlogPost.h
//  SimpleBlogReader
//
//  Created by Kirill Pahnev on 6.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KPBlogPost : NSObject

@property(strong, nonatomic) NSString *title;
@property(strong, nonatomic) NSString *author;
@property(strong, nonatomic) NSString *thumbnail;
@property(strong, nonatomic) NSString *date;
@property(strong, nonatomic) NSURL *url;

// Designated Initializer
- (id)initWithTitle:(NSString *)title;
+ (id)blogPostWithTitle:(NSString *)title;

- (NSURL *)thumbnailURL;
- (NSString *)formattedDate;
@end
