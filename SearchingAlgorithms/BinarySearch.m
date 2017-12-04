#import "BinarySearch.h"

@implementation BinarySearch

- (instancetype) initWithSize: (int) size {
    self = [super init];
    
    if (self) {
        NSMutableArray *mutableArray = [[NSMutableArray alloc] init];
        
        for (int index = 0; index < size; ++index) {
            [mutableArray addObject: [NSNumber numberWithInt: arc4random_uniform(10)]];
        }
        
        self.array = [mutableArray sortedArrayUsingSelector: @selector(compare:)];
    }
    
    return self;
}

- (int) search: (int) element {
    return [self search: element inArray: self.array];
}

- (int) search: (int) element inArray: (NSArray *) array {
    if ([array count] == 0) {
        return -1;
    }
    
    if ([array count] == 1) {
        if ([[array objectAtIndex: 0] intValue] == element) {
            return 0;
        }
        else {
            return -1;
        }
    }
    
    int elementIndex = -1;
    int middleIndex = (int) [array count] / 2 - 1;
    
    if ([[array objectAtIndex: middleIndex] intValue] == element) {
        elementIndex = middleIndex;
    }
    else if ([[array objectAtIndex: middleIndex] intValue] > element) {
        NSRange range = NSMakeRange(0, middleIndex + 1);
        elementIndex = [self search: element inArray: [array subarrayWithRange: range]];
    }
    else {
        NSRange range = NSMakeRange(middleIndex + 1, [array count] / 2);
        int index = [self search: element inArray: [array subarrayWithRange: range]];
        elementIndex = index == -1 ? -1 : middleIndex + index + 1;
    }
    
    return elementIndex;
}

@end
