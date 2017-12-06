//
//  RecipeDataModel.m
//  Student Food App
//
//  Created by Daniel Marshall [el16dm] on 20/11/2017.
//  Copyright © 2017 Daniel Marshall [el16dm]. All rights reserved.
//

#import "RecipeDataModel.h"

@implementation RecipeDataModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.cheapRecipes = [NSMutableArray array]; //cheap recipes
        
        Recipe *beansOnToast = [[Recipe alloc] init];
        beansOnToast.name = @"Beans On Toast";
        beansOnToast.ingredients = @"-1 Tin of Baked Beans \n-2 slices ofBread \n-Cheese (Optional)";
        beansOnToast.instructions = @"just do it";
      //  beansOnToast.photo = @"BeansOnToast.jpg";
        
        Recipe *mackerelOnToast= [[Recipe alloc] init];
        mackerelOnToast.name = @"Mackerel On Toast";
        mackerelOnToast.ingredients = @"-1 can of mackerel in tomato sauce \n-2 slices ofBread";
        mackerelOnToast.instructions = @"just do it";
     //   mackerelOnToast.photo = @"MackerelOnToast.jpg";
       
        Recipe *tunaMushroomSpaghetti = [[Recipe alloc] init]; //NOSH BOOK
        tunaMushroomSpaghetti.name = @"Tuna and Mushroom Spaghetti";
        tunaMushroomSpaghetti.ingredients = @" 1 1/2 portions spaghetti\n185g can tuna in oil, drained\n1 teaspoon oil to fry\njuice of a 1/2 lemon\n1 small onion, sliced\n1/2 mug grated parmesan\n5-6 mushrooms, sliced\n1 desserspoon dried chives\n1/2 mug frozen peas, defrosted\n3 tablespoons Greek yogurt";
        tunaMushroomSpaghetti.instructions = @"   -1-\nCook the spaghetti. Drain and return to the pan. \n -2- \nWhile the spaghetti is cooking, heat a little oil in a wok, fry the onion until i begins to softenn. Add the mushrooms and the peas and cook for 1 minute. Season Well.\n -3-/nTake the pan off the heat and add the yogurt, tuna, lemon juice, grated Parmesan and the chives. Stir gently. Add to the drained spaghetti. Stir gently and serve.";
    
       
        [self.cheapRecipes addObject:beansOnToast];//index 0
        [self.cheapRecipes addObject:mackerelOnToast]; //index 16
        [self.cheapRecipes addObject:tunaMushroomSpaghetti];
        
        
        self.meatRecipes = [NSMutableArray array]; //meat recipes
        
        Recipe *steak = [[Recipe alloc] init];
        steak.name = @"Steak";
        steak.ingredients = @"-1 Steak \n-Creme Fraiche";
        steak.instructions = @"preheat the pan on a very high heat,\nprepare the steak with salt pepper and oil, \nplace steak in pan and leave it for 2 minutes the flip and leave for 2 minutes";
        
        Recipe *mediterraneanChicken = [[Recipe alloc] init];
        mediterraneanChicken.name = @"Mediterranean Chicken";
        mediterraneanChicken.ingredients = @"4 chicken thighs\n1 onion, cut into wedges\n3 large potatoes, cut into 3cm cubes\n1 clove garlic, finely chopped\n3 tomatoes, cut into 1/4's\n12 olives, chopped\n1 teaspoon dried basil\n2 tablespoons olive oil\nsalt and pepper\n1/2 mug water + 1 chicken stock cube\npaprika to sprinkle over";
        mediterraneanChicken.instructions = @" -1-\n Preheat the oen to 180 degrees/ fn oven 200 degrees/gas mark 6.\n -2- Put all the ingreients, except the sock and paprika, in a casserole dish. Distribute the oil evenly and arrange the pieces so that the skins of the chicken will brown. Add the stock and sprinke the casserole with paprika\n -3-\nPut in the oven for 45-50 minutes until the chicken is browned and cooked through. Test one piece to make sure";
        
        Recipe *chickpeaChorizocouscous = [[Recipe alloc] init];
        *chickpeaChorizocouscous.name = @"Chickpeak and Chorizo Couscous";
        *chickpeaChorizocouscous.ingredients = @"1/2 mug couscous\n1 mug boiling water + 1 vegetable stock cube\n1/2 teaspoon paprika\n1/2 teaspoon cumin\n1/2teaspoon ground coriander\n1\2 tablespoon oil\n1 small onion, sliced\n1 clove garlic, finely chopped\n2 small chorizo sausages, chopped\n400g can chickpeas, drained and rinsed\n2 tomatoes, roughly chopped\n1/4 mug water";
        *chickpeaChorizocouscous.instructions = @" -1-\nPut the couscous in a bowl and add the boiling water, stock cube, paprika, cumin and coriander. Stir together. Cover with a plate and leave to stand for at least 5 minutes, until the water is absorbed.\n -2-\nHeat the oil in a frying pan or wok. Add the onions, garli and chopped choriza. Fry until the chorizo is browned.\n -3-\nAdd the chickpeas, toatoes and water, and cook for another 1-2 minutes, stirring frequently. Most of the liquid should be gone.\n -4-\n Add the couscous, mix together and serve.";
        
        [self.meatRecipes addObject:chickpeaChorizocouscous];
        [self.meatRecipes addObject:mediterraneanChicken];
        [self.meatRecipes addObject:steak]; // index 0
        
       
        
        self.PastaRecipes = [NSMutableArray array]; // pasta recipes
        
        Recipe *salmonPasta = [[Recipe alloc] init]; //NOSH BOOK
        salmonPasta.name = @"Salmon Pasta";
        salmonPasta.ingredients = @"2 small bunches of Tagliatelle pasta\n 2 tablespoons of double cream\n 1 small piece of salmon\n1 teaspoon of dried chives\n1 tablespoon olive oil to fry\n3 spring onions, chopped";
        salmonPasta.instructions = @" -1-\nCook the tagliatelle. It should only take about 3-4 minutes to cook. Leave to drain\n -2-\n Fry the salmon in a little olive oil (if you have a small pice it should only take 2-3 minutes each side). Add the spring onions to the pan towards the end of the cooking time and allow them to brown a little\n -3-\nRemove the pan from the heat and gently break up the salmon. Add the cream and the chives and return to the heat. As soon as the cream beginns to bubble, add the pasta and stir everything together. Allow the pasta to heat through. This should take around 1 minute.\n -4-\n Season well with salt and pepper";
            
        Recipe *chickenPestoPasta = [[Recipe alloc] init];
        chickenPestoPasta.name = @"Chicken With Pesto Pasta";
        chickenPestoPasta.ingredients = @"1 mug Pasta\n1 tablespoon oil to fry\n2 Chicken breasts\n1 Onion, cut into thin wedges\n1/2 red pepper, cut into thin strips\n1 garlic clove, finely chopped\n12 black olives, roughly chopped\n200g pack cherry tomatoes, each cut in half\n1/2 x 200g pack of feta cheese, crumbled\n -Dressing-\n1 tablespoon olive oil\n1 tablespoon green pesto\njuice of a lemon\n1/2 teaspoon sugar\nsalt and pepper";
        chickenPestoPasta.instructions = @" -1-\nMix together the dressing ingredients\n -2-\nCook the pasta. One cooked, drain and return to pan\n -3-\nHeat a little oil in a frying pan and add the chicken breasts. Cook on a high heat for 2 minutes each side. Turn down the heat and cook, with the lid on, for a further 4 minutes each side, depending on the size of the chicken breast. Set aside\n -4-\nFry the onions, garlic and pepper for 2-3 minutes until soft. Add the olives and tomatoes to the pan and take off the heat.\n -5-\n Slice the chicken into fairly thin slices and, together with the pasta add to the frying pan. Mix together.\n -6-\n Sprinkle the feta over the top an drizzle with the dressing.";
        
        [self.PastaRecipes addObject:chickenPestoPasta];
        [self.PastaRecipes addObject:salmonPasta];
         [self.meatRecipes addObject:chickenPestoPasta];
        self.fishRecipes = [NSMutableArray array]; // fish recipes
        
        Recipe *limeTunaCousCous = [[Recipe alloc] init];
        limeTunaCousCous.name = @"Lime Tuna With CousCous";
        limeTunaCousCous.ingredients = @"3/4 mug couscous\n2 tablespoons olive oil\n1 1/2 mugs boiling water\n185g tin tuna\n1 vegetable stock cube\n125g cherry tomatoes, halved\nzest and juice of a lime\n7cm piece of cucumber, halves, deseeded and thinly sliced\n1 teaspoon sugar\nsalt and pepper\n1/2 x 340g tin sweetcorn";
        limeTunaCousCous.instructions = @" -1- Place the couscous and lime \est in a bowl and pour over the boiling water and crumbled vegetable stock cube. Put a plate over the top to keep the heat in and leave to stand for 5 minutes. \n -2-\n Mix together the limejuice, sugar, salk and pepper and olive oil to make a dressing. \n -3-\n Once the cous cous is cooked, add the drained tuna, tomatoes, cucumber, sweetcorn and the dressing to the couscouus. Stir and serve.";
        
        Recipe smokedMackerelPastaSalad* = [[Recipe alloc] init];
        smokedMackerelPastaSalad.name = @"Smoked Mackerel Pasta Salad";
        smokedMackerelPastaSalad.ingredients = @"1 1/2 mugs pasta\n1/2 x 300g pack green beans, trimmed and cut in 1/2\n2 tablespoons cremefraiche\n1 tablespoon mayo\n1 teaspoon dried chives\nzest and juice of 1/2 lemon\n250g pack cooked, smoked mackerel\n1/4 cucumber, chopped\n2 spring onions, chopped";
        smokedMackerelPastaSalad.instructions = @" -1-\nPut the pasta on to boil. Add the beans 5 minutes before the end of cooking time. Once cooked, drain, run under a cold tap and place in a bowl.\n -2-\nMix togwther the creme fraiche, mayo, chives, lemon zest, juice and season with salt and pepper. Add to the pasta and mix\n -3-\n Peel the skin off the backs of the mackerel fillets and then gently flake the fish. Add to the bowl, along with the cucumber and onions. Mix gently and serve";
        
        [self.fishRecipes addObject:smokedMackerelPastaSalad];
        [self.fishRecipes addObject:chickpeaChorizocouscous];
        [self.fishRecipes addObject:limeTunaCousCous];
        [self.fishRecipes addObject:salmonPasta];
        
        
        self.VegetarianRecipes = [NSMutableArray array]; // veggie recipes
        
        
        Recipe *cauliflowerAndBroccoliCheese = [[Recipe alloc] init]; //NOSH BOOK
        cauliflowerAndBroccoliCheese.name = @"Cauliflower and Broccoli Cheese";
        cauliflowerAndBroccoliCheese.ingredients = @"1 small cauliflower, broken into florets\ndouble quanity of cheese sauce (see sauces)\n1 small piece of broccoli, broken into florets\n1/2 mug grated cheese";
        cauliflowerAndBroccoliCheese.instructions = @" -1-\nPreheat the oven to 200 degrees (220 fan oven/ gas mark 7).\n -2-\nBoil the cauliflower and broccoli for 5-7 minutes.\n -3-\nMake the Quick cheese sauce.\n -4-\n Put the drained vegetables in a greased casserole dish and pour the sauce over them. Top with grated cheese and put in the oven for 10-15 minutes until browned on top.";
       
        [self.VegetarianRecipes addObject:cauliflowerAndBroccoliCheese];
        
        self.sauces = [NSMutableArray array];//sauces
        
        Recipe *quickCheeseSauce = [[Recipe alloc] init];
        quickCheeseSauce.name = @"Quick Cheese Sauce";
        quickCheeseSauce.ingredients = @"1 mug grated cheese\n1 mug milk\n1 tablespoon flour\n1/8 teaspoon paprika\n2cm cube butter\nsalt and pepper";
        quickCheeseSauce.instructions = @"-1-\nWithout the heat on, put the grated chees into a saucepan, add the flour, salt, pepper and paprika and stir well.\n -2-\n Add the mil and butter. Put on a low heat and bring to the boil, stirring all the time. The sauce should thicken.";
        
        Recipe *tomatoSauce = [[Recipe alloc] init];
        tomatoSauce.name = @"Piquant Tomnato Sauce";
        tomatoSauce.ingredients = @"1 tablespoon of oil to fry\n1 tablepoon tomato puree\n1 onion, sliced\n1 tablespoon white win vinegar\n400g tin tomatoes\n1teaspoon sugar\n1 teaspoon black pepper";
        tomatoSauce.instructions = @" -1-\nHeat the oil in a saucepan and fry the onions until they become soft. Add the tomatoes\n -2-\nAdd the rest of the ingredients and bring to the boil. Simmer for 2-3 minutes.\n -3-\nBlitz with a hand-held blender if you have one or use as it is.";
        
        Recipe *pepperSauce = [[Recipe alloc] init];
        pepperSauce.name = @"Pepper Sauce";
        pepperSauce.ingredients = @"1 tablespoon of oil to fry\n1 clove garlic, chopped\n1 1/2 red peppers, chopped\n1 tablespoon cream\n1/2 onion, slice\n1/2 teaspoon sugar";
        pepperSauce.instructions = @" -1-\nHeat the oil in a saucepan and fry the peppers, onions, garlic, over a medium heat for 5 minutes, until they are really soft.\n -2-\nAdd the sugar and cream and mix\n -3-\nUse a hand-held blender to liquidise, or leave as it is\n -4-\nAdd the cream and season well with salk and freshly ground black pepper. You can add half a teaspoon of chilli powder if you like.";
        
            
        [self.sauces addObject:quickCheeseSauce];
        [self.sauces addObject:tomatoSauce];
        [self.sauces addObject:pepperSauce];
    }
    return self;
}
@end
