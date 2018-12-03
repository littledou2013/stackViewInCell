//
//  TableViewCell.m
//  testStackView
//
//  Created by chenxiaoshuang on 2018/11/27.
//  Copyright © 2018年 chenxiaoshuang. All rights reserved.
//

#import "TableViewCell.h"
@interface TableViewCell ()
@property (weak, nonatomic) IBOutlet UIStackView *labelStackView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *textLable;

@property (weak, nonatomic) IBOutlet UIStackView *imageStackView;
@property (weak, nonatomic) IBOutlet UILabel *title1Label;
@property (weak, nonatomic) IBOutlet UILabel *text1Label;
@property (weak, nonatomic) IBOutlet UIView *placeHolderView;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@end
@implementation TableViewCell
- (void)setViewModel:(CellViewModel *)viewModel {
    _viewModel = viewModel;
    self.labelStackView.hidden = YES;
    self.imageStackView.hidden = YES;
    self.view1.hidden = YES;
    self.view2.hidden = YES;
    if (_viewModel.isImage) {
        self.view1.hidden = NO;
        self.imageStackView.hidden = NO;
        self.title1Label.text = _viewModel.title;
        self.text1Label.text = _viewModel.text;
    } else {
        self.view2.hidden = NO;
        self.labelStackView.hidden = NO;
        self.titleLabel.text = _viewModel.title;
        self.textLable.text = _viewModel.text;
    }
//    [self.contentView layoutIfNeeded];
//    NSLog(@"cell height %lf indexPath : %@", viewModel.cellHeight, viewModel.indexPath);
//    CGFloat minHeight = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    CGFloat maxHeight = [self.contentView systemLayoutSizeFittingSize:UILayoutFittingExpandedSize].height;
//    NSLog(@"result cell minHeight %lf, maxHeight %lf", minHeight, maxHeight);
}


@end
