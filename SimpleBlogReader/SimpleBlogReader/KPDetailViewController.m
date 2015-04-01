//
//  KPDetailViewController.m
//  SimpleBlogReader
//
//  Created by Kirill Pahnev on 31.7.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPDetailViewController.h"

@interface KPDetailViewController ()

@end

@implementation KPDetailViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
	NSURLRequest *urlRequest = [NSURLRequest requestWithURL:self.blogPostURL];
    [self.webView loadRequest:urlRequest];
}

- (void) didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
