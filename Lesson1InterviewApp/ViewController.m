//
//  ViewController.m
//  Lesson1InterviewApp
//
//  Created by Frederik Nygaard on 19.05.16.
//  Copyright (c) 2016 Frederik Nygaard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.count++;
    NSLog(@"count: %i", self.count);
    self.view.backgroundColor = [UIColor yellowColor];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
