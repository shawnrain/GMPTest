//
//  ViewController.m
//  GMPTest
//
//  Created by feinimoshu on 2019/12/2.
//  Copyright © 2019 feinimoshu. All rights reserved.
//

#import "ViewController.h"
#import "gmpxx.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
+ (void)gmpTest{
        mpz_t z_i,z_s;
        __gmpz_init_set_str(z_i, "20000009", 10);
//        __gmpz_init_set_str(z_s, "100010", 10);
        __gmpz_pow_ui(z_s, z_i, 20000);
        gmp_printf("%Zd\n", z_s);
    
    
    mpz_t mod_a,mod_b,mod_c;
    
    __gmpz_init_set_str(mod_b, "78", 10);
    __gmpz_init_set_str(mod_c, "20", 10);
    __gmpz_mod(mod_a, mod_b, mod_c);
    
    gmp_printf("%Zd\n", mod_a);
}


@end
