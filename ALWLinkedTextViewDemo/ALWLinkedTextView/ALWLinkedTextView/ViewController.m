//
//  ViewController.m
//  ALWLinkedTextView
//
//  Created by John on 16/6/14.
//  Copyright © 2016年 John. All rights reserved.
//

#import "ViewController.h"
#import "ALWLinkedTextView.h"

@interface ViewController ()

@property (strong, nonatomic) ALWLinkedTextView *linkedTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    _linkedTextView = [[ALWLinkedTextView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:_linkedTextView];
    [self _alw_configLinkedTextView];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)_alw_configLinkedTextView
{
    //Example text
    NSString *theText = @"测试文本,点击确定文字,设定点击反馈";
    
    //Set the text view's text property before linking substrings
    self.linkedTextView.text = theText;
    
    //Create 2 dictionaries to pass in the text attributes for default / highlighted states
    NSMutableDictionary *defaultAttributes = [self exampleAttributes];
    NSMutableDictionary *highlightedAttributes = [self exampleAttributes];
    
    //The first string we're going to link
    NSString *stringToLink = @"测试";
    //Pass in the string, attributes, and a tap handling block
    [self.linkedTextView linkString:stringToLink
                   defaultAttributes:defaultAttributes
               highlightedAttributes:highlightedAttributes
                          tapHandler:[self exampleHandlerWithTitle:@"Link a single string"]];
    
    //create an array of strings to link, which will all use the same attributes and tap handling block
    NSArray *arrayOfStrings = @[@"点击",@"文字",@"反馈"];
    
    //Pass in the array, attribute dictionaries, and tap handler
    [self.linkedTextView linkStrings:arrayOfStrings
                    defaultAttributes:[self exampleAttributes]
                highlightedAttributes:[self exampleAttributes]
                           tapHandler:[self exampleHandlerWithTitle:@"Link an array of strings"]];
    
}

- (NSMutableDictionary *)exampleAttributes
{
    return [@{NSFontAttributeName:[UIFont boldSystemFontOfSize:[UIFont systemFontSize]],
              NSForegroundColorAttributeName:[UIColor blackColor]}mutableCopy];
}


- (LinkedStringTapHandler)exampleHandlerWithTitle:(NSString *)title
{
    LinkedStringTapHandler exampleHandler = ^(NSString *linkedString) {
        
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title
                                                       message:[NSString stringWithFormat:@"Handle tap in linked string '%@'",linkedString]
                                                      delegate:nil
                                             cancelButtonTitle:@"Dismiss"
                                             otherButtonTitles:nil, nil];
        [alert show];
    };
    
    return exampleHandler;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
