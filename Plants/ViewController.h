//
//  ViewController.h
//  Plants
//
//  Created by Revanth Cherukuri on 5/7/17.
//  Copyright © 2017 Revanth Cherukuri. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UITextView *plantDetails;
@property (weak, nonatomic) IBOutlet UILabel *yourPlantIs;
@property (weak, nonatomic) IBOutlet UILabel *plantName;
@property (weak, nonatomic) IBOutlet UIImageView *plantImage;

@end

