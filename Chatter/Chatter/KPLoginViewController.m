//
//  KPLoginViewController.m
//  Chatter
//
//  Created by Kirill Pahnev on 7.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPLoginViewController.h"
#import <Parse/Parse.h>

@interface KPLoginViewController ()

@end

@implementation KPLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // When user logs out hide navigationbutton, so no there is no going back
    self.navigationItem.hidesBackButton = YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)loginButton:(id)sender {
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if ([username length] == 0 || [password length] == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Make sure you enter a username and password!"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
        [alertView show];
    } else {
        [PFUser logInWithUsernameInBackground:username
                                     password:password
                                        block:^(PFUser *user, NSError *error) {
                                            if (error) {
                                                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!"
                                                                                                    message:[error.userInfo objectForKey:@"error"]
                                                                                                   delegate:nil
                                                                                          cancelButtonTitle:@"OK"
                                                                                          otherButtonTitles:nil];
                                                [alertView show];
                                            } else {
                                                [self.navigationController popToRootViewControllerAnimated:YES];
                                            }
                                        }];
    }
}
@end
