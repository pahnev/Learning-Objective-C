//
//  KPFriendsViewController.h
//  Chatter
//
//  Created by Kirill Pahnev on 7.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface KPFriendsViewController : UITableViewController

@property(nonatomic, strong) PFRelation *friendsRelation;
@property(nonatomic, strong) NSArray *friends;
@end
