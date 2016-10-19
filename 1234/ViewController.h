//
//  ViewController.h
//  project1
//
//  Created by Анна  Зелинская on 16.10.16.
//  Copyright © 2016 Анна  Зелинская. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet UILabel *outLabel;
    IBOutlet UILabel *inField;
}

- (IBAction)doCalculate:(id)sender;

@end

