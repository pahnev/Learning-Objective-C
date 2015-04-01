//
//  KPEditFriendsViewController.h
//  Chatter
//
//  Created by Kirill Pahnev on 7.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface KPEditFriendsViewController : UITableViewController
@property(strong, nonatomic) NSArray *allUsers;
@property(strong, nonatomic) PFUser *currenUser;
@property(strong, nonatomic) NSMutableArray *friends;

-(BOOL)isFriend:(PFUser *)user;

@end
