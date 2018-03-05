//
//  TableViewCell.h
//  GithubRepos
//
//  Created by KevinT on 2018-03-04.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *repoLabel;
//@property (nonatomic) NSURLSessionDownloadTask *downloadTask;
@end
