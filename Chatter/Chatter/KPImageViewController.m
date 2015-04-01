//
//  KPImageViewController.m
//  Chatter
//
//  Created by Kirill Pahnev on 9.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPImageViewController.h"

@interface KPImageViewController ()

@end

@implementation KPImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Set title for imageview
    NSString *senderName = [self.message objectForKey:@"senderName"];
    NSString *title = [NSString stringWithFormat:@"Sent from %@", senderName];
    self.navigationItem.title = title;
    // Do any additional setup after loading the view.
    PFFile *imageFile = [self.message objectForKey:@"file"];
    NSURL *imageFileURL = [[NSURL alloc] initWithString:imageFile.url];
    NSData *imageData = [NSData dataWithContentsOfURL:imageFileURL];
    self.imageView.image = [UIImage imageWithData:imageData];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if ([self respondsToSelector:@selector(timeout)]) {
        [NSTimer scheduledTimerWithTimeInterval:10
                                         target:self
                                       selector:@selector(timeout)
                                       userInfo:nil
                                        repeats:NO];
    } else {
        NSLog(@"Error! selector missin!");
    }
}

#pragma mark - Helper methods
- (void)timeout
{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
