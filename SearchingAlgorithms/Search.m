#import "Search.h"

@implementation Search

- (void) printArray {
    printf("Array: ");
    
    for (NSNumber *number in self.array) {
        printf("%i ", number.intValue);
    }
    
    printf("\n");
}

@end
