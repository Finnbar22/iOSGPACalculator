//
//  BNRAppDelegate.m
//  OSU GPA Calculator
//
//  Created by Finn Fuller on 7/20/14.
//  Copyright (c) 2014 Finnbar Productions. All rights reserved.
//

#import "BNRViewController.h"
#import "BNRAppDelegate.h"

@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.rootViewController = [BNRViewController new];
    [self.window makeKeyAndVisible];

    
    //Display message when launched first time
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasAlreadyBeenLaunched = [defaults boolForKey:@"HasAlreadyBeenLaunched"];
    if (!hasAlreadyBeenLaunched) {
        [defaults setBool:YES forKey:@"HasAlreadyBeenLaunched"];
        [defaults synchronize];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"A little note." message:@"Thanks for downloading OSU GPA CALCULATOR. To add a class, just tap the 'plus' sign in the top right corner. And if you like this app, make sure you share some love in the App Store... Go Bucks!" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles: nil];
        [alert show];
        [alert release];
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
