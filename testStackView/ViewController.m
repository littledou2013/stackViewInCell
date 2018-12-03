//
//  ViewController.m
//  testStackView
//
//  Created by chenxiaoshuang on 2018/11/27.
//  Copyright © 2018年 chenxiaoshuang. All rights reserved.
//

#import "ViewController.h"
#import "CellViewModel.h"//
#import "TableViewCell.h"
#import <MJRefresh/MJRefresh.h>

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray<CellViewModel *> *cellViewModels;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self resetCellViewModels1];
    [self.tableView reloadData];
}

- (UITableView *)tableView {
    if (_tableView == nil) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.estimatedRowHeight = 300;
        _tableView.dataSource = self;
        [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
        [self.view addSubview:_tableView];
        _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshData)];
    }
    return _tableView;
}

static bool refreshData = true;
- (void)refreshData {
    if (refreshData) {
        [self resetCellViewModels2];
    } else {
        [self resetCellViewModels1];
    }
    refreshData = !refreshData;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.tableView.mj_header endRefreshing];
        [self.tableView reloadData];
    });
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
    [self.cellViewModels[indexPath.row] setIndexPath:indexPath];
    [cell setViewModel:self.cellViewModels[indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.cellViewModels count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    NSLog(@"cellHeight indexPath %@, height %lf", indexPath, self.cellViewModels[indexPath.row].cellHeight);
    return self.cellViewModels[indexPath.row].cellHeight;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(nonnull UITableViewCell *)cell forRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    self.cellViewModels[indexPath.row].cellHeight = CGRectGetHeight(cell.frame);
}

- (void)resetCellViewModels2 {
    self.cellViewModels  = [[NSMutableArray alloc] init];
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = YES;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = YES;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = YES;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
}

- (void)resetCellViewModels1 {
    self.cellViewModels  = [[NSMutableArray alloc] init];
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = YES;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = YES;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题常常的标题";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
    {
        CellViewModel *cellViewModel = [CellViewModel new];
        cellViewModel.isImage = NO;
        cellViewModel.text = @"内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容";
        cellViewModel.title = @"常常的标题常常的标";
        cellViewModel.cellHeight = UITableViewAutomaticDimension;
        [self.cellViewModels addObject:cellViewModel];
    }
}
@end
