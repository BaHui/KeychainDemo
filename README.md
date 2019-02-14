## SAMKeychain Using Demo

### Using
```// ======= 存储数据 =======
BOOL isSucceed1 = [SAMKeychain setPassword:@"111111" forService:@"QBH1" account:@"qiaobahui1"];
NSLog(@"isSucceed : %@", isSucceed1 ? @"YES" : @"NO"); // YES

BOOL isSucceed2 = [SAMKeychain setPassword:@"222222" forService:@"QBH2" account:@"qiaobahui2"];
NSLog(@"isSucceed : %@", isSucceed2 ? @"YES" : @"NO"); // YES

// ======= 获取数据 =======
NSString *password1 = [SAMKeychain passwordForService:@"QBH1" account:@"qiaobahui1"];
NSLog(@"password1: %@", password1); // 111111

NSString *password2 = [SAMKeychain passwordForService:@"QBH2" account:@"qiaobahui2"];
NSLog(@"password2: %@", password2); // 222222

// ======= 获取所有账户 =======
NSArray *allAccounts = [SAMKeychain allAccounts];
NSLog(@"allAccounts: %@", allAccounts);

// ======= 获取指定账户 =======
NSArray *accountsForService = [SAMKeychain accountsForService:@"QBH1"];
NSLog(@"accountsForService`QBH1`: %@", accountsForService);

```
