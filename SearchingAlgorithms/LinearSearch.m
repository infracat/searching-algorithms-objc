#import "LinearSearch.h"

@implementation LinearSearch

@synthesize array;

+ (id) initWithSize: (int) size {
    LinearSearch *search = [[LinearSearch alloc] init];
    search.array = [[NSMutableArray alloc] init];
    
    for (int index = 0; index <= size; ++index) {
        [search.array addObject: [NSNumber numberWithInteger: arc4random_uniform(10)]];
    }
    
    return search;
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
        if ([array objectAtIndex:i] == [NSNumber numberWithInteger: element]) {
            index = i;
            break;
        }
    }
    
    return index;
}

@end
