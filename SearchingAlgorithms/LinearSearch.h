#import <Foundation/Foundation.h>

@interface LinearSearch : NSObject

@property (nonatomic) NSMutableArray *array;

- (instancetype) initWithSize: (int) size;
- (void) printArray;
- (int) search: (int) element;

+ (int) recursiveSearch: (int) element inArray: (NSArray *) array;

@end
