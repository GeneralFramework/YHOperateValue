# YHOperateValue
单例运算符类，支持 加减乘除，支持是否显示浮点。 


use 
使用方式


    YHOperateModel * model = [YHOperateModel shared];
    model.isResultFloat = YES;  //是否显示浮动数。
    NSLog(@"%@", [model getResultOperate:@"*" NumberFirst:@"111" NumberSecond:@"222"]);
