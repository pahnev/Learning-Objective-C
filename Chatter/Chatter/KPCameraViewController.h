//
//  KPCameraViewController.h
//  Chatter
//
//  Created by Kirill Pahnev on 7.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
@interface KPCameraViewController : UITableViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property(nonatomic, strong) UIImagePickerController *imagePicker;
@property(nonatomic, strong) UIImage *image;
@property(nonatomic, strong) NSString *videoFilePath;
@property(nonatomic, strong) NSArray *friends;
@property(nonatomic, strong) PFRelation *friendsRelation;
@property(nonatomic, strong) NSMutableArray *recipients;
- (IBAction)cancelButton:(id)sender;
- (IBAction)sendButton:(id)sender;

-(void)uploadMessage;
-(UIImage *)resizeImage:(UIImage *)image toWidth:(float)width andHeight:(float)height;

@end
