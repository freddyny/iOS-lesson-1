//
//  ViewController.m
//  Lesson1InterviewApp
//
//  Created by Frederik Nygaard on 19.05.16.
//  Copyright (c) 2016 Frederik Nygaard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIView *myView;

@end

@implementation ViewController





-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    CGRect rect = self.myView.frame;
    rect.origin = point;
    self.myView.frame = rect;
    
    
    
    UIDevice *device = [UIDevice currentDevice];
    switch (device.orientation) {
        case UIDeviceOrientationPortrait:
            self.view.backgroundColor = [UIColor yellowColor];
            self.count++;
            break;
        case UIDeviceOrientationLandscapeLeft:
        case UIDeviceOrientationLandscapeRight:
            self.view.backgroundColor = [UIColor greenColor];
            self.count--;
            break;
        default:
            NSLog(@"default case!");
            break;
    }
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    

    
    self.myLabel.text = [NSString stringWithFormat:@"Count = 0, Date: %@",dateString];
    

    
    NSLog(@"count: %i", self.count);
    
    
    NSString *s = [NSString stringWithFormat:@"Count: %i, %@, Pos: (%.f,%.f)", self.count,dateString, point.x,point.y];
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
    
    
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd.MM.YY"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    self.myLabel.text = [NSString stringWithFormat:@"Count = 0, %@, pos,0.0 ",dateString];
    
    
    [self.view addSubview:self.myLabel];
    
    
    rect = CGRectMake(100, 100, 40, 40);
    self.myView = [[UIView alloc] initWithFrame:rect];
    self.myView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.myView];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
