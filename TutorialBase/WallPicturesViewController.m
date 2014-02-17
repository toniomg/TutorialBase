//
//  WallPicturesViewController.m
//  TutorialBase
//
//  Created by Antonio MG on 6/23/12.
//  Copyright (c) 2012 AMG. All rights reserved.
//

#import "WallPicturesViewController.h"
#import "UploadImageViewController.h"

@interface WallPicturesViewController () {

}

@property (nonatomic, retain) NSArray *wallObjectsArray;
@property (nonatomic, retain) UIActivityIndicatorView *activityIndicator;


-(void)getWallImages;
-(void)loadWallViews;
-(void)showErrorView:errorString;

@end

@implementation WallPicturesViewController

@synthesize wallObjectsArray = _wallObjectsArray;
@synthesize wallScroll = _wallScroll;
@synthesize activityIndicator = _loadingSpinner;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    self.wallScroll = nil;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    //Clean the scroll view
    for (id viewToRemove in [self.wallScroll subviews]){
        if ([viewToRemove isMemberOfClass:[UIView class]])
            [viewToRemove removeFromSuperview];
    }

    //Reload the wall
    [self getWallImages];
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


#pragma mark Wall Load
//Load the images on the wall
-(void)loadWallViews
{
    //TODO: Put the wall objects in the scroll view
    
}



#pragma mark Receive Wall Objects

//Get the list of images
-(void)getWallImages
{
    //TODO: Get the wall objects from the server
}


#pragma mark IB Actions


-(IBAction)logoutPressed:(id)sender
{
    //TODO
    //If logout succesful:
//    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController popToRootViewControllerAnimated:YES];
}



#pragma mark Error Alert

-(void)showErrorView:(NSString *)errorMsg{
    
    UIAlertView *errorAlertView = [[UIAlertView alloc] initWithTitle:@"Error" message:errorMsg delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [errorAlertView show];
}


@end
