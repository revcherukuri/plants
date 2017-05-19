//
//  ViewController.m
//  Plants
//
//  Created by Revanth Cherukuri on 5/7/17.
//  Copyright © 2017 Revanth Cherukuri. All rights reserved.
//NEEDLY,POINTY,SHARP TIPS, NARROW TOWARDS TIPS

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startButtonClicked:(id)sender {
    [self askUser:@"Leaf Type?" withAction1:@"Needly / Pointy" withAction2:@"Ordinary" withAction3:nil withAction4:nil];
};

- (void) optionSelected:(NSString *)option {
    NSLog(@"Selected option is: %@", option);
    _plantDetails.text = [_plantDetails.text stringByAppendingString:option];
    _plantDetails.text = [_plantDetails.text stringByAppendingString:@"->"];
    
    if ([option caseInsensitiveCompare:@"Needly / Pointy"] == NSOrderedSame) {
        [self askUser:@"Bundle Type" withAction1:@"Bundled" withAction2:@"Not Bundled" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Ordinary"] == NSOrderedSame) {
        [self askUser:@"Leaflets" withAction1:@"Leaflets" withAction2:@"Not Leaflets" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Bundled"] == NSOrderedSame) {
        [self askUser:@"Needle count" withAction1:@"less than 6" withAction2:@"more than 6" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"less than 6"] == NSOrderedSame) {
        [self askUser:@"The plant is pine  How many needles per bunch?" withAction1:@"five" withAction2:@"three" withAction3:@"two" withAction4:@"four"];
    }
    else if ([option caseInsensitiveCompare:@"five"] == NSOrderedSame) {
        [self askUser:@"Individual needle length" withAction1:@"Greater than 1 to .5 inches" withAction2:@"less than 1 to .5 inches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"less than 1 to .5 inches"] == NSOrderedSame) {
        _plantName.text = @"Foxtail Pine";
    }
    else if ([option caseInsensitiveCompare:@"Greater than 1 to .5 inches"] == NSOrderedSame) {
        [self askUser:@"Individual needle length" withAction1:@"Greater than or equal to 7 inches" withAction2:@"less than 7 inches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Greater than or equal to 7 inches"] == NSOrderedSame) {
        _plantName.text = @"Torrey Pine";
    }
    else if ([option caseInsensitiveCompare:@"less than 7 inches"] == NSOrderedSame) {
        [self askUser:@"Are there cones on the ground, or are they round and still on the tree?" withAction1:@"On the ground" withAction2:@"Round and still on tree" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Round and still on tree"] == NSOrderedSame) {
        _plantName.text = @"Whitebark Pine";
    }
    else if ([option caseInsensitiveCompare:@"On the ground"] == NSOrderedSame) {
        [self askUser:@"How big are the cones?" withAction1:@"Greater than or equal to 1 foot" withAction2:@"Less than one foot" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Greater than or equal to 1 foot"] == NSOrderedSame) {
        _plantName.text = @"Sugar Pine";
    }
    else if ([option caseInsensitiveCompare:@"Less than one foot"] == NSOrderedSame) {
        [self askUser:@"Cone texture" withAction1:@"Thin and scaly" withAction2:@"Thick towards the tips" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Thin and scaly"] == NSOrderedSame) {
        _plantName.text = @"Western White Pine";
    }
    else if ([option caseInsensitiveCompare:@"Thick towards the tips"] == NSOrderedSame) {
        _plantName.text = @"Limber Pine";
    }
    else if ([option caseInsensitiveCompare:@"four"] == NSOrderedSame) {
        _plantName.text = @"Parry Pinion";
    }
    else if ([option caseInsensitiveCompare:@"Not Bundled"] == NSOrderedSame) {
        [self askUser:@"Tree texture  Are there round scars, bark blisters, and cones on the tree?" withAction1:@"There are scars and blisters on the tree" withAction2:@"The tree doesn't have scars and blisters" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"There are scars and blisters on the tree"] == NSOrderedSame) {
        [self askUser:@"The tree is a fir  Needle tips:" withAction1:@"Sharp" withAction2:@"Blunt" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Sharp"] == NSOrderedSame) {
        _plantName.text = @"Santa Lucia Fir, Bristle Cone Fir";
    }
    else if ([option caseInsensitiveCompare:@"The tree doesn't have scars and blisters"] == NSOrderedSame) {
        [self askUser:@"The tree is not a fir  If there are older twigs on the ground with stubby pegs, it is a spruce  Twig shape:" withAction1:@"Can be twirled between index finger and thumb" withAction2:@"Too flat to be twirled between index finger and thumb" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Can be twirled between index finger and thumb"] == NSOrderedSame) {
        [self askUser:@"Twig length" withAction1:@"longer than 1 inch" withAction2:@"Less than or equal to 1 inch" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"longer than 1 inch"] == NSOrderedSame) {
        _plantName.text = @"Single Leaf Pinyon";
    }
    else if ([option caseInsensitiveCompare:@"Less than or equal to 1 inch"] == NSOrderedSame) {
        _plantName.text = @"Mountain Hemlock";
    }
    else if ([option caseInsensitiveCompare:@"Too flat to be twirled between index finger and thumb"] == NSOrderedSame) {
        [self askUser:@"Ends of twigs" withAction1:@"pointed tips" withAction2:@"rounded tips" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"pointed tips"] == NSOrderedSame) {
        [self askUser:@"Needle points are" withAction1:@"sharp and spiney" withAction2:@"somewhat blunt" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"sharp and spiney"] == NSOrderedSame) {
        _plantName.text = @"California Nutmeg";
    }
    else if ([option caseInsensitiveCompare:@"somewhat blunt"] == NSOrderedSame) {
        [self askUser:@"Top of needles are" withAction1:@"Ridged" withAction2:@"Grooved" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Ridged"] == NSOrderedSame) {
        _plantName.text = @"Pacific yew";
    }
    else if ([option caseInsensitiveCompare:@"Grooved"] == NSOrderedSame) {
        _plantName.text = @"Redwood";
    }
    else if ([option caseInsensitiveCompare:@"Blunt"] == NSOrderedSame) {
        [self askUser:@"Needle color and texture" withAction1:@"Topside of needle is dark green and shiny" withAction2:@"Needle has a white band running along topside" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Needle has a white band running along topside"] == NSOrderedSame) {
        _plantName.text = @"White Fir";
    }
    else if ([option caseInsensitiveCompare:@"Topside of needle is dark green and shiny"] == NSOrderedSame) {
        [self askUser:@"Direction the top needles on lower branches are pointing" withAction1:@"Pointing out to side" withAction2:@"Pointing upward or towards end of twig, and foliage underneath is silvery" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Pointing upward or towards end of twig, and foliage underneath is silvery"] == NSOrderedSame) {
        _plantName.text = @"Pacific Silver Fir";
    }
    else if ([option caseInsensitiveCompare:@"Pointing out to side"] == NSOrderedSame) {
        _plantName.text = @"Grand Fir";
    }
    else if ([option caseInsensitiveCompare:@"two"] == NSOrderedSame) {
        [self askUser:@"Needle length" withAction1:@"3-6 inches" withAction2:@"Shorter, and needles are twisted as well" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"3-6 inches"] == NSOrderedSame) {
        _plantName.text = @"Bishop Pine";
    }
    else if ([option caseInsensitiveCompare:@"Shorter, and needles are twisted as well"] == NSOrderedSame) {
        [self askUser:@"The entire tree" withAction1:@"Is small,shrubby,and grows near sea level" withAction2:@"Is larger, grows inland, 3,000 feet above sea level" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Is small,shrubby,and grows near sea level"] == NSOrderedSame) {
        _plantName.text = @"Shore/Beach Pine";
    }
    else if ([option caseInsensitiveCompare:@"Is larger, grows inland, 3,000 feet above sea level"] == NSOrderedSame) {
        _plantName.text = @"Lodgepole/Tamrac Pine";
    }
    else if ([option caseInsensitiveCompare:@"rounded tips"] == NSOrderedSame) {
        [self askUser:@"Needle length" withAction1:@"Longer than 1/2 an inch" withAction2:@"About 1/2 an inch" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Longer than 1/2 an inch"] == NSOrderedSame) {
        [self askUser:@"Cone length" withAction1:@"Over four inches" withAction2:@"Less than four inches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Over four inches"] == NSOrderedSame) {
        _plantName.text = @"Bigcone Douglas-Fir";
    }
    else if ([option caseInsensitiveCompare:@"Less than four inches"] == NSOrderedSame) {
        _plantName.text = @"Douglas-Fir";
    }
    else if ([option caseInsensitiveCompare:@"About 1/2 an inch"] == NSOrderedSame) {
        _plantName.text = @"Western Hemlock";
    }
    else if ([option caseInsensitiveCompare:@"three"] == NSOrderedSame) {
        [self askUser:@"Outermost twigs' thickness" withAction1:@"thicker than a wood pencil" withAction2:@"thinner than a wood pencil" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"thicker than a wood pencil"] == NSOrderedSame) {
        [self askUser:@"cones and branches" withAction1:@"lower branches are long, curved upward, and have black bark. Cones look dangerous" withAction2:@"lower branches are shorter, have lighter bark, cones look safer" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"lower branches are long, curved upward, and have black bark. Cones look dangerous"] == NSOrderedSame) {
        _plantName.text = @"Coulter/Bigcone Pine";
    }
    else if ([option caseInsensitiveCompare:@"lower branches are shorter, have lighter bark, cones look safer"] == NSOrderedSame) {
        [self askUser:@"Cone characteristics" withAction1:@"Feel prickly, yellow bark flakes from trunk" withAction2:@"Don't feel prickly, gray bark flakes, trunk smells like pineapple" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Feel prickly, yellow bark flakes from trunk"] == NSOrderedSame) {
        _plantName.text = @"Ponderosa Pine";
    }
    else if ([option caseInsensitiveCompare:@"Don't feel prickly, gray bark flakes, trunk smells like pineapple"] == NSOrderedSame) {
        _plantName.text = @"Jeffrey Pine";
    }
    else if ([option caseInsensitiveCompare:@"Leaflets"] == NSOrderedSame) {
        [self askUser:@"How many leaflets?" withAction1:@"Eight or more" withAction2:@"Less than eight" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Eight or more"] == NSOrderedSame) {
        [self askUser:@"Leaflet Texture" withAction1:@"Leaflet margins are saw-toothed" withAction2:@"Not saw-toothed" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaflet margins are saw-toothed"] == NSOrderedSame) {
        [self askUser:@"The tree is a walnut. Leaf length" withAction1:@"Longer than ten inches, or large tree" withAction2:@"Leaves shorter than ten inches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Longer than ten inches, or large tree"] == NSOrderedSame) {
        _plantName.text = @"Northern California Black Walnut";
    }
    else if ([option caseInsensitiveCompare:@"Leaves shorter than ten inches"] == NSOrderedSame) {
        _plantName.text = @"California Black Walnut";
    }
    else if ([option caseInsensitiveCompare:@"Not saw-toothed"] == NSOrderedSame) {
        [self askUser:@"Leaflets and thorns" withAction1:@"Tree has rounded leaflets and thorns" withAction2:@"No rounded leaflets and thorns" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Tree has rounded leaflets and thorns"] == NSOrderedSame) {
        _plantName.text = @"Black Locust";
    }
    else if ([option caseInsensitiveCompare:@"No rounded leaflets and thorns"] == NSOrderedSame) {
        [self askUser:@"Leaf odor" withAction1:@"Leaves smell bad" withAction2:@"Leaves smell spicy" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves smell bad"] == NSOrderedSame) {
        _plantName.text = @"Ailanthus";
    }
    else if ([option caseInsensitiveCompare:@"Leaves smell spicy"] == NSOrderedSame) {
        _plantName.text = @"Peruvian Pepper Tree";
    }
    else if ([option caseInsensitiveCompare:@"Less than eight"] == NSOrderedSame) {
        [self askUser:@"Leaflets base" withAction1:@"All fan out from same point" withAction2:@"Individual bases" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"All fan out from same point"] == NSOrderedSame) {
        [self askUser:@"Leaflet texture" withAction1:@"Jagged" withAction2:@"Not Jagged" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Jagged"] == NSOrderedSame) {
        _plantName.text = @"Boxelder";
    }
    else if ([option caseInsensitiveCompare:@"Not Jagged"] == NSOrderedSame) {
        [self askUser:@"Number of Leaflets" withAction1:@"three leaflets" withAction2:@"more than three leaflets" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"three leaflets"] == NSOrderedSame) {
        _plantName.text = @"Hop Tree";
    }
    else if ([option caseInsensitiveCompare:@"more than three leaflets"] == NSOrderedSame) {
        _plantName.text = @"California Buckeye";
    }
    else if ([option caseInsensitiveCompare:@"Individual bases"] == NSOrderedSame) {
        [self askUser:@"Leaflets have" withAction1:@"Saw toothed margins, and tapered tips, or small berries" withAction2:@"No saw toothed margins, no berries" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Saw toothed margins, and tapered tips, or small berries"] == NSOrderedSame) {
        [self askUser:@"The plant is an Elderberry. The leaflet-" withAction1:@"has teeth running all the way to its tip/red berries/dome shaped flower clusters" withAction2:@"no teeth/blue berries/flat flower clusters" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"has teeth running all the way to its tip/red berries/dome shaped flower clusters"] == NSOrderedSame) {
        _plantName.text = @"Red Elderberry";
    }
    else if ([option caseInsensitiveCompare:@"no teeth/blue berries/flat flower clusters"] == NSOrderedSame) {
        _plantName.text = @"Blue Elderberry";
    }
    else if ([option caseInsensitiveCompare:@"No saw toothed margins, no berries"] == NSOrderedSame) {
        [self askUser:@"The tree is an ash. Leaflet shape and texture" withAction1:@"Rounded tips with saw-toothed margins" withAction2:@"Pointy tips, not saw toothed" withAction3:@"Desert tree with smaller, velvety leaves" withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Rounded tips with saw-toothed margins"] == NSOrderedSame) {
        _plantName.text = @"California Ash";
    }
    else if ([option caseInsensitiveCompare:@"Pointy tips, not saw toothed"] == NSOrderedSame) {
        _plantName.text = @"Oregon Ash";
    }
    else if ([option caseInsensitiveCompare:@"Desert tree with smaller, velvety leaves"] == NSOrderedSame) {
        _plantName.text = @"Velvet Ash";
    }
    else if ([option caseInsensitiveCompare:@"Not Leaflets"] == NSOrderedSame) {
        [self askUser:@"Veins" withAction1:@"3 or more equal sized veins branching out at leaf base" withAction2:@"Main veins of equal size branch off from single large central vein" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"3 or more equal sized veins branching out at leaf base"] == NSOrderedSame) {
        [self askUser:@"Leaf Pairing" withAction1:@"Leaves paired on opposite sides of twig" withAction2:@"Leaves don't grow opposite eachother" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves paired on opposite sides of twig"] == NSOrderedSame) {
        [self askUser:@"The tree is a maple. What type of teeth does it have" withAction1:@"Pointed teeth" withAction2:@"Rounded teeth" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Rounded teeth"] == NSOrderedSame) {
        _plantName.text = @"Big Leaf Maple";
    }
    else if ([option caseInsensitiveCompare:@"Pointed teeth"] == NSOrderedSame) {
        [self askUser:@"Lobes" withAction1:@"3 lobes" withAction2:@"5-7 lobes" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"3 lobes"] == NSOrderedSame) {
        _plantName.text = @"Mountain Maple";
    }
    else if ([option caseInsensitiveCompare:@"5-7 lobes"] == NSOrderedSame) {
        _plantName.text = @"Vine Maple";
    }
    else if ([option caseInsensitiveCompare:@"Leaves don't grow opposite eachother"] == NSOrderedSame) {
        [self askUser:@"Lobes" withAction1:@"Lobed" withAction2:@"Not lobed" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Lobed"] == NSOrderedSame) {
        [self askUser:@"Leaf size" withAction1:@"Leaves > 4 inches wide" withAction2:@"Leaves are smaller and fuzzy" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves > 4 inches wide"] == NSOrderedSame) {
        _plantName.text = @"Western Sycamore";
    }
    else if ([option caseInsensitiveCompare:@"Leaves are smaller and fuzzy"] == NSOrderedSame) {
        _plantName.text = @"Flannel Bush, Fremontia";
    }
    else if ([option caseInsensitiveCompare:@"Not lobed"] == NSOrderedSame) {
        [self askUser:@"Leaf shape" withAction1:@"Leaves are almost round" withAction2:@"Leaves are narrower, or have blue flowers" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves are almost round"] == NSOrderedSame) {
        _plantName.text = @"Western Redbud";
    }
    else if ([option caseInsensitiveCompare:@"Leaves are narrower, or have blue flowers"] == NSOrderedSame) {
        _plantName.text = @"Blue Blossom";
    }
    else if ([option caseInsensitiveCompare:@"Main veins of equal size branch off from single large central vein"] == NSOrderedSame) {
        [self askUser:@"Does the leaves have lobes?" withAction1:@"Yes, they do have lobes" withAction2:@"No, they don't have lobes" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Yes, they do have lobes"] == NSOrderedSame) {
        [self askUser:@"The tree is an Oak. What type of lobes does it have?" withAction1:@"Pointed, and bristle topped lobes" withAction2:@"Blunt, and rounded lobes" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Pointed, and bristle topped lobes"] == NSOrderedSame) {
        [self askUser:@"Lobe depth" withAction1:@"Lobes are shallow" withAction2:@"Lobes are deeper, or leaves are over 4 inches long" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Lobes are shallow"] == NSOrderedSame) {
        _plantName.text = @"Oracle Oak";
    }
    else if ([option caseInsensitiveCompare:@"Lobes are deeper, or leaves are over 4 inches long"] == NSOrderedSame) {
        _plantName.text = @"California Black Oak";
    }
    else if ([option caseInsensitiveCompare:@"Blunt, and rounded lobes"] == NSOrderedSame) {
        [self askUser:@"Additional leaf info" withAction1:@"Shiny on topside with fewer lobes/whitish-gray bark scales/stubby acorns" withAction2:@"Fuzzy topsides with 7-11 deep lobes/squarish bark plates/long hanging branches/long acorns" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Shiny on topside with fewer lobes/whitish-gray bark scales/stubby acorns"] == NSOrderedSame) {
        _plantName.text = @"Oregon Oak";
    }
    else if ([option caseInsensitiveCompare:@"Fuzzy topsides with 7-11 deep lobes/squarish bark plates/long hanging branches/long acorns"] == NSOrderedSame) {
        _plantName.text = @"Valley Oak, Roble";
    }
    else if ([option caseInsensitiveCompare:@"No, they don't have lobes"] == NSOrderedSame) {
        [self askUser:@"Leaf Stem length" withAction1:@"Greater than or equal to 1 inch" withAction2:@"Less than an inch" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Greater than or equal to 1 inch"] == NSOrderedSame) {
        [self askUser:@"Leaf structure" withAction1:@"Leaves flutter in gentle breeze because stems flatten when joining leaf" withAction2:@"Leaves don't flutter, because stems don't flatten that way" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves flutter in gentle breeze because stems flatten when joining leaf"] == NSOrderedSame) {
        [self askUser:@"Leaf blade shape" withAction1:@"Leaf blade wider than long" withAction2:@"Leaf blades almost round" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaf blade wider than long"] == NSOrderedSame) {
        _plantName.text = @"Fremont Cottonwood Alamo";
    }
    else if ([option caseInsensitiveCompare:@"Leaf blades almost round"] == NSOrderedSame) {
        _plantName.text = @"Quaking Aspen";
    }
    else if ([option caseInsensitiveCompare:@"Leaves don't flutter, because stems don't flatten that way"] == NSOrderedSame) {
        [self askUser:@"Twigs and Leaf Margin" withAction1:@"Twigs are sticky, leaf margin has rounded teeth" withAction2:@"Twigs are shiny and red, leaf margin has sharp outward pointing teeth" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Twigs are sticky, leaf margin has rounded teeth"] == NSOrderedSame) {
        _plantName.text = @"Black Cottonwood";
    }
    else if ([option caseInsensitiveCompare:@"Twigs are shiny and red, leaf margin has sharp outward pointing teeth"] == NSOrderedSame) {
        _plantName.text = @"Oregon Crabapple";
    }
    else if ([option caseInsensitiveCompare:@"Less than an inch"] == NSOrderedSame) {
        [self askUser:@"Leaf pairing" withAction1:@"Leaves grow in pairs opposite each other" withAction2:@"Leaves don't grow opposite each other" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves grow in pairs opposite each other"] == NSOrderedSame) {
        [self askUser:@"Leaf texture" withAction1:@"Leaves are wooly underneath" withAction2:@"Leaves are not wooly underneath" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaves are wooly underneath"] == NSOrderedSame) {
        _plantName.text = @"Wavyleaf Silktassel";
    }
    else if ([option caseInsensitiveCompare:@"Leaves are not wooly underneath"] == NSOrderedSame) {
        _plantName.text = @"Mountain Dogwood";
    }
    else if ([option caseInsensitiveCompare:@"Leaves don't grow opposite each other"] == NSOrderedSame) {
        [self askUser:@"Leaf margins" withAction1:@"Smooth curves, without teeth" withAction2:@"Margins have teeth" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Smooth curves, without teeth"] == NSOrderedSame) {
        [self askUser:@"Leaf odor" withAction1:@"Leaf has strong, penetrating odor when crushed" withAction2:@"No odor when crushed" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaf has strong, penetrating odor when crushed"] == NSOrderedSame) {
        [self askUser:@"Leaf is" withAction1:@"Dark green with a blunt tip" withAction2:@"Pale green with a sharp tip" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Dark green with a blunt tip"] == NSOrderedSame) {
        _plantName.text = @"California Laurel/Bay, Pepperwood";
    }
    else if ([option caseInsensitiveCompare:@"Pale green with a sharp tip"] == NSOrderedSame) {
        _plantName.text = @"Eucalyptus";
    }
    else if ([option caseInsensitiveCompare:@"No odor when crushed"] == NSOrderedSame) {
        [self askUser:@"Branches" withAction1:@"Smooth, conspicuous red mark on branches" withAction2:@"No smooth red mark on branches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Smooth, conspicuous red mark on branches"] == NSOrderedSame) {
        _plantName.text = @"Madrone";
    }
    else if ([option caseInsensitiveCompare:@"No smooth red mark on branches"] == NSOrderedSame) {
        [self askUser:@"Leaf underside" withAction1:@"Undersides are golden yellow" withAction2:@"Undersides are not golden yellow" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Undersides are golden yellow"] == NSOrderedSame) {
        _plantName.text = @"Giant Chinquapin";
    }
    else if ([option caseInsensitiveCompare:@"Undersides are not golden yellow"] == NSOrderedSame) {
        [self askUser:@"Leaf length" withAction1:@"About an inch long, margins rolled under" withAction2:@"Longer than an inch long" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"About an inch long, margins rolled under"] == NSOrderedSame) {
        _plantName.text = @"Curl-Leaf Mountain Mahogany";
    }
    else if ([option caseInsensitiveCompare:@"Longer than an inch long"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Narrow,bendy,sharp tips,wider toward tip" withAction2:@"Wider,stiff,blunter tips, wider toward base" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Narrow,bendy,wider toward tip"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Less than 1/2 an inch wide, saw toothed margins" withAction2:@"Wider than 1/2 an inch" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Less than 1/2 an inch wide, saw toothed margins"] == NSOrderedSame) {
        _plantName.text = @"Goodding's Black Willow";
    }
    else if ([option caseInsensitiveCompare:@"Wider than 1/2 an inch"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Yellow green, with warts at leaf/stem junction" withAction2:@"Blue green" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Yellow green, with warts at leaf/stem junction"] == NSOrderedSame) {
        _plantName.text = @"Pacific/Black Willow";
    }
    else if ([option caseInsensitiveCompare:@"Blue green"] == NSOrderedSame) {
        _plantName.text = @"Red Willow";
    }
    else if ([option caseInsensitiveCompare:@"Wider,stiff,blunter tips, wider toward base"] == NSOrderedSame) {
        [self askUser:@"Leaves shape" withAction1:@"Narrow,paddle shaped,wide towards tip,wedge shaped base" withAction2:@"Any other shape" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Narrow,paddle shaped,wide towards tip,wedge shaped base"] == NSOrderedSame) {
        [self askUser:@"Teeth on leaves" withAction1:@"Teeth on margins are easy to see" withAction2:@"Teeth are harder to see" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Teeth on margins are easy to see"] == NSOrderedSame) {
        [self askUser:@"Are the leaves longer than 2 inches?" withAction1:@"Yes" withAction2:@"No" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Yes"] == NSOrderedSame) {
        _plantName.text = @"Pacific Bayberry,Wax Myrtle";
    }
    else if ([option caseInsensitiveCompare:@"No"] == NSOrderedSame) {
        _plantName.text = @"Bitter Cherry";
    }
    else if ([option caseInsensitiveCompare:@"Teeth are harder to see"] == NSOrderedSame) {
        [self askUser:@"Leaf undersides" withAction1:@"Covered with velvety, white hair" withAction2:@"Not covered with velvety white hair" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Covered with velvety, white hair"] == NSOrderedSame) {
        _plantName.text = @"Sitka/Silky Willow";
    }
    else if ([option caseInsensitiveCompare:@"Not covered with velvety white hair"] == NSOrderedSame) {
        [self askUser:@"Leaf ends" withAction1:@"Mostly rounded, narrowly tapered bases" withAction2:@"More pointed ends, wider bases" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Mostly rounded, narrowly tapered bases"] == NSOrderedSame) {
        _plantName.text = @"Scouler Willow";
    }
    else if ([option caseInsensitiveCompare:@"More pointed ends, wider bases"] == NSOrderedSame) {
        _plantName.text = @"Arroyo Willow";
    }
    else if ([option caseInsensitiveCompare:@"Any other shape"] == NSOrderedSame) {
        [self askUser:@"Teeth on margins" withAction1:@"More than 25 teeth along margins" withAction2:@"Fewer or no teeth" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"More than 25 teeth along margins"] == NSOrderedSame) {
        [self askUser:@"Leaf margins" withAction1:@"Scalloped, stiff and spiny teeth" withAction2:@"Teeth are soft, point towards leaf tip" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Scalloped, stiff and spiny teeth"] == NSOrderedSame) {
        [self askUser:@"Leaf size" withAction1:@"Leaf blade is wider towards the base" withAction2:@"Widest towards middle" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Leaf blade is wider towards the base"] == NSOrderedSame) {
        _plantName.text = @"Hollyleaf Cherry, Islay";
    }
    else if ([option caseInsensitiveCompare:@"Widest towards middle"] == NSOrderedSame) {
        _plantName.text = @"Christmas Berry, Toyon";
    }
    else if ([option caseInsensitiveCompare:@"Teeth are soft, point towards leaf tip"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Pointed at tip" withAction2:@"Rounded at tip" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Teeth are soft, point towards leaf tip"] == NSOrderedSame) {
        [self askUser:@"Teeth are" withAction1:@"Small, about same size" withAction2:@"All different" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Small, about same size"] == NSOrderedSame) {
        _plantName.text = @"Western Choke-Cherry";
    }
    else if ([option caseInsensitiveCompare:@"All different"] == NSOrderedSame) {
        [self askUser:@"Thorns" withAction1:@"Tree has thorns" withAction2:@"Tree doesn't have thorns" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Tree has thorns"] == NSOrderedSame) {
        _plantName.text = @"Hawthorn";
    }
    else if ([option caseInsensitiveCompare:@"Tree doesn't have thorns"] == NSOrderedSame) {
        _plantName.text = @"Oregon Crabapple";
    }
    else if ([option caseInsensitiveCompare:@"Rounded at tip"] == NSOrderedSame) {
        [self askUser:@"Bark" withAction1:@"Conspicuous, smooth, red brown bark" withAction2:@"Bark is different" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Conspicuous, smooth, red brown bark"] == NSOrderedSame) {
        _plantName.text = @"Pacific Madrone";
    }
    else if ([option caseInsensitiveCompare:@"Bark is different"] == NSOrderedSame) {
        [self askUser:@"Main veins" withAction1:@"Turn inward from leaf margin" withAction2:@"Don't turn inward" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Turn inward from leaf margin"] == NSOrderedSame) {
        _plantName.text = @"Cascara";
    }
    else if ([option caseInsensitiveCompare:@"Don't turn inward"] == NSOrderedSame) {
        _plantName.text = @"Klamath Plum";
    }
    else if ([option caseInsensitiveCompare:@"Fewer or no teeth"] == NSOrderedSame) {
        [self askUser:@"The tree is an oak. Leaves are" withAction1:@"Dark green,bark is blackish,not scaly" withAction2:@"light green or bluish, or bark is scaly" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Dark green,bark is blackish,not scaly"] == NSOrderedSame) {
        [self askUser:@"Leaf shape/texture" withAction1:@"Convex on top, tufts of hair where veins join on underside" withAction2:@"Flatter, hairless" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Convex on top, tufts of hair where veins join on underside"] == NSOrderedSame) {
        _plantName.text = @"Coast Live Oak";
    }
    else if ([option caseInsensitiveCompare:@"Flatter, hairless"] == NSOrderedSame) {
        _plantName.text = @"Interior Live Oak";
    }
    else if ([option caseInsensitiveCompare:@"light green or bluish, or bark is scaly"] == NSOrderedSame) {
        [self askUser:@"Leaves color" withAction1:@"Shiny green on top, whitish below" withAction2:@"Dull blue green on both sides" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Shiny green on top, whitish below"] == NSOrderedSame) {
        _plantName.text = @"Maul Oak, Canyon Live Oak";
    }
    else if ([option caseInsensitiveCompare:@"Dull blue green on both sides"] == NSOrderedSame) {
        [self askUser:@"Where is the tree?" withAction1:@"Northern California" withAction2:@"Southern California" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Southern California"] == NSOrderedSame) {
        _plantName.text = @"Engelmann Oak";
    }
    else if ([option caseInsensitiveCompare:@"Northern California"] == NSOrderedSame) {
        _plantName.text = @"Blue Oak";
    }
    else if ([option caseInsensitiveCompare:@"Margins have teeth"] == NSOrderedSame) {
        [self askUser:@"Main veins" withAction1:@"branch into smaller veins without reaching edge" withAction2:@"on underside of leaf, run directly to edge of leaf" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"branch into smaller veins without reaching edge"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Narrow,bendy,wider toward tip" withAction2:@"Wider,stiff,wider toward base" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"on underside of leaf, run directly to edge of leaf"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Less than two inches long" withAction2:@"longer than two inches long" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Less than two inches long"] == NSOrderedSame) {
        [self askUser:@"Leaves are" withAction1:@"Oval with curved veins" withAction2:@"more circular, with straighter veins" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Oval with curved veins"] == NSOrderedSame) {
        _plantName.text = @"Pacific Service-Berry";
    }
    else if ([option caseInsensitiveCompare:@"more circular, with straighter veins"] == NSOrderedSame) {
        [self askUser:@"Tree has" withAction1:@"Rounded leaves" withAction2:@"wedge shaped leaves with velvety undersides" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"Rounded leaves"] == NSOrderedSame) {
        _plantName.text = @"Water Birch";
    }
    else if ([option caseInsensitiveCompare:@"wedge shaped leaves with velvety undersides"] == NSOrderedSame) {
        _plantName.text = @"Birch-Leaf Mountain Mahogany";
    }
    else if ([option caseInsensitiveCompare:@"longer than two inches long"] == NSOrderedSame) {
        [self askUser:@"Leaf stem is" withAction1:@"wooly or very hairy" withAction2:@"hairless" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"wooly or very hairy"] == NSOrderedSame) {
        [self askUser:@"Leaf has" withAction1:@"stubby spine at end of each main vein" withAction2:@"many small,soft teeth on margin" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"stubby spine at end of each main vein"] == NSOrderedSame) {
        _plantName.text = @"Tan Oak";
    }
    else if ([option caseInsensitiveCompare:@"many small,soft teeth on margin"] == NSOrderedSame) {
        _plantName.text = @"Hazelnut";
    }
    else if ([option caseInsensitiveCompare:@"hairless"] == NSOrderedSame) {
        [self askUser:@"Trunk's bark is" withAction1:@"white" withAction2:@"not white" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"white"] == NSOrderedSame) {
        _plantName.text = @"Paper Birch";
    }
    else if ([option caseInsensitiveCompare:@"not white"] == NSOrderedSame) {
        [self askUser:@"Leaves' teeth are" withAction1:@"sharp, V shaped notches" withAction2:@"round, round notches" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"round, round notches"] == NSOrderedSame) {
        [self askUser:@"Edge of leaf is" withAction1:@"rolled" withAction2:@"flat" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"rolled"] == NSOrderedSame) {
        _plantName.text = @"Red Alder";
    }
    else if ([option caseInsensitiveCompare:@"flat"] == NSOrderedSame) {
        _plantName.text = @"White Alder";
    }
    else if ([option caseInsensitiveCompare:@"sharp, V shaped notches"] == NSOrderedSame) {
        [self askUser:@"Tree has" withAction1:@"thorns" withAction2:@"no thorns" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"thorns"] == NSOrderedSame) {
        _plantName.text = @"Hawthorn";
    }
    else if ([option caseInsensitiveCompare:@"no thorns"] == NSOrderedSame) {
        [self askUser:@"leaves have" withAction1:@"dull, not sticky undersides" withAction2:@"glossy and sticky (outer leaves)" withAction3:nil withAction4:nil];
    }
    else if ([option caseInsensitiveCompare:@"dull, not sticky undersides"] == NSOrderedSame) {
        _plantName.text = @"Mountain Alder";
    }
    else if ([option caseInsensitiveCompare:@"glossy and sticky (outer leaves)"] == NSOrderedSame) {
        _plantName.text = @"Sitka Alder";
    }
    //STEMS DONT FLUTTER AND LESS THAN ONE INCH
//    UIImage *plantImage = [[UIImage alloc] init];
//    plantImage = [UIImage imageNamed:@"nameOfPng.png"];
}

- (void) askUser:(NSString *)message withAction1:(NSString *)option1 withAction2:(NSString *)option2 withAction3:(NSString *)option3 withAction4:(NSString *)option4{
    UIAlertController *alert = [UIAlertController
                                alertControllerWithTitle:@"Plants"
                                message:message
                                preferredStyle:UIAlertControllerStyleAlert];
    
    
    
    UIAlertAction* action1 = [UIAlertAction
                              actionWithTitle:option1
                              style:UIAlertActionStyleDefault
                              handler:^(UIAlertAction * action) {
                                  [self optionSelected:option1];
                              }];
    
    UIAlertAction* action2 = [UIAlertAction
                              actionWithTitle:option2
                              style:UIAlertActionStyleDefault
                              handler:^(UIAlertAction * action) {
                                  [self optionSelected:option2];
                              }];
    [alert addAction:action1];
    [alert addAction:action2];
    
    if (option3 != nil) {
        UIAlertAction* action3 = [UIAlertAction
                                  actionWithTitle:option3
                                  style:UIAlertActionStyleDefault
                                  handler:^(UIAlertAction * action) {
                                      [self optionSelected:option3];
                                  }];
        [alert addAction:action3];
    }
    
    if (option4 != nil) {
        UIAlertAction* action4 = [UIAlertAction
                                  actionWithTitle:option4
                                  style:UIAlertActionStyleDefault
                                  handler:^(UIAlertAction * action) {
                                      [self optionSelected:option4];
                                  }];
        [alert addAction:action4];
    }
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
