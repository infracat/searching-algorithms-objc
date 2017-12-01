#import <Foundation/Foundation.h>
#import "LinearSearch.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int elementToSearch = 4;
        printf("Searching for element %i.\n", elementToSearch);
        
        printf("Linear search:\n");
        
        LinearSearch *search = [LinearSearch initWithSize: 15];
        int foundElementIndex = [search search: elementToSearch];
        
        [search printArray];
        printf("Element is at position %i.\n", foundElementIndex);
    }
    
    return 0;
}
