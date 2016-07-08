//
//  FirstViewController.m
//  Jerk1
//
//  Created by Kai Luo on 7/2/16.
//  Copyright © 2016 Kai Luo. All rights reserved.
//

#import "DiscoverViewController.h"

@interface DiscoverViewController () <UISearchBarDelegate, MKMapViewDelegate>

@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"Discover";
    [self.mapView setCenterCoordinate:self.mapView.userLocation.location.coordinate animated:YES];
    self.searchBar.delegate = self;
    self.mapView.delegate = self;

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


- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control {
    NSLog(@"tab");
    [self performSegueWithIdentifier:@"reviewPerson" sender:nil];
}

- (nullable MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation {
    MKAnnotationView *view = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pin"];
    view.canShowCallout = YES;
    view.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return view;

}
@end
