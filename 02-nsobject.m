// clang 02-nsobject.m -framework Foundation -o /tmp/a && /tmp/a
#import <Foundation/Foundation.h>
int main() {
  if ([[NSObject class] respondsToSelector:@selector(autorelease)]) {
    NSLog(@"Yes, NSObject has the method autorelease");
  }
}
