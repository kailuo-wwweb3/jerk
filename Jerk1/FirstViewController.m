//
//  FirstViewController.m
//  Jerk1
//
//  Created by Kai Luo on 7/2/16.
//  Copyright © 2016 Kai Luo. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController () <UISearchBarDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Discover";
    [self.mapView setCenterCoordinate:self.mapView.userLocation.location.coordinate animated:YES];
    self.searchBar.delegate = self;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    // search stuff
    BOOL match = true;
    if (match) {
        // Add an annotation
        MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
        point.coordinate = self.mapView.userLocation.location.coordinate;
        point.title = @"6:00pm";
        point.subtitle = @"litou";
        [self.mapView addAnnotation:point];
        [self.mapView selectAnnotation:point animated:YES];
    } else {
        
    }
}

@end
