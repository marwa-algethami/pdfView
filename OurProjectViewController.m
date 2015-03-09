//
//  OurProjectViewController.m
//  pdfView
//
//  Created by Marwa Algethami on 5/18/1436 AH.
//  Copyright (c) 1436 Marwa Algethami. All rights reserved.
//

#import "OurProjectViewController.h"

@interface OurProjectViewController ()

@end


@implementation OurProjectViewController

@synthesize webView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"IfStatement" ofType:@"pdf"];
    
  
    NSURL *url = [NSURL fileURLWithPath:path];

    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:url];
    
    [webView loadRequest:urlRequest];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
