//
//  KPImageViewController.h
//  Chatter
//
//  Created by Kirill Pahnev on 9.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface KPImageViewController : UIViewController

@property(nonatomic, strong) PFObject *message;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
