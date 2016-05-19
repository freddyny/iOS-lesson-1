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
    
    
    NSString *s = [NSString stringWithFormat:@"Count: %i", self.count];
    self.myLabel.text = s;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    self.view.backgroundColor = [UIColor whiteColor];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Display size of the view.
    CGRect rect = self.view.frame;
    NSLog(@"%@",NSStringFromCGRect(rect));
    
    rect = self.view.bounds;
    NSLog(@"%@",NSStringFromCGRect(rect));
    
    
    rect = CGRectInset(rect,50,50);
    self.myLabel = [[UILabel alloc] initWithFrame:rect];
    self.myLabel.text = @"Count = 0";
    
    [self.view addSubview:self.myLabel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
