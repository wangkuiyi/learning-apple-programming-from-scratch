// clang 02-nsobject.m -framework Foundation -o /tmp/a && /tmp/a
#import <Foundation/Foundation.h>
int main() {
  // Every object in Apple/Objecitve-C is derived from NSObject, and,
  // according to https://stackoverflow.com/a/3659218/724872, NSObject
  // has a method autorelease.  When we create an object in the heap,
  // the construction process calls autorelease, which inserts self
  // into the autorelease pool.  At the end of the function main, we
  // are supposed to call autorelease pool's drain method, which
  // deallocate all objects registered in this pool.
  if ([[NSObject class] respondsToSelector:@selector(autorelease)]) {
    NSLog(@"Yes, NSObject has the method autorelease");
  }
}
