//
//  ViewController.m
//  project1
//
//  Created by Анна  Зелинская on 16.10.16.
//  Copyright © 2016 Анна  Зелинская. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doCalculate:(id)sender
{
    
    outLabel.text = @" ";
    
    // Проверка на числовое значение
    
    BOOL key = NO;
    NSString *count1 = inField.text;
    NSScanner *scan = [NSScanner scannerWithString:count1];
    
    if (!(key = [scan scanInt:NULL] && [scan isAtEnd]))
    {
        outLabel.text = @"Вы ввели недопустимое значение! \nЗначение суммы должно быть положительным целым числом. \nПовторите ввод.";
    }
    
    // Проверка на положительность
    
    else
    {
        NSInteger count = [count1  intValue];
        if (count <= 0)
        {
            outLabel.text= @"Вы ввели недопустимое значение! \nЗначение суммы должно быть положительным целым числом. \nПовторите ввод.";
        }
        
        else
        {
            //Разложение числа
            
            int i = 0;
            if (count >= 10)
            {
                while (count >= 10)
                    
                {
                    i++;
                    count -= 10;
                }
                
                outLabel.text = [outLabel.text stringByAppendingString:[NSString stringWithFormat:@"\n Количество монет номиналом 10р. : %d", i]];
                
            }
            
            i = 0;
            if (count >= 5)
            {
                while (count >= 5)
                    
                {
                    i++;
                    count -= 5;
                }
                
                outLabel.text = [outLabel.text stringByAppendingString:[NSString stringWithFormat:@"\n Количество монет номиналом 5р. : %d", i]];
            }
            
            i = 0;
            if (count >= 2)
            {
                while (count >= 2)
                    
                {
                    i++;
                    count -= 2;
                }
                
                outLabel.text = [outLabel.text stringByAppendingString:[NSString stringWithFormat:@"\n Количество монет номиналом 2р. : %d", i]];
                
            }
            
            i = 0;
            if (count >= 1)
            {
                while (count >= 1)
                    
                {
                    i++;
                    count -= 1;
                }
                
                outLabel.text = [outLabel.text stringByAppendingString:[NSString stringWithFormat:@"\n Количество монет номиналом 1р. : %d", i]];
            }
        }
    }
    
}

@end
