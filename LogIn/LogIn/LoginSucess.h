//
//  LoginSucess.h
//  LogIn
//
//  Created by janice on 2021/6/29.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginSucess : UIViewController
{
    UILabel *label;
    UILabel *username;
}

//@property (strong, nonatomic) IBOutlet UILabel *labeluser;
//@property (strong, nonatomic) IBOutlet UILabel *labelpwd;
@property (strong, nonatomic) IBOutlet UILabel *labeluser;
@property (strong, nonatomic) IBOutlet UILabel *labelpwd;


@property (strong) NSString *userid;
@property (strong) NSString *userpwd;
@property (weak, nonatomic) IBOutlet UIButton *goBackButton;
@end

NS_ASSUME_NONNULL_END
