//
//  KPPhotoCell.m
//  Insta Browser
//
//  Created by Usuario invitado on 19/08/14.
//  Copyright (c) 2014 Kirill Pahnev. All rights reserved.
//

#import "KPPhotoCell.h"

@implementation KPPhotoCell

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.imageView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    self.imageView.frame = self.contentView.bounds;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
