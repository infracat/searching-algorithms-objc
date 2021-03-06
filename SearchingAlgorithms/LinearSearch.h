#import <Foundation/Foundation.h>
#import "Search.h"

@interface LinearSearch : Search

- (instancetype) initWithSize: (int) size;
- (int) search: (int) element;
+ (int) recursiveSearch: (int) element inArray: (NSArray *) array;

@end
