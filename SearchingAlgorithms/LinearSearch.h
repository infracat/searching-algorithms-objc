#import <Foundation/Foundation.h>

@interface LinearSearch : NSObject

- (instancetype) initWithSize: (int) size;
- (void) printArray;
- (int) search: (int) element;

@end
