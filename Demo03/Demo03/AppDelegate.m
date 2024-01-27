//
//  AppDelegate.m
//  Demo03
//
//  Created by Mac on 2024/1/15.
//

#import "AppDelegate.h"
#import "ViewController.h"
@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] init];
    self.window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    self.window.backgroundColor = [UIColor whiteColor];

    self.window.rootViewController = [ViewController new];
 
    [self.window makeKeyAndVisible];
    return YES;
}


#pragma mark - UISceneSession lifecycle
-(BOOL)application:(UIApplication *)app
           openURL:(NSURL *)url
           options:(NSDictionary<UIApplicationOpenURLOptionsKey,id> *)options {
    NSLog(@"=-=====:%@",url.absoluteString);
    return YES;
}

@end
