//
//  BNRViewController.m
//  OSU GPA Calculator
//
//  Created by Finn Fuller on 7/20/14.
//  Copyright (c) 2014 Finnbar Productions. All rights reserved.
//

#import "BNRViewController.h"
#import "SettingsPageViewController.h"
#include <stdlib.h>


@interface BNRViewController ()



@end

@implementation BNRViewController


int i = 1;   // Counter


// Hide calculateGPA button and uitextfield underneath it and saveSemester and loadSemester buttons
-(void)viewDidLoad
{
    
    calculateGPA.hidden = YES;
    calculateGPAbox.hidden = YES;
    saveSemester.hidden = YES;
    loadSemester.hidden = YES;
    saveSemesterbox.hidden = YES;
    loadSemesterbox.hidden = YES;
    semester.hidden = YES;
    
    
    int r = arc4random() % 3;
    
    if (r == 0)
    {
        GoBucksLines.hidden = NO;
    }
    
    else if(r == 1)
    {
        BrutusMascot.hidden = NO;
    }
    
    else if(r == 2)
    {
        GoBucks.hidden = NO;
    }
    
}

- (IBAction)addClass:(id)sender
{
    
    if(i == 1){
        class1.hidden = NO;
        grade1.hidden = NO;
        credits1.hidden = NO;
        calculateGPA.hidden = NO;
        calculateGPAbox.hidden = NO;
        saveSemester.hidden = NO;
        loadSemester.hidden = NO;
        saveSemesterbox.hidden = NO;
        loadSemesterbox.hidden = NO;
        semester.hidden = NO;
    
        //Fade in
        
        calculateGPA.alpha = 0.0;
        calculateGPAbox.alpha = 0.0;
        saveSemester.alpha = 0.0;
        saveSemesterbox.alpha = 0.0;
        loadSemester.alpha = 0.0;
        loadSemesterbox.alpha = 0.0;
        semester.alpha = 0.0;
        
        [self.view addSubview:calculateGPA];
        [self.view addSubview:saveSemester];
        [self.view addSubview:loadSemester];
        [self.view addSubview:semester];
        
    
        [UIView animateWithDuration:1.0
                              delay:0.25
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{calculateGPA.alpha = 1.0;}
                         completion:nil];
        [UIView animateWithDuration:1.0
                              delay:0.25
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{calculateGPAbox.alpha = 1.0;}
                         completion:nil];
        
        [UIView animateWithDuration:1.0
                              delay:0.75
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{saveSemester.alpha = 1.0;}
                         completion:nil];
        
        [UIView animateWithDuration:1.0
                              delay:0.75
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{saveSemesterbox.alpha = 1.0;}
                         completion:nil];
        
        [UIView animateWithDuration:1.0
                              delay:1.25
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{loadSemester.alpha = 1.0;}
                         completion:nil];
        
        [UIView animateWithDuration:1.0
                              delay:1.25
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{loadSemesterbox.alpha = 1.0;}
                         completion:nil];
        
        [UIView animateWithDuration:1.0
                              delay:1.75
                            options: UIViewAnimationCurveEaseInOut
                         animations:^{semester.alpha = 1.0;}
                         completion:nil];
        
        //Fade out button
//    [UIView animateWithDuration:0.5 animations:^{ calculateGPA.alpha = 0;}];
        
    
    i++;}
    

    else if(i == 2){
        class2.hidden = NO;
        grade2.hidden = NO;
        credits2.hidden = NO;
        i++;}
    
    else if(i == 3){
        class3.hidden = NO;
        grade3.hidden = NO;
        credits3.hidden = NO;
        i++;}
    
    else if(i == 4){
        class4.hidden = NO;
        grade4.hidden = NO;
        credits4.hidden = NO;
        i++;}
    
    else if(i == 5){
        class5.hidden = NO;
        grade5.hidden = NO;
        credits5.hidden = NO;
        i++;}
    
    else if(i == 6){
        class6.hidden = NO;
        grade6.hidden = NO;
        credits6.hidden = NO;
        i++;}
    
    else if(i == 7){
        class7.hidden = NO;
        grade7.hidden = NO;
        credits7.hidden = NO;
        i++;}
    
   
    else if(i == 8){
        class8.hidden = NO;
        grade8.hidden = NO;
        credits8.hidden = NO;
        i++;}
    
    
}



