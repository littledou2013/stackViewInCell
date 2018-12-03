//
//  CellViewModel.h
//  testStackView
//
//  Created by chenxiaoshuang on 2018/11/27.
//  Copyright © 2018年 chenxiaoshuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellViewModel : NSObject
@property (nonatomic, assign) BOOL isImage;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) double cellHeight;

@property (nonatomic, strong) NSIndexPath *indexPath;
@end
