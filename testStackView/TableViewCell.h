//
//  TableViewCell.h
//  testStackView
//
//  Created by chenxiaoshuang on 2018/11/27.
//  Copyright © 2018年 chenxiaoshuang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CellViewModel.h"

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) CellViewModel *viewModel;
@end
