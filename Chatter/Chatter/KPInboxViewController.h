//
//  KPInboxViewController.h
//  Chatter
//
//  Created by Kirill Pahnev on 7.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import <MediaPlayer/MediaPlayer.h>
@interface KPInboxViewController : UITableViewController

@property (nonatomic, strong) NSArray *messages;
@property (nonatomic, strong) PFObject *selectedMessage;
@property (nonatomic, strong) MPMoviePlayerController *moviePlayer;
- (IBAction)logoutButton:(id)sender;

@end