- (IBAction)save:(id)sender
{
    
//   NSArray *grades = @[grade1, grade2, grade3, grade4, grade5, grade6, grade7];
//    
//    for(int j = 1; j <= i; j++) {
//        
//        NSString *saveString = [(UITextField*)grades[j] text];
//        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//        NSString *key = [NSString stringWithFormat:@"saveString%d", j];
//        [defaults setObject:saveString forKey:key];
//        [defaults synchronize];
//        }

    

     
    //Grade1 save string
    NSString *saveString0 = grade1.text;
    NSUserDefaults *defaults0 = [NSUserDefaults standardUserDefaults];
    [defaults0 setObject:saveString0 forKey:@"saveString0"];
    [defaults0 synchronize];
    
    //Grade2 save string
    NSString *saveString1 = grade2.text;
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    [defaults1 setObject:saveString1 forKey:@"saveString1"];
    [defaults1 synchronize];
    
    //Grade3 save string
    NSString *saveString2 = grade3.text;
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    [defaults2 setObject:saveString2 forKey:@"saveString2"];
    [defaults2 synchronize];
    
    
    //Semester save string
    NSString *saveString3 = semester.text;
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    [defaults3 setObject:saveString3 forKey:@"saveString3"];
    [defaults3 synchronize];
    
    
    //Class1 save string
    NSString *saveString4 = class1.text;
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    [defaults4 setObject:saveString4 forKey:@"saveString4"];
    [defaults4 synchronize];
    
    //Class2 save string
    NSString *saveString5 = class2.text;
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    [defaults5 setObject:saveString5 forKey:@"saveString5"];
    [defaults5 synchronize];
    
    //Class3 save string
    NSString *saveString6 = class3.text;
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    [defaults6 setObject:saveString6 forKey:@"saveString6"];
    [defaults6 synchronize];
    
    
    //Credits1 save string
    NSString *saveString7 = credits1.text;
    NSUserDefaults *defaults7 = [NSUserDefaults standardUserDefaults];
    [defaults7 setObject:saveString7 forKey:@"saveString7"];
    [defaults7 synchronize];
    
    //Credits2 save string
    NSString *saveString8 = credits2.text;
    NSUserDefaults *defaults8 = [NSUserDefaults standardUserDefaults];
    [defaults8 setObject:saveString8 forKey:@"saveString8"];
    [defaults8 synchronize];
    
    //Credits3 save string
    NSString *saveString9 = credits3.text;
    NSUserDefaults *defaults9 = [NSUserDefaults standardUserDefaults];
    [defaults9 setObject:saveString9 forKey:@"saveString9"];
    [defaults9 synchronize];
    
    //Grade4 save string
    NSString *saveString10 = grade4.text;
    NSUserDefaults *defaults10 = [NSUserDefaults standardUserDefaults];
    [defaults10 setObject:saveString10 forKey:@"saveString10"];
    [defaults10 synchronize];
    
    //Grade5 save string
    NSString *saveString11 = grade5.text;
    NSUserDefaults *defaults11 = [NSUserDefaults standardUserDefaults];
    [defaults11 setObject:saveString11 forKey:@"saveString11"];
    [defaults11 synchronize];
    
    //Grade6 save string
    NSString *saveString12 = grade6.text;
    NSUserDefaults *defaults12 = [NSUserDefaults standardUserDefaults];
    [defaults12 setObject:saveString12 forKey:@"saveString12"];
    [defaults12 synchronize];
    
    //Grade7 save string
    NSString *saveString13 = grade7.text;
    NSUserDefaults *defaults13 = [NSUserDefaults standardUserDefaults];
    [defaults13 setObject:saveString13 forKey:@"saveString13"];
    [defaults13 synchronize];
    
    
    //Class4 save string
    NSString *saveString14 = class4.text;
    NSUserDefaults *defaults14 = [NSUserDefaults standardUserDefaults];
    [defaults14 setObject:saveString14 forKey:@"saveString14"];
    [defaults14 synchronize];
    
    //Class5 save string
    NSString *saveString15 = class5.text;
    NSUserDefaults *defaults15 = [NSUserDefaults standardUserDefaults];
    [defaults15 setObject:saveString15 forKey:@"saveString15"];
    [defaults15 synchronize];
    
    //Class6 save string
    NSString *saveString16 = class6.text;
    NSUserDefaults *defaults16 = [NSUserDefaults standardUserDefaults];
    [defaults16 setObject:saveString16 forKey:@"saveString16"];
    [defaults16 synchronize];
    
    //Class7 save string
    NSString *saveString17 = class7.text;
    NSUserDefaults *defaults17 = [NSUserDefaults standardUserDefaults];
    [defaults17 setObject:saveString17 forKey:@"saveString17"];
    [defaults17 synchronize];
    
    
    //Credits4 save string
    NSString *saveString18 = credits4.text;
    NSUserDefaults *defaults18 = [NSUserDefaults standardUserDefaults];
    [defaults18 setObject:saveString18 forKey:@"saveString18"];
    [defaults18 synchronize];
    
    //Credits5 save string
    NSString *saveString19 = credits5.text;
    NSUserDefaults *defaults19 = [NSUserDefaults standardUserDefaults];
    [defaults19 setObject:saveString19 forKey:@"saveString19"];
    [defaults19 synchronize];
    
    //Credits6 save string
    NSString *saveString20 = credits6.text;
    NSUserDefaults *defaults20 = [NSUserDefaults standardUserDefaults];
    [defaults20 setObject:saveString20 forKey:@"saveString20"];
    [defaults20 synchronize];
    
    //Credits7 save string
    NSString *saveString21 = credits7.text;
    NSUserDefaults *defaults21 = [NSUserDefaults standardUserDefaults];
    [defaults21 setObject:saveString21 forKey:@"saveString21"];
    [defaults21 synchronize];
    
    
    //Grade8 save string
    NSString *saveString22 = grade8.text;
    NSUserDefaults *defaults22 = [NSUserDefaults standardUserDefaults];
    [defaults22 setObject:saveString22 forKey:@"saveString22"];
    [defaults22 synchronize];
    
    //Class8 save string
    NSString *saveString23 = class8.text;
    NSUserDefaults *defaults23 = [NSUserDefaults standardUserDefaults];
    [defaults23 setObject:saveString23 forKey:@"saveString23"];
    [defaults23 synchronize];
    
    //Credits8 save string
    NSString *saveString24 = credits8.text;
    NSUserDefaults *defaults24 = [NSUserDefaults standardUserDefaults];
    [defaults24 setObject:saveString24 forKey:@"saveString24"];
    [defaults24 synchronize];
    
    loaded.text = @"Data Saved Successfully.";
    

}

