//
//  ViewController.m
//  GithubRepos
//
//  Created by KevinT on 2018-03-04.
//  Copyright © 2018 KevinT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
  self.tableView.dataSource = self;
  
  NSURL *url = [[NSURL alloc] initWithString:@"https://api.github.com/users/ktai-github/repos"];
  
  NSURLRequest *urlRequest = [[NSURLRequest alloc] initWithURL:url];
  NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
  
  NSURLSession *urlSession = [NSURLSession sessionWithConfiguration:sessionConfig];
  NSURLSessionDataTask *dataTask = [urlSession dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    if (error) { // 1
      // Handle the error
      NSLog(@"error: %@", error.localizedDescription);
      return;
    }
    
    NSError *jsonError = nil;
    NSArray *repos = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
    
    if (jsonError) { // 3
      // Handle the error
      NSLog(@"jsonError: %@", jsonError.localizedDescription);
      return;
    }
    
    // If we reach this point, we have successfully retrieved the JSON from the API
    for (NSDictionary *repo in repos) { // 4
      NSString *repoName = repo[@"name"];
      NSLog(@"repo: %@", repoName);
    }
  }];
  
  [dataTask resume];
}


//- (void)didReceiveMemoryWarning {
//  [super didReceiveMemoryWarning];
//  // Dispose of any resources that can be recreated.
//}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
  <#code#>
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  <#code#>
}


@end
