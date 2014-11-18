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

@synthesize image_frame, image_index, page_of_image;

const int lower_bound = 0;
const int upper_bound = 5;

NSMutableArray *images_array;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    image_index = lower_bound;
    images_array = [[NSMutableArray alloc] init];
    [images_array addObject: [UIImage imageNamed:@"lain1"]];
    [images_array addObject: [UIImage imageNamed:@"lain_l"]];
    [images_array addObject: [UIImage imageNamed:@"lain_kneel"]];
    [images_array addObject: [UIImage imageNamed:@"kino_no_tabi"]];
    [images_array addObject: [UIImage imageNamed:@"hunter_x_hunter"]];
    [images_array addObject: [UIImage imageNamed:@"mass_effect"]];
    
    image_frame.clipsToBounds = YES;
    
    image_frame.image = images_array[image_index];
    
    page_of_image.currentPage = image_index;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)image_index_increase:(id)sender {
    image_index++;
    
    if(image_index > upper_bound){
        image_index = lower_bound;
    }
    
    image_frame.image = images_array[image_index];
 
    page_of_image.currentPage = image_index;
}

- (IBAction)image_index_decrease:(id)sender {
    image_index--;
    
    if(image_index < lower_bound){
        image_index = upper_bound;
    }
    
    image_frame.image = images_array[image_index];
    
    page_of_image.currentPage = image_index;
}

- (IBAction)random_image_index:(id)sender {
    int random_index = image_index;
    
    while(random_index == image_index){
        random_index = arc4random_uniform(upper_bound + 1);
    }
    
    image_index = random_index;
    
    image_frame.image = images_array[image_index];
    
    page_of_image.currentPage = image_index;
}
@end
