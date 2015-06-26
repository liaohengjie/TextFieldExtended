# TextFieldExtended

*`

*  YES只能输入数字

*@property (nonatomic ,assign) BOOL isNumber;

*  isNumber为YES时,友情提示是否再需要限制为手机号11位

*@property (nonatomic ,assign) BOOL isPhoneNumberWordLimit;

*  正则判断手机号码地址格式
*  如果需要判断textField的text是否是手机号调用这个方法;


*- (BOOL)isValidPhone:(NSString*)number;




*  仅仅字数限制  中文2个字节   英文1个字节

*@property (nonatomic ,assign) BOOL isWordLimit;

*  isWordLimit为YES时,中文cnInt默认8个字

*@property (nonatomic ,assign) int cnInt;

*  isWordLimit为YES时,英文enInt默认12个字

*@property (nonatomic ,assign) int enInt;




*  YES过滤掉特殊字符(PS:过滤中文输入中的非法特殊字符)  默认NO什么都不发生

*@property (nonatomic ,assign) BOOL isSpecialCharacters;

*  YES不允许输入中文和特殊符号,只允许输入字母和数字  默认NO什么都不发生

*@property (nonatomic ,assign) BOOL isNotAllowedToChinese;
`