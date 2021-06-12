//
//  ViewController.m
//  LogIn
//
//  Created by janice on 2021/6/12.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSString *username;
@property (weak, nonatomic) IBOutlet NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.username = @"user";
    self.password = @"1234";
    self.usernameTextField.text = self.username;
    self.passwordTextField.text =self.password;
    
}

- (IBAction)LogIn:(id)sender {
    NSString *InputId = self.usernameTextField.text;
    NSString *InputPassword = self.passwordTextField.text;
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"登入" message:[NSString stringWithFormat:@"%@", InputId] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ShowButton = nil;
    
    if([self.username isEqualToString: InputId] && [self.password isEqualToString: InputPassword]){
        [alertController setMessage:[NSString stringWithFormat: @"%@ 登入成功", InputId]];
        ShowButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            NSLog(@"OK hander");
        }];
    }
    
    [alertController addAction: ShowButton];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
