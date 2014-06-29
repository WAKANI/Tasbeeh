//
//  ASViewController.m
//  Tasbeeh
//
//  Created by Hassan on 6/29/14.
//  Copyright (c) 2014 Anfasoft. All rights reserved.
//

#import "ASViewController.h"

@interface ASViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lblDua;
@property (weak, nonatomic) IBOutlet UILabel *lblCounter;
@property (weak, nonatomic) IBOutlet UIButton *btnStart;
@property (weak, nonatomic) IBOutlet UITextView *txtDua;
@property (nonatomic) int counter;
@property (nonatomic) NSArray *duas;
@property (nonatomic) NSArray *duaColors;
@property (nonatomic) int duaIndex;

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.lblDua.hidden = YES;
    self.lblCounter.hidden = YES;
    self.duas = @[@"subhana allah",@"alhamdulillah",@"allahu akbar",@"la ilaha illa Allah"];
    self.duaColors = @[[UIColor greenColor],[UIColor yellowColor],[UIColor greenColor],[UIColor orangeColor]];
    self.duaIndex = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)start:(id)sender {
    self.lblDua.hidden = NO;
    self.lblCounter.hidden = NO;
    self.txtDua.hidden = YES;
    self.counter = 0;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    self.counter++;
    if (self.counter==11) {
        self.counter = 0;
        self.duaIndex++;
    }
    if (self.duaIndex==3){
        self.lblCounter.hidden = YES;
        self.lblDua.hidden = YES;
        self.txtDua.hidden = NO;
        self.txtDua.text = self.duas[self.duaIndex];
    }
    self.lblCounter.text = [NSString stringWithFormat:@"%d",self.counter];
    self.lblDua.text = self.duas[self.duaIndex];
    self.view.backgroundColor = self.duaColors[self.duaIndex];    
}

@end
