//
//  ViewController.m
//  环信即时通讯
//
//  Created by 记忆 on 16/4/4.
//  Copyright © 2016年 Remeber. All rights reserved.
//

#import "ViewController.h"
#import "EMSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}
- (IBAction)getcode:(id)sender {
    EMError *error = [[EMClient sharedClient] registerWithUsername:@"930310" password:@"111111"];
    if (error==nil) {
        NSLog(@"注册成功");
    }

}
- (IBAction)login:(id)sender {
    
    EMError *error = [[EMClient sharedClient] loginWithUsername:@"930310" password:@"111111"];
    if (!error) {
        NSLog(@"登陆成功");
    }else {
    
        NSLog(@"%@",error.description);
        
    }

}
- (IBAction)sendMessage:(id)sender {
    EaseMessageViewController *chatController = [[EaseMessageViewController alloc] initWithConversationChatter:@"ming" conversationType:EMConversationTypeChat];
    chatController.title = @"ming";
    
    [self.navigationController pushViewController:chatController animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
