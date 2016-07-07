//
//  FirstViewController.h
//  Jerk1
//
//  Created by Kai Luo on 7/2/16.
//  Copyright © 2016 Kai Luo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface DiscoverViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapView;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;


@end

