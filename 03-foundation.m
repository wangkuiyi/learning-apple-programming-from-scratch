// clang 03-foundation.m -framework Foundation -o /tmp/a && /tmp/a
#import <Foundation/Foundation.h>
int main() {
  id pool = [NSAutoreleasePool new];
  NSLog(@"%@", [[NSProcessInfo processInfo] arguments]);
  [pool drain];
  return 0;
}
