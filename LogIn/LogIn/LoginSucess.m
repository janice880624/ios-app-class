//
//  LoginSucess.m
//  LogIn
//
//  Created by janice on 2021/6/29.
//

#import "LoginSucess.h"

@interface LoginSucess ()

@end

@implementation LoginSucess

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"_userid>%@", _userid);
    NSLog(@"_userpwd>%@", _userpwd);
    [_labeluser setText:_userid];
    [_labelpwd setText:_userpwd];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
