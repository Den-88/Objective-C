//
//  ViewController.m
//  HomeWork5
//
//  Created by Денис Шакуров on 09.04.2024.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.loader = [Loader new];
    [self performLoadingGetRequest];
}

- (void)performLoadingGetRequest{
    [self.loader perfomeGetRequests:@"https://postman-echo.com/get" argumets:@{@"argument1":@"value1", @"argument2":@"value2"} myblock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error){
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
            self.textView.text = [dict description];
        });
    }];
}

- (void)performLoadingPostRequest{
    [self.loader perfomePostRequests:@"https://postman-echo.com/post" argumets:@{@"login":self.loginText.text, @"password":self.passwordText.text} myblock:^(NSDictionary * dict, NSError * error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            if (error){
                NSLog(@"%@", error);
                return;
            }
            NSLog(@"%@", dict);
            
            [self showAlert:@"Ответ от сервера:" message:[dict description]];
        });
    }];
}

- (IBAction)pressPost:(id)sender {
    [self performLoadingPostRequest];
}

- (void)showAlert:(NSString *)title message:(NSString *)message {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.alignment = NSTextAlignmentLeft;
    
    UIFont *font = [UIFont systemFontOfSize:14.0];
    NSDictionary *attributes = @{
        NSParagraphStyleAttributeName: paragraphStyle,
        NSFontAttributeName: font
    };
    
    NSAttributedString *attributedMessage = [[NSAttributedString alloc] initWithString:message attributes:attributes];
    
    [alertController setValue:attributedMessage forKey:@"attributedMessage"];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    }];
    
    [alertController addAction:okAction];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
