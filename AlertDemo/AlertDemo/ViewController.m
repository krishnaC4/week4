//
//  ViewController.m
//  AlertDemo
//
//  Created by MacMan on 8/10/15.
//  Copyright (c) 2015 MacManApp. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage:(id)sender {
    
    UIAlertView *message = [[UIAlertView alloc]
                            initWithTitle:@"hello world"
                            message:@"this my first UIButton message"
                            delegate:self
                            cancelButtonTitle:@"Button 5"
                            otherButtonTitles:@"Button 1",@"Button 2",nil];
    
    
    
    [message addButtonWithTitle:@"Button 3"];
    [message addButtonWithTitle:@"Button 4"];
    
    [message show];
    

}

- (IBAction)showMessage2:(id)sender {
    
    UIAlertController *alert2 = [UIAlertController alertControllerWithTitle:@"My Alert2"
                                                                    message:@"this is the new impemention"
                                                             preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle: @"OK"
                                                              style: UIAlertActionStyleDefault
                                                            handler:^(UIAlertAction *action ) {}    ];
    
    [alert2 addAction:defaultAction];
    [self presentViewController:alert2 animated:YES completion:nil];
    
}


-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if ([title isEqualToString:@"Button 1"])
    {
        NSLog(@"Button 1 was selected.");
        
    }
    
    else if ([title isEqualToString:@"Button 2"])
    {
        NSLog(@"Button 2 was selected.");
    }
    
    else if ([title isEqualToString:@"Button 3"]){
        
        NSLog(@"Button 3 was selected");
    }
    
    else {
        NSLog(@"not going to happen");
    }
        
}


@end





























