# MSSIOSResty

#API Request methods for iOS


*Drag MSSIOSAPIRequestClasses folder to your project

Import APIRequest.h file in your View Controller or Import                                                    APIRequest.h file in .pch file

###Sample Request:

[APIRequest postRequestUrl:@"url" parameters:parameters headers:headers indicator:YES                                                                          indicatorMessage:@"loading.." withErrorResponse:NO response:^(NSMutableDictionary *response) {
NSLog(@"response %@",response);  
}];

Url : give your complete url

Parameters: Make a dictionary of parameters ,key should be your parameter name and value 
should be your  parameter value

Headers   : Make a dictionary of headers ,key should be your header name and value 
should be your  header value

Indicator : If you want to display Activity Indicator pass bool value YES else NO

Indicator Message : Give a message you want to display below activity indicator (ex: loading)

WithErrorResponse: if you want only success response give a bool value NO
if you want to handle errors give a bool value YES

Response : Respons is your api response in dictionary format

////**** Parameters dictionary ****////

NSMutableDictionary *parameters=[NSMutableDictionary new];

[parameters setObject:@"ravi" forKey:@"firstname"];

[parameters setObject:@"ravi" forKey:@"lastname"];


////**** Header dictionary ****////

NSMutableDictionary *headers=[NSMutableDictionary new];

[headers setObject:@"application/json; charset=utf-8" forKey:@"Content-Type"];



###POST : 

[APIRequest postRequestUrl:@"url" parameters:parameters headers:headers indicator:YES                                                                        indicatorMessage:@"loading.." withErrorResponse:NO response:^(NSMutableDictionary *response) {

NSLog(@"response %@",response);  

}];



###GET :

[APIRequest getRequestUrl:@"url" parameters:nil headers:nil indicator:YES   indicatorMessage:@"Loading.." withErrorResponse:NO response:^(NSMutableDictionary* response) {

NSLog(@"responseresponse %@",response);

}];


###DELETE :

[APIRequest deleteRequestUrl:@"url" parameters:parameters headers:headers indicator:NO      indicatorMessage:nil withErrorResponse:YES response:^(NSMutableDictionary *response) {

NSLog(@"response %@",response);

}];


###PUT :

[APIRequest putRequestUrl:@"url" parameters:parameters headers:headers indicator:YES  indicatorMessage:@"loading" withErrorResponse:NO response:^(NSMutableDictionary *response) {

NSLog(@"response %@",response);

}];


Libraries Used:
DejalActivityView: Copyright © 2002-2015 Dejal Systems, LLC. All rights reserved.
LRResty

