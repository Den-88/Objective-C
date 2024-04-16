//
//  ViewController.m
//  HomewWork6
//
//  Created by Денис Шакуров on 16.04.2024.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.userDefaults = [NSUserDefaults standardUserDefaults];
}

- (IBAction)pressSaveToUserDefaults:(id)sender {
    CGFloat x = [self.xForUserDefaults.text floatValue];
    CGFloat y = [self.yForUserDefaults.text floatValue];
    CGPoint point = CGPointMake(x, y);
    Robot *robot = [[Robot alloc] initWithPoint:point andName:self.nameForUserDefaults.text];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [self.userDefaults setObject:robotData forKey:@"robot"];
    
    NSLog(@"Saved to User Defaults");
}

- (IBAction)loadFromUserDefaults:(id)sender {
    NSData *robotData = [self.userDefaults objectForKey:@"robot"];
    Robot *robot = [NSKeyedUnarchiver unarchiveObjectWithData:robotData];
    [self.textViewForUserDefaults setText:[NSString stringWithFormat:@"name: %@\nx: %d\ny: %d", robot.name, (int)robot.point.x, (int)robot.point.y]];
    
    NSLog(@"Loaded from User Defaults");
}

- (IBAction)writeFile:(id)sender {
    CGFloat x = [self.xForFile.text floatValue];
    CGFloat y = [self.yForFile.text floatValue];
    CGPoint point = CGPointMake(x, y);
    Robot *robot = [[Robot alloc] initWithPoint:point andName:self.nameForFile.text];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:self.nameForFile.text];

    [robotData writeToFile:filePath atomically:YES];
    
    NSLog(@"Write file");
}

- (IBAction)readFile:(id)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *filePath = [documentsDirectory stringByAppendingPathComponent:self.filnameForRead.text];
    
    NSData *robotData = [NSData dataWithContentsOfFile:filePath];

    if (robotData) {
        Robot *robot = [NSKeyedUnarchiver unarchiveObjectWithData:robotData];
        [self.textViewForFile setText:[NSString stringWithFormat:@"name: %@\nx: %d\ny: %d", robot.name, (int)robot.point.x, (int)robot.point.y]];

        NSLog(@"Read file success");

    } else {
        [self.textViewForFile setText:@""];
        NSLog(@"File not found");
    }
}
@end
