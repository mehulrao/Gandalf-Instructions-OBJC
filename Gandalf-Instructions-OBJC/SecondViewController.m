//
//  SecondViewController.m
//  Gandalf-Instructions-OBJC
//
//  Created by Mehul Rao on 4/29/17.
//  Copyright © 2017 Mehul Rao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *adSwitch;


@end

@implementation SecondViewController

bool switchEnabeled;

- (IBAction)KillButton:(UIButton *)sender {
    system("killall -9 Cydia");
    printf("Cydia Killed ");
}


- (IBAction)adSwitch:(UISwitch *)sender {
    switchEnabeled = "True";
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    [prefs setObject:@"True" forKey:@"switchStatus"];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults *prefs = [NSUserDefaults standardUserDefaults];
    NSString *textToLoad = [prefs stringForKey:@"switchStatus"];
    if ([textToLoad  isEqual: @"True"]) {
        [_adSwitch setEnabled:(YES)];
        
    }
    else {
        [_adSwitch setEnabled:(NO)];
        
    }
    
    
    if (switchEnabeled == "True") {
        // Replace this ad unit ID with your own ad unit ID.
        self.bannerView.adUnitID = @"ca-app-pub-2616840641282201/7583672370";
        self.bannerView.rootViewController = self;
        
        GADRequest *request = [GADRequest request];
        // Requests test ads on devices you specify. Your test device ID is printed to the console when
        // an ad request is made. GADBannerView automatically returns test ads when running on a
        // simulator.
        request.testDevices = @[ kGADSimulatorID ];
        [self.bannerView loadRequest:request];
    }
    
    else {
        NSLog(@"No Ads");
    }
    
    

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}







@end
