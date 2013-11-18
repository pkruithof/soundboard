//
//  PKRAppDelegate.h
//  Hidde Says
//
//  Created by Peter Kruithof on 04-09-13.
//  Copyright (c) 2013 Peter Kruithof. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PKRAppDelegate : NSObject <NSApplicationDelegate>

@property (strong) IBOutlet NSViewController *popoverController;
@property (strong) IBOutlet NSPopover *popover;
@property (strong) NSStatusItem *statusItem;
@property (strong) NSButton *statusItemButton;

- (void)clickStatusBar:(id)sender;

@end
