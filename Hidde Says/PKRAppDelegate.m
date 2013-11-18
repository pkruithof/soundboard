//
//  PKRAppDelegate.m
//  Hidde Says
//
//  Created by Peter Kruithof on 04-09-13.
//  Copyright (c) 2013 Peter Kruithof. All rights reserved.
//

#import "PKRAppDelegate.h"

@implementation PKRAppDelegate

@synthesize popoverController = _popoverController;
@synthesize popover = _popover;
@synthesize statusItem = _statusItem;
@synthesize statusItemButton = _statusItemButton;

- (void)applicationDidBecomeActive:(NSNotification *)notification;
{
//    NSLog(@"did become active: %@", self.statusItem.view);
}

- (void) awakeFromNib {
    self.statusItemButton = [[NSButton alloc] initWithFrame:NSMakeRect(0,0,83,22)];
    self.statusItemButton.image = [NSImage imageNamed:@"statusbar_icon.png"];
    self.statusItemButton.bordered = NO;
    [self.statusItemButton setTarget:self];
    [self.statusItemButton setAction:@selector(clickStatusBar:)];
    
    self.statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSSquareStatusItemLength];
    self.statusItem.highlightMode = YES;
    self.statusItem.view = self.statusItemButton;
}

- (void)clickStatusBar:(id)sender
{
    [self.popover showRelativeToRect:[sender bounds] ofView:sender preferredEdge:NSMinYEdge];
}

@end
