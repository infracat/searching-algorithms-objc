#import <Foundation/Foundation.h>
#import "LinearSearch.h"
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int elementToSearch = 4;
        printf("Searching for element %i.\n", elementToSearch);
        
        printf("Linear search:\n");
        LinearSearch *linearSearch = [[LinearSearch alloc] initWithSize: 15];
        [linearSearch printArray];
        
        int foundElementIndex = [linearSearch search: elementToSearch];
        printf("Element is at position %i.\n", foundElementIndex);
        
        printf("Recursive linear search:\n");
        [linearSearch printArray];
        
        foundElementIndex = [LinearSearch recursiveSearch: elementToSearch inArray: linearSearch.array];
        printf("Element is at position %i.\n", foundElementIndex);
        
        printf("Binary search:\n");
        BinarySearch *binarySearch = [[BinarySearch alloc] initWithSize: 15];
        [binarySearch printArray];
        
        foundElementIndex = [binarySearch search: elementToSearch];
        printf("Element is at position %i.\n", foundElementIndex);
    }
    
    return 0;
}
