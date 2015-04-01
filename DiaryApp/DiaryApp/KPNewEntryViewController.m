//
//  KPNewEntryViewController.m
//  DiaryApp
//
//  Created by Kirill Pahnev on 13.8.2014.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPNewEntryViewController.h"
#import "KPDiaryEntry.h"
#import "KPCoreDataStack.h"

@interface KPNewEntryViewController ()

@end

@implementation KPNewEntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (void)dismissSelf
{
    [self.presentingViewController dismissViewControllerAnimated:YES
                                                      completion:nil];
}

-(void)insertDiaryEntry
{
	KPCoreDataStack *coreDataStack = [KPCoreDataStack defaultStack];
	KPDiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"KPDiaryEntry"
														inManagedObjectContext:coreDataStack.managedObjectContext];
	entry.body = self.textField.text;
	entry.date = [[NSDate date] timeIntervalSince1970];
	[coreDataStack saveContext];
}

- (IBAction)doneWasPressed:(id)sender
{
	[self insertDiaryEntry];
    [self dismissSelf];
}

- (IBAction)cancelWasPressed:(id)sender
{
    [self dismissSelf];
}
@end
