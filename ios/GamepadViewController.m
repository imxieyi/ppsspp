//
//  GamepadViewController.m
//  native
//
//  Created by xieyi on 2019/6/11.
//

#import "GamepadViewController.h"
#import "ViewController.h"

@interface GamepadViewController ()

@end

@implementation GamepadViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	sharedGamepadViewController = self;
	// Do any additional setup after loading the view.
	GLKView *glkView = (GLKView *) [self view];
	[glkView setContext:[sharedViewController context]];
	glkView.drawableDepthFormat = GLKViewDrawableDepthFormat24;
}

- (void)bindDefaultFBO
{
	[(GLKView*)self.view bindDrawable];
}

@end

void bindControllerFBO()
{
	[sharedGamepadViewController bindDefaultFBO];
}
