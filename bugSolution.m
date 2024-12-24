To break the retain cycle, use a `weak` reference in one of the properties.  A `weak` reference doesn't increment the retain count of the referenced object.  The corrected code would look like this:

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) AnotherClass *anotherObject;
@end

@interface AnotherClass : NSObject
@property (weak, nonatomic) MyClass *myObject; // Changed to weak
@end

@implementation MyClass
// ...
@end

@implementation AnotherClass
// ...
@end
```

By making `myObject` a `weak` reference, the retain cycle is broken. When the `MyClass` instance is no longer referenced elsewhere, it will be deallocated, and the `weak` reference in `AnotherClass` will automatically become `nil`.