- (IBAction)load:(id)sender
{

//    for(int j = 1; j <=i; j++)
//    {
//        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//        NSString *loadString = [defaults objectForKey:@"saveString"];
//        [(UITextField*)grades[j] setText:loadString];
//        [loaded setText:@"Data Loaded Successfully."];
//        
//    }
    
    
    //Grade1 load string
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *loadString = [defaults objectForKey:@"saveString0"];
    [grade1 setText:loadString];
    [loaded setText:@"Data Loaded Successfully."];
    

    
    //Grade2 load string
    NSUserDefaults *defaults1 = [NSUserDefaults standardUserDefaults];
    NSString *loadString1 = [defaults1 objectForKey:@"saveString1"];
    [grade2 setText:loadString1];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Grade3 load string
    NSUserDefaults *defaults2 = [NSUserDefaults standardUserDefaults];
    NSString *loadString2 = [defaults2 objectForKey:@"saveString2"];
    [grade3 setText:loadString2];
    [loaded setText:@"Data Loaded Successfully."];

    
    
    //Semester load string
    NSUserDefaults *defaults3 = [NSUserDefaults standardUserDefaults];
    NSString *loadString3 = [defaults3 objectForKey:@"saveString3"];
    [semester setText:loadString3];
    [loaded setText:@"Data Loaded Successfully."];
    
    
    //Class1 load string
    NSUserDefaults *defaults4 = [NSUserDefaults standardUserDefaults];
    NSString *loadString4 = [defaults4 objectForKey:@"saveString4"];
    [class1 setText:loadString4];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class2 load string
    NSUserDefaults *defaults5 = [NSUserDefaults standardUserDefaults];
    NSString *loadString5 = [defaults5 objectForKey:@"saveString5"];
    [class2 setText:loadString5];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class3 load string
    NSUserDefaults *defaults6 = [NSUserDefaults standardUserDefaults];
    NSString *loadString6 = [defaults6 objectForKey:@"saveString6"];
    [class3 setText:loadString6];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits1 load string
    NSUserDefaults *defaults7 = [NSUserDefaults standardUserDefaults];
    NSString *loadString7 = [defaults7 objectForKey:@"saveString7"];
    [credits1 setText:loadString7];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits2 load string
    NSUserDefaults *defaults8 = [NSUserDefaults standardUserDefaults];
    NSString *loadString8 = [defaults8 objectForKey:@"saveString8"];
    [credits2 setText:loadString8];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits3 load string
    NSUserDefaults *defaults9 = [NSUserDefaults standardUserDefaults];
    NSString *loadString9 = [defaults9 objectForKey:@"saveString9"];
    [credits3 setText:loadString9];
    [loaded setText:@"Data Loaded Successfully."];
    
    
    //Grade4 load string
    NSUserDefaults *defaults10 = [NSUserDefaults standardUserDefaults];
    NSString *loadString10 = [defaults10 objectForKey:@"saveString10"];
    [grade4 setText:loadString10];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Grade5 load string
    NSUserDefaults *defaults11 = [NSUserDefaults standardUserDefaults];
    NSString *loadString11 = [defaults11 objectForKey:@"saveString11"];
    [grade5 setText:loadString11];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Grade6 load string
    NSUserDefaults *defaults12 = [NSUserDefaults standardUserDefaults];
    NSString *loadString12 = [defaults12 objectForKey:@"saveString12"];
    [grade6 setText:loadString12];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Grade7 load string
    NSUserDefaults *defaults13 = [NSUserDefaults standardUserDefaults];
    NSString *loadString13 = [defaults13 objectForKey:@"saveString13"];
    [grade7 setText:loadString13];
    [loaded setText:@"Data Loaded Successfully."];
    
    
    //Class4 load string
    NSUserDefaults *defaults14 = [NSUserDefaults standardUserDefaults];
    NSString *loadString14 = [defaults14 objectForKey:@"saveString14"];
    [class4 setText:loadString14];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class5 load string
    NSUserDefaults *defaults15 = [NSUserDefaults standardUserDefaults];
    NSString *loadString15 = [defaults15 objectForKey:@"saveString15"];
    [class5 setText:loadString15];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class6 load string
    NSUserDefaults *defaults16 = [NSUserDefaults standardUserDefaults];
    NSString *loadString16 = [defaults16 objectForKey:@"saveString16"];
    [class6 setText:loadString16];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class7 load string
    NSUserDefaults *defaults17 = [NSUserDefaults standardUserDefaults];
    NSString *loadString17 = [defaults17 objectForKey:@"saveString17"];
    [class7 setText:loadString17];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits4 load string
    NSUserDefaults *defaults18 = [NSUserDefaults standardUserDefaults];
    NSString *loadString18 = [defaults18 objectForKey:@"saveString18"];
    [credits4 setText:loadString18];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits5 load string
    NSUserDefaults *defaults19 = [NSUserDefaults standardUserDefaults];
    NSString *loadString19 = [defaults19 objectForKey:@"saveString19"];
    [credits5 setText:loadString19];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits6 load string
    NSUserDefaults *defaults20 = [NSUserDefaults standardUserDefaults];
    NSString *loadString20 = [defaults20 objectForKey:@"saveString20"];
    [credits6 setText:loadString20];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits7 load string
    NSUserDefaults *defaults21 = [NSUserDefaults standardUserDefaults];
    NSString *loadString21 = [defaults21 objectForKey:@"saveString21"];
    [credits7 setText:loadString21];
    [loaded setText:@"Data Loaded Successfully."];
    
    
    //Grade8 load string
    NSUserDefaults *defaults22 = [NSUserDefaults standardUserDefaults];
    NSString *loadString22 = [defaults22 objectForKey:@"saveString22"];
    [grade8 setText:loadString22];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Class8 load string
    NSUserDefaults *defaults23 = [NSUserDefaults standardUserDefaults];
    NSString *loadString23 = [defaults23 objectForKey:@"saveString23"];
    [class8 setText:loadString23];
    [loaded setText:@"Data Loaded Successfully."];
    
    //Credits8 load string
    NSUserDefaults *defaults24 = [NSUserDefaults standardUserDefaults];
    NSString *loadString24 = [defaults24 objectForKey:@"saveString24"];
    [credits8 setText:loadString24];
    [loaded setText:@"Data Loaded Successfully."];
    

}



