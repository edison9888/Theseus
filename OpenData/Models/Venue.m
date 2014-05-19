//
//  Venue.m
//  OpenData
//
//  Created by Michael Walker on 5/19/14.
//  Copyright (c) 2014 Lazer-Walker. All rights reserved.
//

#import "Venue.h"
#import "FoursquareVenue.h"

@implementation Venue

@dynamic foursquareId;
@dynamic latitude;
@dynamic longitude;
@dynamic name;
@dynamic stops;

- (void)setupWithFoursquareVenue:(FoursquareVenue *)venue {
    self.name = venue.name;
    self.foursquareId = venue.foursquareId;
    self.latitude = venue.latitude;
    self.longitude = venue.longitude;
}

- (CLLocationCoordinate2D) coordinate {
    return CLLocationCoordinate2DMake(self.latitude.doubleValue, self.longitude.doubleValue);
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate {
    self.latitude = @(coordinate.latitude);
    self.longitude = @(coordinate.longitude);
}


@end
