// clang 03-empty-cocoa.m -framework Cocoa -o /tmp/a && /tmp/a
//
// Note: [[NSApplication sharedApplication] run] will never complete,
// so we have to kill this app.
#import <Cocoa/Cocoa.h>
int main() {
  [[NSApplication sharedApplication] run];
  return 0;
}
