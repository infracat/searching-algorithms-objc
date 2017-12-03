#import "LinearSearch.h"

@implementation LinearSearch {
    NSMutableArray * array;
}

- (instancetype) initWithSize: (int) size {
    self = [super init];
    
    if (self) {
        self->array = [[NSMutableArray alloc] init];
        
        for (int index = 0; index <= size; ++index) {
            [self->array addObject: [NSNumber numberWithInt: arc4random_uniform(10)]];
        }
    }
    
    return self;
}

- (void) printArray {
    printf("Array: ");
    
    for (NSNumber *number in array) {
        printf("%i ", number.intValue);
    }
    
    printf("\n");
}

- (int) search: (int) element {
    int index = -1;
    
    for (int i = 0; i < array.count; ++i) {
        if ([array objectAtIndex:i] == [NSNumber numberWithInt: element]) {
            index = i;
            break;
        }
    }
    
    return index;
}

@end
