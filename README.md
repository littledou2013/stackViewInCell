# stackViewInCell
关于这个问题报告一下最新发现：
关于在UITableViewCell中使用UIStackView导致高度计算不准确和刷新时从底部滑出布局动画问题：
1、高度计算不准确，在UITableViewCell里使用[self.viewContent layoutIfNeeded]，高度就计算准确了，也不用特意去掉estimatedRowHeight的设置，但是[self.viewContent layoutIfNeeded]在控制台报了约束冲突，原因、该冲突的影响和解决该冲突的方法还不清楚。
2、刷新时从底部滑出动画问题应该不是UIStackView的问题，在UITableViewCell里不使用UIStackView 如提交8c13041b17d3dd0bb7c66b1f3dea35a2f069996c，仅仅更新约束也会产生布局动画，但是我使用项目里的代码，cell同样有约束更新，但是并没有布局动画的问题，所以该问题还是不太明确。

接下来需要解决两个问题：
1、在cell里使用UIStackView时， [self.viewContent layoutIfNeeded]产生的控制台冲突报告原因、影响及解决方法.
2、UITableViewCell刷新的时候，从底部出来的动画到底是怎么回事?
