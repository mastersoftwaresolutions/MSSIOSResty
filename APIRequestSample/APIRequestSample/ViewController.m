//
//  ViewController.m
//  APIRequestSample
//
//  Created by ravi kumar on 29/01/15.
//  Copyright (c) 2015 masterSoftwareSolutions. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    ////**** Parameters dictionary ****////
    
    NSMutableDictionary *parameters=[NSMutableDictionary new];
    [parameters setObject:@"ravi" forKey:@"firstname"];
    [parameters setObject:@"ravi" forKey:@"lastname"];
    
    
    ////**** Parameters dictionary ****////
    
    NSMutableDictionary *headers=[NSMutableDictionary new];
    [headers setObject:@"application/json; charset=utf-8" forKey:@"Content-Type"];
    
    
    
    
    ////**** Get ****////
    
    [APIRequest getRequestUrl:@"http://whistle-s.herokuapp.com/api/category" parameters:nil headers:nil indicator:YES indicatorMessage:@"Loading.." withErrorResponse:NO response:^(NSMutableDictionary* response) {
       
        NSLog(@"responseresponse %@",response);
       
    }];
    
    
    
    
//    ////**** Post ****////
//    
//    [APIRequest postRequestUrl:@"url" parameters:parameters headers:headers indicator:YES indicatorMessage:@"loading.." withErrorResponse:NO response:^(NSMutableDictionary *response) {
//        
//        NSLog(@"response %@",response);
//        
//    }];
//    
//    
//    
//    
//    ////**** Delete ****////
//    
//    [APIRequest deleteRequestUrl:@"url" parameters:parameters headers:headers indicator:NO indicatorMessage:nil withErrorResponse:YES response:^(NSMutableDictionary *response) {
//        
//        NSLog(@"response %@",response);
//        
//    }];
//    
//    
//    
//    
//    ////**** Put ****////
//    
//    [APIRequest putRequestUrl:@"url" parameters:parameters headers:headers indicator:YES indicatorMessage:@"loading" withErrorResponse:NO response:^(NSMutableDictionary *response) {
//
//        NSLog(@"response %@",response);
//        
//    }];
//
}




@end
