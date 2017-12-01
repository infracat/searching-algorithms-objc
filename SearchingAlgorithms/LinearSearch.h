#import <Foundation/Foundation.h>

@interface LinearSearch : NSObject

@property (nonatomic) NSMutableArray *array;

+ (id) initWithSize: (int) size;

- (void) printArray;
- (int) search: (int) element;

@end
