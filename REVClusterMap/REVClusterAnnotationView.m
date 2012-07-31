//
//  
//    ___  _____   ______  __ _   _________ 
//   / _ \/ __/ | / / __ \/ /| | / / __/ _ \
//  / , _/ _/ | |/ / /_/ / /_| |/ / _// , _/
// /_/|_/___/ |___/\____/____/___/___/_/|_| 
//
//  Created by Bart Claessens. bart (at) revolver . be
//

#import "REVClusterAnnotationView.h"


@implementation REVClusterAnnotationView

@synthesize coordinate;

- (id) initWithAnnotation:(id<MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    if ( self )
    {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0, -2, 33, 33)];
        [self addSubview:label];
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:12];
        label.textAlignment = UITextAlignmentCenter;
        label.shadowColor = [UIColor colorWithRed:0.f green:0.f blue:0.f alpha:0.75f];
        label.shadowOffset = CGSizeMake(-0.5f, -0.5f);
    }
    return self;
}

- (void) setClusterText:(NSString *)text
{
    label.text = text;
}

@end
