//
//  SecondViewController.h
//  Gandalf-Instructions-OBJC
//
//  Created by Mehul Rao on 4/29/17.
//  Copyright © 2017 Mehul Rao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@import GoogleMobileAds;



@class GADBannerView;


@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet GADBannerView *bannerView;


@end
