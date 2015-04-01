//
//  KPNewEntryViewController.h
//  DiaryApp
//
//  Created by Kirill Pahnev on 13.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KPNewEntryViewController : UIViewController
- (IBAction)doneWasPressed:(id)sender;
- (IBAction)cancelWasPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end
