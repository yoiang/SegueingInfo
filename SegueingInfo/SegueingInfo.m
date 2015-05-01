//
//  SegueingInfo.m
//  SegueingInfo
//
//  Created by Ian on 8/17/14.
//  Copyright (c) 2014 Adorkable. All rights reserved.
//

#import "SegueingInfo.h"

#if TARGET_OS_IPHONE
@implementation UIViewController (SegueingInfo)
#else
@implementation NSViewController (SegueingInfo)
#endif

+ (void)prepareDestinationViewControllerForSegue:(StoryboardSegueClass *)segue withInfo:(id)info
{
#if TARGET_OS_IPHONE
    if ( [segue.destinationViewController conformsToProtocol:@protocol(SegueingInfoProtocol) ] )
#else
    if ( [segue.destinationController conformsToProtocol:@protocol(SegueingInfoProtocol) ] )
#endif
    {
#if TARGET_OS_IPHONE
        id<SegueingInfoProtocol> segueingViewController = segue.destinationViewController;
#else
        id<SegueingInfoProtocol> segueingViewController = segue.destinationController;
#endif
        if ( [segueingViewController respondsToSelector:@selector(destinationPrepareForSegue:info:) ] )
        {
            [segueingViewController destinationPrepareForSegue:segue info:info];
        }
    }
}

@end

@implementation SegueingInfoViewController

- (void)prepareForSegue:(StoryboardSegueClass *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];
    
    [SegueingInfoViewController prepareDestinationViewControllerForSegue:segue withInfo:sender];
}

@end