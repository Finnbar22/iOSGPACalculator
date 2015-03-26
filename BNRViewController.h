//
//  BNRViewController.h
//  OSU GPA Calculator
//
//  Created by Finn Fuller on 7/20/14.
//  Copyright (c) 2014 Finnbar Productions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRViewController : UIViewController {

    IBOutlet UILabel *loaded;
    
    IBOutlet UITextField *semester;
    
    IBOutlet UITextField *class1;
    IBOutlet UITextField *class2;
    IBOutlet UITextField *class3;
    IBOutlet UITextField *class4;
    IBOutlet UITextField *class5;
    IBOutlet UITextField *class6;
    IBOutlet UITextField *class7;
    IBOutlet UITextField *class8;
    IBOutlet UITextField *calculateGPAbox;   //Text field under calculate GPA button
    IBOutlet UITextField *saveSemesterbox;
    IBOutlet UITextField *loadSemesterbox;
    
    IBOutlet UITextField *grade1;
    IBOutlet UITextField *grade2;
    IBOutlet UITextField *grade3;
    IBOutlet UITextField *grade4;
    IBOutlet UITextField *grade5;
    IBOutlet UITextField *grade6;
    IBOutlet UITextField *grade7;
    IBOutlet UITextField *grade8;
    
    IBOutlet UITextField *credits1;
    IBOutlet UITextField *credits2;
    IBOutlet UITextField *credits3;
    IBOutlet UITextField *credits4;
    IBOutlet UITextField *credits5;
    IBOutlet UITextField *credits6;
    IBOutlet UITextField *credits7;
    IBOutlet UITextField *credits8;
    
    
    IBOutlet UIButton *calculateGPA;
    IBOutlet UIButton *saveSemester;
    IBOutlet UIButton *loadSemester;
    IBOutlet UIButton *addClass;
    IBOutlet UIButton *settings;
    
    IBOutlet UIImageView *GoBucksLines;
    IBOutlet UIImageView *BrutusMascot;
    IBOutlet UIImageView *GoBucks;
    
}

- (IBAction)save:(id)sender;
- (IBAction)load:(id)sender;
- (IBAction)addClass:(id)sender;
- (IBAction)calculateGPA:(id)sender;
- (IBAction)settings:(id)sender;



@end
