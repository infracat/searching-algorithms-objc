#import "LinearSearch.h"

@implementation LinearSearch

- (instancetype) initWithSize: (int) size {
    self = [super init];
    
    if (self) {
        self.array = [[NSMutableArray alloc] init];
        
        for (int index = 0; index <= size; ++index) {
            [self.array addObject: [NSNumber numberWithInt: arc4random_uniform(10)]];
        }
    }
    
    return self;
}

- (void) printArray {
    printf("Array: ");
    
    for (NSNumber *number in _array) {
        printf("%i ", number.intValue);
    }
    
    printf("\n");
}

- (int) search: (int) element {
    int index = -1;
    
    for (int i = 0; i < _array.count; ++i) {
        
        if ([[_array objectAtIndex:i] isEqualToNumber: [NSNumber numberWithInt: element]]) {
            index = i;
            break;
        }
    }
    
    return index;
}

+ (int) recursiveSearch: (int) element inArray: (NSArray *) array {
    if ([[array objectAtIndex: 0] isEqualToNumber: [NSNumber numberWithInt: element]]) {
        return 0;
    }
    else
    {
        NSRange range = NSMakeRange(1, [array count] - 1);
        NSArray *subArray = [array subarrayWithRange: range];
        
        if ([subArray count] > 0) {
            int index = [self recursiveSearch: element inArray: subArray];
            return index < 0 ? -1 : index + 1;
        }
        else {
            return -1;
        }
    }
}

@end
