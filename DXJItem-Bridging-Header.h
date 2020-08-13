//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import <CTMediator/CTMediator.h>

#if PODMTestA==1
#import <MTestA/MTestA-umbrella.h>
#import <MTestA/MTestA-Swift.h>
#endif

#if PODMTestB==1
#import <MTestB/MTestB-umbrella.h>
#import <MTestB/MTestB-Swift.h>
#endif

#if PODMTestC==1
#import <MTestC/MTestC-umbrella.h>
#import <MTestC/MTestC-Swift.h>
#endif
#import <MBasis/MBasis-umbrella.h>
#import <MBasis/MBasis-Swift.h>