- (IBAction)calculateGPA:(id)sender
{
    
    //This IBAction is sloppy and can be created a lot more efficiently, however at the time, this is the only way I know how to do this.
    
    // floats to convert letter grade to GPA equivalent
    float grades1 = 0, grades2 = 0, grades3 = 0, grades4 = 0, grades5 = 0, grades6 = 0, grades7 = 0, grades8 = 0;
    
    //floats for credits
    //float test = [txtDiscount.text floatValue];
    float credit1 = [credits1.text floatValue];
    float credit2 = [credits2.text floatValue];
    float credit3 = [credits3.text floatValue];
    float credit4 = [credits4.text floatValue];
    float credit5 = [credits5.text floatValue];
    float credit6 = [credits6.text floatValue];
    float credit7 = [credits7.text floatValue];
    float credit8 = [credits8.text floatValue];
    
    
    // float for GPA
    float GPA = 0.0;
    
    
    
    // Arrays for letters
    NSMutableArray *lettersA = [[[NSMutableArray alloc] init] autorelease];
    [lettersA addObject: @"a"];
    [lettersA addObject: @"A"];
    
    NSMutableArray *lettersA_ = [[[NSMutableArray alloc] init] autorelease];
    [lettersA_ addObject: @"a-"];
    [lettersA_ addObject: @"A-"];
    
    NSMutableArray *lettersBplus = [[[NSMutableArray alloc] init] autorelease];
    [lettersBplus addObject: @"b+"];
    [lettersBplus addObject: @"B+"];
    
    NSMutableArray *lettersB = [[[NSMutableArray alloc] init] autorelease];
    [lettersB addObject: @"b"];
    [lettersB addObject: @"B"];
    
    NSMutableArray *lettersB_ = [[[NSMutableArray alloc] init] autorelease];
    [lettersB_ addObject: @"b-"];
    [lettersB_ addObject: @"B-"];
    
    NSMutableArray *lettersCplus = [[[NSMutableArray alloc] init] autorelease];
    [lettersCplus addObject: @"c+"];
    [lettersCplus addObject: @"C+"];
    
    NSMutableArray *lettersC = [[[NSMutableArray alloc] init] autorelease];
    [lettersC addObject: @"c"];
    [lettersC addObject: @"C"];
    
    NSMutableArray *lettersC_ = [[[NSMutableArray alloc] init] autorelease];
    [lettersC_ addObject: @"c-"];
    [lettersC_ addObject: @"C-"];
    
    NSMutableArray *lettersDplus = [[[NSMutableArray alloc] init] autorelease];
    [lettersDplus addObject: @"d+"];
    [lettersDplus addObject: @"D+"];
    
    NSMutableArray *lettersD = [[[NSMutableArray alloc] init] autorelease];
    [lettersD addObject: @"d"];
    [lettersD addObject: @"D"];
    
    NSMutableArray *lettersD_ = [[[NSMutableArray alloc] init] autorelease];
    [lettersD_ addObject: @"d-"];
    [lettersD_ addObject: @"D-"];
    
    NSMutableArray *lettersF = [[[NSMutableArray alloc] init] autorelease];
    [lettersF addObject: @"f"];
    [lettersF addObject: @"F"];
    
    
    
    if([lettersA containsObject:grade1.text])
    {
        grades1 = 4.0;
    }
    if([lettersA containsObject:grade2.text])
    {
        grades2 = 4.0;
    }
    if([lettersA containsObject:grade3.text])
    {
        grades3 = 4.0;
    }
    if([lettersA containsObject:grade4.text])
    {
        grades4 = 4.0;
    }
    if([lettersA containsObject:grade5.text])
    {
        grades5 = 4.0;
    }
    if([lettersA containsObject:grade6.text])
    {
        grades6 = 4.0;
    }
    if([lettersA containsObject:grade7.text])
    {
        grades7 = 4.0;
    }
    if([lettersA containsObject:grade8.text])
    {
        grades8 = 4.0;
    }
    
    
    
    if([lettersA_ containsObject:grade1.text])
    {
        grades1 = 3.7;
    }
    if([lettersA_ containsObject:grade2.text])
    {
        grades2 = 3.7;
    }
    
    if([lettersA_ containsObject:grade3.text])
    {
        grades3 = 3.7;
    }
    
    if([lettersA_ containsObject:grade4.text])
    {
        grades4 = 3.7;
    }
    
    if([lettersA_ containsObject:grade5.text])
    {
        grades5 = 3.7;
    }
    
    if([lettersA_ containsObject:grade6.text])
    {
        grades6 = 3.7;
    }
    
    if([lettersA_ containsObject:grade7.text])
    {
        grades7 = 3.7;
    }
    
    if([lettersA_ containsObject:grade8.text])
    {
        grades8 = 3.7;
    }
    
    
    
    if([lettersBplus containsObject:grade1.text])
    {
        grades1 = 3.3;
    }
    
    if([lettersBplus containsObject:grade2.text])
    {
        grades2 = 3.3;
    }
    
    if([lettersBplus containsObject:grade3.text])
    {
        grades3 = 3.3;
    }
    
    if([lettersBplus containsObject:grade4.text])
    {
        grades4 = 3.3;
    }
    
    if([lettersBplus containsObject:grade5.text])
    {
        grades5 = 3.3;
    }
    
    if([lettersBplus containsObject:grade6.text])
    {
        grades6 = 3.3;
    }
    
    if([lettersBplus containsObject:grade7.text])
    {
        grades7 = 3.3;
    }
    
    if([lettersBplus containsObject:grade8.text])
    {
        grades8 = 3.3;
    }
    
    
    
    if([lettersB containsObject:grade1.text])
    {
        grades1 = 3.0;
    }
    
    if([lettersB containsObject:grade2.text])
    {
        grades2 = 3.0;
    }
    
    if([lettersB containsObject:grade3.text])
    {
        grades3 = 3.0;
    }
    
    if([lettersB containsObject:grade4.text])
    {
        grades4 = 3.0;
    }
    
    if([lettersB containsObject:grade5.text])
    {
        grades5 = 3.0;
    }
    
    if([lettersB containsObject:grade6.text])
    {
        grades6 = 3.0;
    }
    
    if([lettersB containsObject:grade7.text])
    {
        grades7 = 3.0;
    }
    
    if([lettersB containsObject:grade8.text])
    {
        grades8 = 3.0;
    }
    
    
    
    if([lettersB_ containsObject:grade1.text])
    {
        grades1 = 2.7;
    }
    
    if([lettersB_ containsObject:grade2.text])
    {
        grades2 = 2.7;
    }
    
    if([lettersB_ containsObject:grade3.text])
    {
        grades3 = 2.7;
    }
    
    if([lettersB_ containsObject:grade4.text])
    {
        grades4 = 2.7;
    }
    
    if([lettersB_ containsObject:grade5.text])
    {
        grades5 = 2.7;
    }
    
    if([lettersB_ containsObject:grade6.text])
    {
        grades6 = 2.7;
    }
    
    if([lettersB_ containsObject:grade7.text])
    {
        grades7 = 2.7;
    }
    
    if([lettersB_ containsObject:grade8.text])
    {
        grades8 = 2.7;
    }
    
    
    
    if([lettersCplus containsObject:grade1.text])
    {
        grades1 = 2.3;
    }
    
    if([lettersCplus containsObject:grade2.text])
    {
        grades2 = 2.3;
    }
    
    if([lettersCplus containsObject:grade3.text])
    {
        grades3 = 2.3;
    }
    
    if([lettersCplus containsObject:grade4.text])
    {
        grades4 = 2.3;
    }
    
    if([lettersCplus containsObject:grade5.text])
    {
        grades5 = 2.3;
    }
    
    if([lettersCplus containsObject:grade6.text])
    {
        grades6 = 2.3;
    }
    
    if([lettersCplus containsObject:grade7.text])
    {
        grades7 = 2.3;
    }
    
    if([lettersCplus containsObject:grade8.text])
    {
        grades8 = 2.3;
    }
    
    
    
    if([lettersC containsObject:grade1.text])
    {
        grades1 = 2.0;
    }
    
    if([lettersC containsObject:grade2.text])
    {
        grades2 = 2.0;
    }
    
    if([lettersC containsObject:grade3.text])
    {
        grades3 = 2.0;
    }
    
    if([lettersC containsObject:grade4.text])
    {
        grades4 = 2.0;
    }
    
    if([lettersC containsObject:grade5.text])
    {
        grades5 = 2.0;
    }
    
    if([lettersC containsObject:grade6.text])
    {
        grades6 = 2.0;
    }
    
    if([lettersC containsObject:grade7.text])
    {
        grades7 = 2.0;
    }
    
    if([lettersC containsObject:grade8.text])
    {
        grades8 = 2.0;
    }
    
    
    
    if([lettersC_ containsObject:grade1.text])
    {
        grades1 = 1.7;
    }
    
    if([lettersC_ containsObject:grade2.text])
    {
        grades2 = 1.7;
    }
    
    if([lettersC_ containsObject:grade3.text])
    {
        grades3 = 1.7;
    }
    
    if([lettersC_ containsObject:grade4.text])
    {
        grades4 = 1.7;
    }
    
    if([lettersC_ containsObject:grade5.text])
    {
        grades5 = 1.7;
    }
    
    if([lettersC_ containsObject:grade6.text])
    {
        grades6 = 1.7;
    }
    
    if([lettersC_ containsObject:grade7.text])
    {
        grades7 = 1.7;
    }
    
    if([lettersC_ containsObject:grade8.text])
    {
        grades8 = 1.7;
    }
    
    
    
    if([lettersDplus containsObject:grade1.text])
    {
        grades1 = 1.3;
    }
    
    if([lettersDplus containsObject:grade2.text])
    {
        grades2 = 1.3;
    }
    
    if([lettersDplus containsObject:grade3.text])
    {
        grades3 = 1.3;
    }
    
    if([lettersDplus containsObject:grade4.text])
    {
        grades4 = 1.3;
    }
    
    if([lettersDplus containsObject:grade5.text])
    {
        grades5 = 1.3;
    }
    
    if([lettersDplus containsObject:grade6.text])
    {
        grades6 = 1.3;
    }
    
    if([lettersDplus containsObject:grade7.text])
    {
        grades7 = 1.3;
    }
    
    if([lettersDplus containsObject:grade8.text])
    {
        grades8 = 1.3;
    }
    
    
    
    if([lettersD containsObject:grade1.text])
    {
        grades1 = 1.0;
    }
    
    if([lettersD containsObject:grade2.text])
    {
        grades2 = 1.0;
    }
    
    if([lettersD containsObject:grade3.text])
    {
        grades3 = 1.0;
    }
    
    if([lettersD containsObject:grade4.text])
    {
        grades4 = 1.0;
    }
    
    if([lettersD containsObject:grade5.text])
    {
        grades5 = 1.0;
    }
    
    if([lettersD containsObject:grade6.text])
    {
        grades6 = 1.0;
    }
    
    if([lettersD containsObject:grade7.text])
    {
        grades7 = 1.0;
    }
    
    if([lettersD containsObject:grade8.text])
    {
        grades8 = 1.0;
    }
    
    
    
    if([lettersD_ containsObject:grade1.text])
    {
        grades1 = 0.7;
    }
    
    if([lettersD_ containsObject:grade2.text])
    {
        grades2 = 0.7;
    }
    
    if([lettersD_ containsObject:grade3.text])
    {
        grades3 = 0.7;
    }
    
    if([lettersD_ containsObject:grade4.text])
    {
        grades4 = 0.7;
    }
    
    if([lettersD_ containsObject:grade5.text])
    {
        grades5 = 0.7;
    }
    
    if([lettersD_ containsObject:grade6.text])
    {
        grades6 = 0.7;
    }
    
    if([lettersD_ containsObject:grade7.text])
    {
        grades7 = 0.7;
    }
    
    if([lettersD_ containsObject:grade8.text])
    {
        grades8 = 0.7;
    }
    
    
    
    if([lettersF containsObject:grade1.text])
    {
        grades1 = 0.0;
    }
    
    if([lettersF containsObject:grade2.text])
    {
        grades2 = 0.0;
    }
    
    if([lettersF containsObject:grade3.text])
    {
        grades3 = 0.0;
    }
    
    if([lettersF containsObject:grade4.text])
    {
        grades4 = 0.0;
    }
    
    if([lettersF containsObject:grade5.text])
    {
        grades5 = 0.0;
    }
    
    if([lettersF containsObject:grade6.text])
    {
        grades6 = 0.0;
    }
    
    if([lettersF containsObject:grade7.text])
    {
        grades7 = 0.0;
    }
    
    if([lettersF containsObject:grade8.text])
    {
        grades8 = 0.0;
    }

    
    GPA = (grades1*credit1 + grades2*credit2 + grades3*credit3 + grades4*credit4 + grades5*credit5 + grades6*credit6 + grades7*credit7 + grades8*credit8)/(credit1 + credit2 + credit3 + credit4 + credit5 + credit6 + credit7 + credit8);
    
    //Text for GPA == nan
    if(GPA != GPA)
    {
        [loaded setText:[NSString stringWithFormat:@"Please enter data."]];
    }
    
    else
    {
    [loaded setText:[NSString stringWithFormat:@"Your GPA is %.2f",GPA]];
    }
}


// A seting page. Not yet implemented.
// Go to settings page
- (IBAction)settings:(id)sender
{

    SettingsPageViewController *viewController = [[SettingsPageViewController alloc] initWithNibName:nil bundle:nil];
    [self presentViewController:viewController animated:YES completion:NULL];
    
    
}


// Dismiss keyboard when touched off keyboard
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesBegan:withEvent:");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
}



@end
