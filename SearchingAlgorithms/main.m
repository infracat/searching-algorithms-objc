#import <Foundation/Foundation.h>
#import "LinearSearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int elementToSearch = 4;
        printf("Searching for element %i.\n", elementToSearch);
        
        printf("Linear search:\n");
        LinearSearch *search = [[LinearSearch alloc] initWithSize: 15];
        [search printArray];
        
        int foundElementIndex = [search search: elementToSearch];
        printf("Element is at position %i.\n", foundElementIndex);
        
        printf("Recursive linear search:\n");
        [search printArray];
        
        foundElementIndex = [LinearSearch recursiveSearch: elementToSearch inArray: search.array];
        printf("Element is at position %i.\n", foundElementIndex);
    }
    
    return 0;
}
