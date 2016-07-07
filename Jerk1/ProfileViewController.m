//
//  SecondViewController.m
//  Jerk1
//
//  Created by Kai Luo on 7/2/16.
//  Copyright © 2016 Kai Luo. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *personalAttribute;
@property (weak, nonatomic) IBOutlet UITableView *reviewComments;

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.personalAttribute.dataSource = self;
    self.personalAttribute.delegate = self;
    
    self.reviewComments.dataSource = self;
    self.reviewComments.delegate = self;
    self.navigationItem.title = @"Profile";

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (tableView == self.personalAttribute) {
        return 1;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.personalAttribute) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personalAttributeTableCell"];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"personalAttributeTableCell"];
        }
        return cell;
    } else {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"personalCommentTableCell"];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"personalAttributeTableCell"];
        }
        cell.textLabel.text = @"This guy is good";
        return cell;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (tableView == self.personalAttribute) {
    } else {
        ChatViewController *chatViewController = [[ChatViewController alloc] init];
        [self.navigationController pushViewController:chatViewController animated:YES];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
