//
//  ReviewViewController.m
//  Jerk1
//
//  Created by Kai Luo on 7/7/16.
//  Copyright © 2016 Kai Luo. All rights reserved.
//

#import "ReviewViewController.h"
#import "ProfileViewController.h"

@interface ReviewViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;

@end

@implementation ReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSData *profileImageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/940877_10205095557580685_1893918631995716713_n.jpg?oh=a9c62300a6550657bb70dbaf96ddf6c3&oe=57FCDAD2"]];
    self.profileImage.image = [UIImage imageWithData:profileImageData];
    
//    NSData *backgroundImageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://scontent.fsnc1-1.fna.fbcdn.net/v/t1.0-9/13083282_10205947948609928_3567559230736006793_n.jpg?oh=a5427c30c751d5fa49c092f82f6cacdc&oe=582F230E"]];
//    self.backgroundImage.image = [UIImage imageWithData:backgroundImageData];
    
}
- (IBAction)submit:(id)sender {
    [self performSegueWithIdentifier:@"showProfile" sender:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"attributeToReview"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"attributeToReview"];
    }
    return cell;    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    ProfileViewController *profileViewController = (ProfileViewController *)segue.destinationViewController;
    profileViewController.hidesBottomBarWhenPushed = YES;
}


@end
