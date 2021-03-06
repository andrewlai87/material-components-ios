/*
 Copyright 2016-present the Material Components for iOS authors. All Rights Reserved.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import <UIKit/UIKit.h>

#import "TextFieldPresentationStylesLegacyExampleSupplemental.h"

@implementation TextFieldPresentationStylesExample (Supplemental)

- (void)setupExampleViews {
  [self setupScrollView];
}

- (void)setupScrollView {
  self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectZero];
  [self.view addSubview:self.scrollView];
  self.scrollView.translatesAutoresizingMaskIntoConstraints = NO;

  [NSLayoutConstraint
      activateConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"V:|[scrollView]|"
                                                  options:0
                                                  metrics:nil
                                                    views:@{
                                                      @"scrollView" : self.scrollView
                                                    }]];
  [NSLayoutConstraint
      activateConstraints:[NSLayoutConstraint
                              constraintsWithVisualFormat:@"H:|[scrollView]|"
                                                  options:0
                                                  metrics:nil
                                                    views:@{
                                                      @"scrollView" : self.scrollView
                                                    }]];

  CGFloat marginOffset = 16;
  UIEdgeInsets margins = UIEdgeInsetsMake(0, marginOffset, 0, marginOffset);
  self.scrollView.layoutMargins = margins;

  UITapGestureRecognizer *tapRecognizer =
      [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapDidTouch)];
  [self.view addGestureRecognizer:tapRecognizer];
}

- (void)tapDidTouch {
  [self.view endEditing:YES];
}

@end

@implementation TextFieldPresentationStylesExample (CatalogByConvention)

+ (NSArray *)catalogBreadcrumbs {
  return @[ @"Text Field", @"Controller Styles (Objective C)" ];
}

+ (BOOL)catalogIsPrimaryDemo {
  return NO;
}

+ (BOOL)catalogIsPresentable {
  return YES;
}

@end
