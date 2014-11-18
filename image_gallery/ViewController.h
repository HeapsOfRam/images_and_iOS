//
//  ViewController.h
//  image_gallery
//
//  Created by Ryan March on 11/18/14.
//  Copyright (c) 2014 Ryan March. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *image_frame;
@property int image_index;
@property (weak, nonatomic) IBOutlet UIPageControl *page_of_image;

- (IBAction)image_index_increase:(id)sender;
- (IBAction)image_index_decrease:(id)sender;
- (IBAction)random_image_index:(id)sender;

@end

