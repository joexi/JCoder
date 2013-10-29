JCoder
============
A lightweight framework for writing and reading object to/from local files.
A upgrade version of [JObjectCoder](https://github.com/joexi/JObjectCoder)


###Provide
* Serialize instance of custom class into local file.
* Deserialize a local file into instance.
* Contain reference relation.(One object as a property of different object. After the serialize and deserialize those two pointer still point one object) 
* Easy to use.

###Principle
* Property suupport NSString,NSNumber and value type only


###TODO


###Environment
 * iOS SDK 7.0
 * Xcode 5
 * ARC Mode
 

###API
* JCoderManager

```Objective-C
/**
 *	@brief	encode an object
 *
 *	@param 	object 	object
 *
 *	@return	coding key
 */
+ (NSString *)encode:(NSObject *)object;



/**
 *	@brief	decode object from key
 *
 *	@param 	key 	key
 *
 *	@return	object
 */
+ (NSObject *)decode:(NSString *)key;
```

* JEncoder

```Objective-C
/**
 *	@brief	serialize object into dictionary
 *
 *	@param 	object 	object for serializing
 *	@param 	setter 	handle object and dictionary info
 */
+ (void)serializeObject:(NSObject *)object handler:(JEncoderHandler)handler;
```

* JDecoder

```Objective-C
/**
 *	@brief	deserialize object from NSDictionary
 *
 *	@param 	dic 	dic info
 *	@param 	getter 	get dic with key
 *
 *	@return	object
 */
+ (NSObject *)objectWithDic:(NSDictionary *)dic handler:(JDecoderHandler)handler;
```


###Code Sample
```Obejctive-C
- (void)test
{
    A *a = [[A alloc] init];
    a.identifier = 5;
    NSString *key = [JCoderManager encode:a];
    a = (A *)[JCoderManager decode:key];
    NSLog(@"%d",a.identifier);
    NSLog(@"%@,%@",a.b,a.b2);
}
```


