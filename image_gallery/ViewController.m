//
//  ViewController.m
//  image_gallery
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize image_frame, image_index;

NSMutableArray *images_array;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    image_index = 0;
    images_array = [[NSMutableArray alloc] init];
    [images_array addObject: [UIImage imageNamed:@"lain1"]];
    [images_array addObject: [UIImage imageNamed:@"lain_l"]];
    [images_array addObject: [UIImage imageNamed:@"lain_kneel"]];
    [images_array addObject: [UIImage imageNamed:@"kino_no_tabi"]];
    [images_array addObject: [UIImage imageNamed:@"hunter_x_hunter"]];
    [images_array addObject: [UIImage imageNamed:@"mass_effect"]];
    
    image_frame.image = images_array[image_index];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)image_index_increase:(id)sender {
    image_index++;
    
    if(image_index > 5){
        image_index = 0;
    }
    
    image_frame.image = images_array[image_index];
}

- (IBAction)image_index_decrease:(id)sender {
    image_index--;
    
    if(image_index < 0){
        image_index = 5;
    }
    
    image_frame.image = images_array[image_index];
}

- (IBAction)random_image_index:(id)sender {
    image_index = arc4random_uniform(5);
    
    image_frame.image = images_array[image_index];
}
@end
