// clang 02-nsobject.m -framework Foundation -o /tmp/a && /tmp/a
// echo $?
#import <Foundation/Foundation.h>
int main() { return [NSObject class] == nil; }
