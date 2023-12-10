//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by Eliza Ouyang on 12/1/23.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case appetizier = "Appetizer"
    case main = "Main"
    case snack = "Snack"
    case drink = "Drink"
    case dessert = "Dessert"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let desc: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let image: String
    let url: String
    let date: String
}

// recipes taken from tasty.co
extension Recipe {
    static let all: [Recipe] = [
    Recipe(
        name: "Buttermilk Pancakes",
        desc: "Is there any better way to start the day than with a stack of warm and fluffy pancakes? Buttermilk gives these cakes that signature tang, while a combination of baking powder and baking soda creates an unbeatable lift. This recipe yields perfect plain pancakes every time, but feel free to add your favorite mix-ins—like blueberries, chocolate chips, or bananas—to the batter before cooking. Bonus? Pancakes freeze well, so make a double batch and store in the freezer for easy breakfasts all week. No stovetop flipping required!",
        ingredients: """
        for 4 servings
        
        2 cups all-purpose flour
        2 tablespoons sugar
        ½ teaspoon kosher salt
        ½ teaspoon baking powder
        ½ teaspoon baking soda
        2 cups buttermilk
        2 eggs
        3 tablespoons unsalted butter, melted
        ½ teaspoon unsalted butter, plus more to serve
        maple syrup, to serve
        """,
        directions: """
        In a bowl, add the flour, sugar, salt, baking powder, and baking soda, and whisk to combine.
        In a bowl or measuring cup, whisk the buttermilk, eggs, and melted butter until smooth.
        Add the buttermilk mixture to the dry ingredients, gently incorporating with a spatula. Make sure not to overmix, as that will result in dense pancakes.
        Add the butter to a pan over medium low heat. Once the butter begins to bubble, add ⅓ cup (80 ml) of batter to the pan.
        Cook until the top side begins to bubble and the bottom is golden brown. Flip the pancake and cook until the underside is golden brown. Repeat with the remaining batter.
        Enjoy!
        """,
        category: "Breakfast",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/51a9c5b156c84977ae50004b5ef622b2/finalFB.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/buttermilk-pancakes",
        date: "2023-02-23"),
    Recipe(
        name: "Potato Wedges",
        desc: "These potato wedges are crispy on the outside and tender on the inside. Perfect as a side dish, snack or even as a game day appetizer.",
        ingredients: """
        for 3 servings

        3 large russet potatoes
        ⅓ cup olive oil
        1 teaspoon salt
        ½ teaspoon pepper
        1 tablespoon garlic powder
        1 tablespoon dried oregano
        1 tablespoon paprika
        ½ cup vegetarian parmesan cheese
        """,
        directions: """
        Preheat oven to 400°F (200°C).
        Thoroughly wash potatoes, cut in half, and slice into wedges.
        Toss wedges in olive oil and seasonings.
        Place on a baking sheet, skin side down.
        Bake 40-50 minutes.
        Enjoy!
        """,
        category: "Appetizer",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/3edd321e60be4fdcbaee2d9f5408813f/veggiewedges-fb.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/potato-wedges",
        date: "2023-05-14"),
    Recipe(
        name: "Roasted Butternut Squash Pasta",
        desc: "A comforting and classic dish, this pot pie filling is filled with tender chicken, colorful vegetables, and a creamy sauce.",
        ingredients: """
        for 4 servings

        1 butternut squash, peeled and cubed
        ½ white onion, chopped roughly
        olive oil, to taste
        salt, to taste
        pepper, to taste
        nutmeg, to taste
        1 cup vegetable broth
        1 cup almond milk
        2 cloves garlic, minced
        1 teaspoon red pepper flakes, optional
        1 teaspoon dried sage
        1 head broccoli, steamed
        8 oz whole wheat pasta, cooked
        grated parmesan cheese, to serve
        """,
        directions: """
        Preheat oven to 400°F (200°C).
        Add butternut squash and onion to a parchment paper-lined baking sheet, and season with olive oil, salt, pepper, and nutmeg.
        Roast for 25-30 minutes, or until tender.
        Add roasted squash and onion to a food processor or blender. Add vegetable broth, almond milk, and blend until smooth.
        In a large sauce pot over medium heat, add olive oil, garlic, red pepper flakes, and sage. Cook for about 1 minute, or until fragrant. Add squash puree and bring to a simmer, stirring occasionally.
        Add cooked pasta and steamed broccoli and stir to combine.
        Top with Parmesan, and serve.
        Enjoy!
        """,
        category: "Main",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/f3defce64fe1467a963b4a4752a2745b/BFV31471_The7BestSquashRecipesForTheFall_FB_FINAL.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/roasted-butternut-squash-pasta",
        date: "2023-05-14"),
    Recipe(
        name: "The Best Chewy Chocolate Chip Cookies",
        desc: "There are a few secrets to the best classic, chewy chocolate chip cookies. Number one: Don’t use chips; instead, opt for a mix of milk or semisweet and dark chocolate chunks. The second is to let the dough rest overnight or longer for a more complex, toffee-like flavor. Lastly, use an ice cream scooper to get even-sized cookies every time. And that’s it! With these little tweaks, the result is a cookie that’s textured on the outside, and soft and gooey on the inside. Absolutely perfect!",
        ingredients: """
        for 12 cookies

        ½ cup granulated sugar
        ¾ cup brown sugar, packed
        1 teaspoon salt
        ½ cup unsalted butter, melted
        1 egg
        1 teaspoon vanilla extract
        1 ¼ cups all-purpose flour
        ½ teaspoon baking soda
        4 oz milk or semi-sweet chocolate chunks
        4 oz dark chocolate chunk, or your preference
        """,
        directions: """
        In a large bowl, whisk together the sugars, salt, and butter until a paste forms with no lumps.
        Whisk in the egg and vanilla, beating until light ribbons fall off the whisk and remain for a short while before falling back into the mixture.
        Sift in the flour and baking soda, then fold the mixture with a spatula (Be careful not to overmix, which would cause the gluten in the flour to toughen resulting in cakier cookies).
        Fold in the chocolate chunks, then chill the dough for at least 30 minutes. For a more intense toffee-like flavor and deeper color, chill the dough overnight. The longer the dough rests, the more complex its flavor will be.
        Preheat oven to 350°F (180°C). Line a baking sheet with parchment paper.
        Scoop the dough with an ice-cream scoop onto a parchment paper-lined baking sheet, leaving at least 4 inches (10 cm) of space between cookies and 2 inches (5 cm) of space from the edges of the pan so that the cookies can spread evenly.
        Bake for 12-15 minutes, or until the edges have started to barely brown.
        Cool completely before serving.
        Enjoy!
        """,
        category: "Snack",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/62298.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/the-best-chewy-chocolate-chip-cookies",
        date: "2022-9-19"),
    Recipe(
        name: "Watermelon-Lime Slushie",
        desc: "This watermelon lime slushie is a refreshing and hydrating way to beat the heat. Made with fresh watermelon and lime juice, it's the perfect summer drink.",
        ingredients: """
        for 2 servings

        1 cup watermelon, cubed
        1 lime, juiced
        ½ cup water
        2 cups ice
        """,
        directions: """
        Pour all ingredients into a blender and blend until smooth.
        Garnish with a slice of lime.
        Enjoy!
        """,
        category: "Drink",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/15fb648346e14399bc1cf59e1784da99/fb.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/watermelon-lime-slushie",
        date: "2023-05-04"),
    Recipe(
        name: "One Bowl Chocolate Chip Banana Bread",
        desc: "We’ve all been baking banana bread lately, right? It’s been good, but it’s gotten, well, just a tad routine. In fact, it’s probably making you go just a liiiittle bananas yourself! So it’s time to sweeten the deal: this chocolate chip banana bread recipe combines two of your favorite things into one – now, you can have your chocolate and eat it, too!",
        ingredients: """
        for 6 servings

        3 ripe bananas
        ⅓ cup butter, melted
        ½ cup sugar
        1 egg, beaten
        1 teaspoon vanilla extract
        1 teaspoon baking soda
        salt, to taste
        1 ½ cups all-purpose flour
        ½ cup mini chocolate chips
        """,
        directions: """
        Preheat oven to 350˚F (180˚C).
        In a bowl, add the bananas and mash until smooth. Add in the melted butter and stir until well combined.
        Add the sugar, egg, vanilla, baking soda, salt, and flour, and stir until the batter is smooth.
        Add in the chocolate chips and pour the batter into a greased loaf pan. Top with additional chocolate chips.
        Bake for 50 minutes to an hour, or until a toothpick comes out clean.
        Cool completely before serving.
        Enjoy!
        """,
        category: "Dessert",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/55ac7efd43d74a6ead6576b4bfb28d7e/FB_Syphus_BananaBread_v3.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/one-bowl-chocolate-chip-banana-bread",
        date: "2023-09-04"),
    Recipe(
        name: "Slow-Roasted Pork Ribs With Maple Bbq Sauce",
        desc: "These juicy and fall-off-the-bone pork ribs are coated in a sticky maple BBQ sauce that's both sweet and tangy. Perfect for a summer cookout or a cozy winter meal.",
        ingredients: """
        for 4 servings

        5 lb pork spare ribs
        1 tablespoon paprika
        2 teaspoons coriander
        1 teaspoon garlic powder
        1 teaspoon onion powder
        1 teaspoon brown sugar
        1 teaspoon cinnamon
        ½ teaspoon chili flakes
        
        MAPLE BBQ SAUCE:
        3 tablespoons olive oil
        1 onion, finely diced
        3 cloves garlic, finely minced
        1 cup ketchup
        2 teaspoons worcestershire sauce
        ¼ cup balsamic vinegar
        ⅓ cup maple syrup
        1 teaspoon salt
        ½ cup water
        """,
        directions: """
        Preheat your oven to 300⁰. Combine the spices and brown sugar together, then rub all over the ribs. Wrap the ribs tightly in tin foil, then place on a baking sheet. Slowly roast the ribs for 2 - 2 ½ hours.
        While the ribs cook, make your maple bbq sauce. In a sauce pot, heat the olive oil over medium low heat. Add the onions and garlic and sweat for 8-10 minutes, or until softened and translucent. Add the ketchup, worcestershire, vinegar, syrup, salt, and water. Bring the sauce up to a gentle boil, then reduce to a low simmer for 35 minutes, or until the sauce has darkened and thickened.
        When the ribs are done, remove and unwrap the foil. To finish, grill the ribs on medium heat for 3-4 minutes per side, while brushing on the sauce to slightly caramelize. Serve with additional sauce on the side.
        Enjoy!
        """,
        category: "Main",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/video-api/assets/301935.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/slow-roasted-pork-ribs-with-maple-bbq-sauce",
        date: "2023-05-14"),
    Recipe(
        name: "Bacon And Egg Fried Rice",
        desc: "Bacon and Egg Fried Rice is the ultimate comfort food with a twist! This savory dish combines crispy bacon, fluffy eggs, and perfectly seasoned rice for a meal that's both satisfying and scrumptious.",
        ingredients: """
        for 4 servings

        3 large eggs
        kosher salt, to taste
        8 oz bacon
        1 medium yellow onion
        1 tablespoon vegetable oil
        5 cups cooked rice
        freshly ground black pepper, to taste
        1 teaspoon sugar
        2 tablespoons soy sauce
        chopped green onion, for garnish
        """,
        directions: """
        In a medium bowl, beat the eggs well. Season with a pinch of salt.
        Cut the bacon into 1-inch (2 ½-cm) pieces and finely dice the onion.
        Heat the vegetable oil in a wok or large nonstick pan over medium heat. Add beaten eggs and gently scramble; when they are almost done, transfer to a bowl and set aside.
        Add the bacon to the wok and cook until crisp and the fat has rendered. Remove the bacon from the pan and add to the bowl with the eggs, leaving the rendered fat behind in the pan.
        Add the onion to the bacon fat in the wok and stir-fry until translucent. Add the rice and stir-fry for 2–5 minutes, using a spatula to break up any clumps, until starting to crisp. Season with salt and black pepper, then add the sugar and soy sauce. Stir for another minute or so, until the rice is steaming and warmed through.
        Stir in the bacon and scrambled eggs until incorporated.
        Garnish the fried rice with scallions and serve warm.
        Enjoy!
        """,
        category: "Breakfast",
        image: "https://img.buzzfeed.com/video-api-prod/assets/8980272815ac45b1b101c3bab3113e24/BFV10428_BaconAngEggFriedRice-ThumbFB1080SQ.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/bacon-and-egg-fried-rice",
        date: "2023-05-04"),
    Recipe(
        name: "Strawberry Cheesecake French Toast",
        desc: "Indulge in a breakfast fantasy come true with strawberry cheesecake French toast. A luscious, creamy filling is nestled between slices of custard-soaked bread, topped with a cascade of ruby-red strawberries, creating a morning masterpiece like no other.",
        ingredients: """
        for 2 servings

        4 slices bread
        
        EGG WASH
        4 eggs
        1 tablespoon vanilla
        1 cup milk
        1 tablespoon cinnamon
        
        FILLING
        4 oz cream cheese, warmed, for spreading
        2 tablespoons vanilla extract
        2 tablespoons lemon juce
        ¾ cup heavy cream, optional
        1 ½ cups strawberry, diced, divided
        ⅓ cup sugar
        
        TOPPING
        confectioners sugar
        maple syrup
        """,
        directions: """
        Whisk eggs, cinnamon, vanilla and milk together in medium-large bowl to create egg wash.
        In medium bowl mix cream cheese, vanilla, sugar, lemon juice and heavy cream (optional).
        Take 2 slices of bread and spread mixture on both.
        Press sliced strawberries on both slices & press together.
        Dunk in egg wash.
        Melt butter in a skillet on medium-low heat and cook bread for 2-3 minutes or until crumbs are crispy and bread is more solid.
        Stack and garnish with strawberries and confectioners sugar. Add maple syrup to preference.
        Enjoy!
        """,
        category: "Breakfast",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/784939065f344700bd9be3791a83a379/BFV8700_French_Toast_4_Ways_FB1080.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/strawberry-cheesecake-french-toast-1",
        date: "2023-05-04"),
    Recipe(
        name: "Pigs In A Blanket",
        desc: "Pigs in a blanket are a classic party food that never goes out of style. The warm and flaky pastry is wrapped around a savory hot dog, creating the perfect handheld snack. They're easy to make and always a crowd favorite.",
        ingredients: """
        for 18 servings

        1 sheet puff pastry, thawed
        6 hot dogs
        6 slices cheddar cheese
        """,
        directions: """
        Preheat oven to 425°F (220˚C).
        Slice the puff pastry into 6 even rectangles. Place a slice of cheddar on top of each puff pastry piece.
        Place a hot dog on the cheddar, then roll it up.
        Slice each roll into 3 even pieces, and arrange the pieces evenly on a baking sheet lined with parchment paper with a 1-inch (2-cm) gap between the pieces.
        Bake for 15 minutes, until golden brown and flaky.
        Enjoy!
        """,
        category: "Appetizer",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/eb3907e9c5024f9da7b422958bd751f1/BFV11486_3IngredientAppetizers-FB1080SQ.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/pigs-in-a-blanket",
        date: "2023-05-04"),
    Recipe(
        name: "Garlic Parmesan Baked Carrot Fries",
        desc: "These garlic parmesan baked carrot fries are an alternative to traditional fries. The savory parmesan cheese and garlic seasoning make them irresistibly delicious. Perfect for a snack or a side dish!",
        ingredients: """
        for 2 servings

        2 carrots
        1 tablespoon oil
        ¼ cup parmesan cheese
        1 tablespoon garlic powder
        1 teaspoon pepper
        ¼ cup fresh parsley, chopped
        ½ teaspoon salt
        
        DIPPING SAUCE
        2 tablespoons greek yogurt
        1 tablespoon lemon juice
        ½ teaspoon garlic salt
        1 teaspoon pepper
        """,
        directions: """
        Preheat oven to 400°F (200˚C).
        Slice the top and bottom off of carrots then slice them in half, slice each half into thirds lengthwise.
        In a large bowl, mix ingredients with carrot sticks.
        Spread on a baking sheet.
        Bake for 15-20 minutes (depending on how crispy you want them).
        Mix together ingredients for dipping sauce in a small bowl.
        Serve warm carrots with dipping sauce. Topped with Parmesan and parsley.
        Enjoy!
        """,
        category: "Appetizer",
        image: "https://img.buzzfeed.com/video-api-prod/assets/42009b25b52b437bb47294729c0c8798/Thumb2.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/garlic-parmesan-baked-carrot-fries",
        date: "2023-05-04"),
    Recipe(
        name: "Baked Churro Bites",
        desc: "Crispy on the outside, soft on the inside - these bite-sized churros are a perfect treat to satisfy your sweet tooth.",
        ingredients: """
        for 30 churro bites

        1 cup water
        ⅓ cup butter
        2 tablespoons brown sugar
        salt, to taste
        1 cup flour
        1 teaspoon vanilla extract
        2 eggs
        cinnamon sugar, to coat
        chocolate, melted, to taste
        """,
        directions: """
        Preheat oven to 350°F (180˚C).
        In a saucepan over medium heat, melt the butter and brown sugar in the water and bring to a boil.
        Turn off the heat and stir in the flour.
        Take the pot off of the heat source, and mix in the vanilla, then the eggs one at a time.
        Transfer mixture to a piping bag with a 5 point, or star, tip.
        Pipe out thick 3-inch (8 cm) strips of churro batter onto a baking sheet covered with parchment, using a knife to release each piece from the piping tip, if needed.
        Bake for 10 minutes, then broil until golden brown.
        Dredge each churro in melted butter, then cinnamon sugar.
        Serve with melted chocolate if desired.
        Enjoy!
        """,
        category: "Snack",
        image: "https://img.buzzfeed.com/video-api-prod/assets/cd31e7efcb684a9b9df38bc141a59849/BFV14089_EasyBakedChurrosThumb1080.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/baked-churro-bites",
        date: "2023-05-14"),
    Recipe(
        name: "Soothing Lemon Ginger Tea",
        desc: "Sip on this soothing Lemon Ginger Tea to warm your soul and ease your mind. With a zesty kick of lemon and a spicy touch of ginger, this comforting concoction is perfect for cozy evenings or when you're feeling under the weather.",
        ingredients: """
        for 2 servings

        4 cups water
        1 lemon
        1 piece ginger, 2-3 inch (5-7 cm)
        2 teaspoons honey, or preferred sweetener
        """,
        directions: """
        Bring water to a boil and remove from heat.
        Cut lemon and ginger into thin slices. Add to the hot water.
        Steep for 5-10 minutes.
        Strain and pour tea into mug.
        Add honey, stir, and serve.
        Enjoy!
        """,
        category: "Drink",
        image: "https://img.buzzfeed.com/thumbnailer-prod-us-east-1/582546bfe041460c91b742c107861b58/BFV29207_ImmunityJuices4Ways_FB1080SQ.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/soothing-lemon-ginger-tea",
        date: "2023-05-04"),
    Recipe(
        name: "Homemade Cinnamon Rolls",
        desc: "Nothing says Sunday morning like a warm, gooey batch of homemade cinnamon rolls. Finish them with a generous topping of frosting, and be prepared to lick brown sugar off your fingers for the rest of the afternoon.",
        ingredients: """
        for 14 servings

        DOUGH
        ½ cup unsalted butter, melted
        2 cups whole milk, warm to the touch
        ½ cup granulated sugar
        2 ¼ teaspoons active dry yeast
        5 cups flour, divided
        1 teaspoon baking powder
        2 teaspoons salt
        
        FILLING
        ¾ cup butter, softened
        ¾ cup light brown sugar
        2 tablespoons ground cinnamon
        
        FROSTING
        4 oz cream cheese, softened
        2 tablespoons butter, melted
        2 tablespoons whole milk
        1 teaspoon vanilla extract
        1 cup powdered sugar
        """,
        directions: """
        Generously butter two disposable foil pie/cake pans.
        In a large bowl, whisk together warm milk, melted butter, and granulated sugar. The mixture should be just warm, registering between 100-110˚F (37-43˚C). If it is hotter, allow to cool slightly.
        Sprinkle the yeast evenly over the warm mixture and let set for 1 minute.
        Add 4 cups (500g) of all-purpose flour to the milk mixture and mix with a wooden spoon until just combined.
        Cover the bowl with a towel or plastic wrap and set in a warm place to rise for 1 hour.
        After 1 hour, the dough should have nearly doubled in size.
        Remove the towel and add an additional ¾ cup (95g) of flour, the baking powder, and salt. Stir well, then turn out onto a well-floured surface.
        Knead the dough lightly, adding additional flour as necessary, until the dough just loses its stickiness and does not stick to the surface.
        Roll the dough out into a large rectangle, about ½-inch (1 cm) thick. Fix corners to make sure they are sharp and even.
        Spread the softened butter evenly over the dough.
        Sprinkle evenly with brown sugar and a generous sprinkling of cinnamon.
        Press the mixture into the butter.
        Roll up the dough, forming a log, and pinch the seam closed. Place seam-side down. Trim off any unevenness on either end.
        Cut the log in half, then divide each half into 7 evenly sized pieces. About 1½ inches (8cm) thick each.
        Place 7 cinnamon rolls in each cake pan, one in the center, six around the sides. Cover with plastic wrap and place in a warm place to rise for 30 minutes.
        Preheat oven to 350˚F (180˚C).
        To prepare the frosting. In a medium-size mixing bowl, whisk together cream cheese, butter, whole milk, vanilla, and powdered sugar, until smooth.
        Remove plastic wrap. Bake the cinnamon rolls in a preheated oven for 25-30 minutes, until golden brown.
        While still warm, drizzle evenly with frosting.
        Enjoy!
        """,
        category: "Dessert",
        image: "https://img.buzzfeed.com/video-api-prod/assets/9d589367531e4c12a4937e30e521c865/fbthumb.jpg?resize=600:*&output-format=auto&output-quality=auto",
        url: "https://tasty.co/recipe/homemade-cinnamon-rolls",
        date: "2019-12-04")
    ]
}
