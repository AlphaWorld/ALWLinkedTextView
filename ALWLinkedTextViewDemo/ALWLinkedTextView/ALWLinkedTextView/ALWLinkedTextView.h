//
//  ALWLinkedTextView.h
//  ALWLinkedTextView
//
//  Created by John on 16/6/14.
//  Copyright © 2016年 John. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^LinkedStringTapHandler)(NSString *linkedString);

@interface ALWLinkedTextView : UITextView

- (void)linkString:(NSString *)string defaultAttributes:(NSDictionary *)defaultAttributes highlightedAttributes:(NSDictionary *)highlightedAttributes tapHandler:(LinkedStringTapHandler)tapHandler;

- (void)linkStrings:(NSArray *)strings defaultAttributes:(NSDictionary *)defaultAttributes highlightedAttributes:(NSDictionary *)highlightedAttributes tapHandler:(LinkedStringTapHandler)tapHandler;

- (void)linkStringsWithRegEx:(NSRegularExpression *)regex defaultAttributes:(NSDictionary *)defaultAttributes highlightedAttributes:(NSDictionary *)highlightedAttributes tapHandler:(LinkedStringTapHandler)tapHandler;

- (void)reset;


@end

