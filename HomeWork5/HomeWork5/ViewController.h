//
//  ViewController.h
//  HomeWork5
//
//  Created by Денис Шакуров on 09.04.2024.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property(nonatomic) Loader* loader;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *loginText;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

- (IBAction)pressPost:(id)sender;

@end

