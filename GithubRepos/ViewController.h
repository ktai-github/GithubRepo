//
//  ViewController.h
//  GithubRepos
//
//  Created by KevinT on 2018-03-04.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"
#import "Repo.h"

@interface ViewController : UIViewController 

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic) NSMutableArray *reposMutableArray;

@end

