//
//  ViewController.h
//  HomewWork6
//
//  Created by Денис Шакуров on 16.04.2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) NSUserDefaults *userDefaults;

@property (weak, nonatomic) IBOutlet UITextView *textViewForUserDefaults;
@property (weak, nonatomic) IBOutlet UITextField *nameForUserDefaults;
@property (weak, nonatomic) IBOutlet UITextField *xForUserDefaults;
@property (weak, nonatomic) IBOutlet UITextField *yForUserDefaults;

@property (weak, nonatomic) IBOutlet UITextView *textViewForFile;
@property (weak, nonatomic) IBOutlet UITextField *nameForFile;
@property (weak, nonatomic) IBOutlet UITextField *xForFile;
@property (weak, nonatomic) IBOutlet UITextField *yForFile;
@property (weak, nonatomic) IBOutlet UITextField *filnameForRead;

@end

