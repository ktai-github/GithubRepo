//
//  ViewController.h
//  GithubRepos
//
//  Created by KevinT on 2018-03-04.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

