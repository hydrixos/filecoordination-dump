//
//  main.m
//  filecoordination-dump
//
//  Created by Friedrich Gräter on 07.11.16.
//  Copyright © 2016 Friedrich Graeter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileCoordinator (Debugging)

+ (void)_getDebugInfoWithCompletionHandler:(void(^)(id data))handler;

@end

int main(int argc, const char * argv[]) {
	@autoreleasepool {
		dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);

		if (getuid() != 0) {
			NSLog(@"This tool must be executed as root.");
			return -1;
		}
		
		[NSFileCoordinator _getDebugInfoWithCompletionHandler:^(id data) {
			NSLog(@"%@", data);
			dispatch_semaphore_signal(semaphore);
		}];
		
		dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
	}
	
	return 0;
}
