//
//  ViewController.m
//  LogIn
//
//  Created by janice on 2021/6/12.
//

#import "ViewController.h"
#import "LoginSucess.h"

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
    NSString *InputId = self.usernameTextField.text;  // 輸入帳號 user
    NSString *InputPassword = self.passwordTextField.text;  // 輸入密碼 1234
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"登入" message:[NSString stringWithFormat:@"%@", InputId] preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertController *alertController1 = [UIAlertController alertControllerWithTitle:@"大標題" message:@"小標題" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ShowButton = nil;
    UIAlertAction* ShowButton2 = nil;
    
    if([self.username isEqualToString: InputId] && [self.password isEqualToString: InputPassword]){

        [alertController setMessage:[NSString stringWithFormat: @"%@ 登入成功", InputId]];

        ShowButton = [UIAlertAction actionWithTitle:@"哈哈" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
            
            LoginSucess *loginsucess = [[LoginSucess alloc] initWithNibName: @"LoginSucess" bundle:nil];
            loginsucess.userid = InputId;
            loginsucess.userpwd = InputPassword;
    

//            NSLog(@"OK hander");
            [self presentViewController:loginsucess animated:YES completion:nil];
        }];

        ShowButton2 = [UIAlertAction actionWithTitle:@"呵呵" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
//            NSLog(@"OK hander");
////            [self presentViewController:loginsucess animated:YES completion:nil];
        }];

    }else{
        [alertController setMessage:[NSString stringWithFormat:@"%@ 登入失敗", InputId]];
        ShowButton = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
        }];

    }
    
//    UIAlertAction* noButton = [UIApplication actionWithTitle:@"Cancal" style:UIAlertActionStyleDefault hander:^(UIAlertAction * action){
//
//    }]
    
    [alertController addAction: ShowButton];
    [alertController addAction: ShowButton2];
    
    [self presentViewController:alertController animated:YES completion:nil];
//    [self presentViewController:alertController1 animated:TRUE completion:nil];
}

@end
