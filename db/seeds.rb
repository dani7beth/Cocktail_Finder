# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Cocktail.create(
    name: "Alexander",
    served: "Straight up; without ice",
    garnish: "Nutmeg",
    drinkware: "Cocktail",
    ingredients: "3 cl cognac, 3 cl brown crème de cacao, 3 cl light cream",
    instructions: "Shake all ingredients with ice and strain contents into a cocktail glass. Sprinkle nutmeg on top and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Alexander_Cocktail.png",
    timing: "After dinner"
)
Cocktail.create(
    name: "Americano",
    served: "On the rocks; poured over ice",
    garnish: "Half an orange slice, Lemon twist",
    drinkware: "Highball",
    ingredients: "3 cl Campari, 3 cl red vermouth, a splash of soda water",
    instructions: "Pour the Campari and vermouth over ice into a highball glass, add a splash of soda water and garnish with half orange slice and a lemon twist.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Americano_cocktail_at_Nightwood_Restaurant.jpg/440px-Americano_cocktail_at_Nightwood_Restaurant.jpg",
    timing: "Before dinner"
)
Cocktail.create(
    name: "Angel Face",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "3 cl gin, 3 cl Apricot brandy, 3 cl Calvados",
    instructions: "Pour all ingredients into cocktail shaker filled with ice cubes. Shake and strain into a chilled cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/IBA_Cocktail_Angel_Face_%2828068833805%29.jpg/440px-IBA_Cocktail_Angel_Face_%2828068833805%29.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Aviation",
    served: "Straight up; without ice",
    garnish: "Cherry",
    drinkware: "Cocktail",
    ingredients: "45 ml gin, 15 ml lemon juice, 15 ml maraschino liqeur, 1 barspoon crème de violette",
    instructions: "Add all ingredients into a cocktail shaker filled with ice. Shake well and strain into cocktail glass. Garnish with a cherry.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Aviation_Cocktail.jpg/440px-Aviation_Cocktail.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Between the Sheets",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "3 cl white rum, 3 cl cognac, 3 cl triple sec, 2 cl fresh lemon juice",
    instructions: "Pour all ingredients into shaker with ice cubes, shake, strain into chilled cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Between_The_Sheets_Cocktail.jpg/440px-Between_The_Sheets_Cocktail.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Boulevardier",
    served: "On the rocks; poured over ice",
    garnish: "Orange zest",
    drinkware: "Old Fashioned",
    ingredients: "45 ml (1.5 parts) bourbon, 30 ml (1 part) sweet red vermouth, 30 ml (1 part) Campri",
    instructions: "Stir with ice, strain garnish and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Society_Lounge_-_Boulevardier_-_16164913902.jpg/440px-Society_Lounge_-_Boulevardier_-_16164913902.jpg",
    timing: ""
)
Cocktail.create(
    name: "Brandy Crusta",
    served: "up",
    garnish: "Orange or Lemon Twist",
    drinkware: "Cocktail",
    ingredients: "52.5 ml brandy, 7.5 ml Maraschino Luxardo, 1 barspoon Curaçao, 15 ml fresh lemon juice, 1 barspoon simple syrup, 2 dashes aromatic bitters",
    instructions: "Mix all ingredients with ice cubes in a mixing glass. Strain into slim cocktail glass rimmed with sugar.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/15-09-26-RalfR-WLC-0306.jpg/440px-15-09-26-RalfR-WLC-0306.jpg",
    timing: ""
)
Cocktail.create(
    name: "Brandy Crusta",
    served: "up",
    garnish: "Orange or Lemon Twist",
    drinkware: "Cocktail",
    ingredients: "52.5 ml brandy, 7.5 ml Maraschino Luxardo, 1 barspoon Curaçao, 15 ml fresh lemon juice, 1 barspoon simple syrup, 2 dashes aromatic bitters",
    instructions: "Mix all ingredients with ice cubes in a mixing glass. Strain into slim cocktail glass rimmed with sugar.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/15-09-26-RalfR-WLC-0306.jpg/440px-15-09-26-RalfR-WLC-0306.jpg",
    timing: ""
)
Cocktail.create(
    name: "Casino",
    served: "Straight up; without ice",
    garnish: "Lemon twist and maraschino cherry",
    drinkware: "Cocktail",
    ingredients: "4 cl gin (Old Tom), 1 cl Maraschino, 1 cl fresh lemon juice, 2 dashes orange bitters",
    instructions: "Pour all ingredients into shaker with ice cubes. Shake well. Strain into chilled cocktail glass. Garnish with a lemon twist and a maraschino cherry. Serve without a straw.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5f/Casino_Cocktail_%289120690108%29.jpg/440px-Casino_Cocktail_%289120690108%29.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Clover Club",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "4.5 cl Gin, 1.5 cl lemon juice, 1.5 cl raspberry syrup, 1 egg white or Vegan Alternative Aquafaba 20 ml or Cocktails Foamer 4 drops",
    instructions: "Dry shake ingredients to emulsify, add ice, shake and served straight up.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Cloverclub.jpg/440px-Cloverclub.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Daiquiri",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "6 cl white rum, 2 cl lime juice, 2 barspoons superfine sugar",
    instructions: "In a cocktail shaker add all ingredients. Stir well to dissolve the sugar. Add ice and shake. Strain into chilled cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Classic_Daiquiri_in_Cocktail_Glass.jpg/440px-Classic_Daiquiri_in_Cocktail_Glass.jpg",
    timing: "Happy Hour / Summer drink"
)
Cocktail.create(
    name: "Dry Martini",
    served: "up (or on the rocks)",
    garnish: "Olive or lemon twist",
    drinkware: "Cocktail",
    ingredients: "6 cl (6 parts) gin, 1 cl (1 parts) dry vermouth",
    instructions: "Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain into chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/15-09-26-RalfR-WLC-0084.jpg/440px-15-09-26-RalfR-WLC-0084.jpg",
    timing: "Before dinner"
)
Cocktail.create(
    name: "Gin fizz",
    served: "On the rocks; poured over ice",
    garnish: "Lemon slice",
    drinkware: "Old Fashioned",
    ingredients: "4.5 cl Gin, 3 cl fresh lemon juice, 1 cl simple syrup, splash of soda water",
    instructions: "Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/15-09-26-RalfR-WLC-0032.jpg/440px-15-09-26-RalfR-WLC-0032.jpg",
    timing: ""
)
Cocktail.create(
    name: "Hanky-Panky",
    served: "up",
    garnish: "Orange Zest",
    drinkware: "Cocktail",
    ingredients: "45 ml London Dry Gin, 45 ml Sweet Red Vermouth, 7.5 ml Fernet Branca",
    instructions: "Stirred over ice, strained into a chilled glass, garnished, and served up.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/23/Hanky_Panky_cocktail.jpg/440px-Hanky_Panky_cocktail.jpg",
    timing: ""
)
Cocktail.create(
    name: "John Collins",
    served: "On the rocks; poured over ice",
    garnish: "Lemon slice and a maraschino cherry",
    drinkware: "Collins",
    ingredients: "4.5 cl (3 parts) gin, 3 cl (2 parts) freshly squeezed lemon juice, 1.5 cl (1 part) sugar syrup, 6 cl (4 parts) carbonated water",
    instructions: "Pour all ingredients directly into highball glass filled with ice. Stir gently. Garnish. Add a dash of Angostura bitters.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/IBA_Cocktail_John_Collins_%2829221732881%29.jpg/440px-IBA_Cocktail_John_Collins_%2829221732881%29.jpg",
    timing: ""
)
Cocktail.create(
    name: "Last Word",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "22.5 ml gin, 22.5 lime juice, 22.5 ml green Chartreuse, 22.5 ml maraschino liquer",
    instructions: "Shake with ice and strain into a cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/43/The_Last_Word_cocktail_raised.jpg/440px-The_Last_Word_cocktail_raised.jpg",
    timing: ""
)
Cocktail.create(
    name: "Manhattan",
    served: "Straight up; without ice",
    garnish: "Maraschino cherry",
    drinkware: "Cocktail",
    ingredients: "5 cl Rye whiskey, 2 cl Sweet red vermouth, Dash Angostura bitters",
    instructions: "Stirred over ice, strained into a chilled glass, garnished, and served up.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Manhattan_Cocktail2.jpg/440px-Manhattan_Cocktail2.jpg",
    timing: "Before dinner"
)
Cocktail.create(
    name: "Martinez",
    served: "up",
    garnish: "Lemon zest",
    drinkware: "Cocktail",
    ingredients: "45 ml London Dry Gin, 45 ml Sweet Red Vermouth, 1 barspoon Maraschino Liquer, 2 Dashes Orange bitters",
    instructions: "Stirred over ice, strained into a chilled glass, garnished, and served up.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dc/Martinez_Cocktail.jpg/440px-Martinez_Cocktail.jpg",
    timing: ""
)
Cocktail.create(
    name: "Mary Pickford",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "4.5 cl white rum, 4.5 cl fresh pineapple juice, 0.5 cl Grenadine, 0.75 cl Maraschino",
    instructions: "Shake and strain into a chilled large cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Mary_Pickford_Cocktail.jpg/440px-Mary_Pickford_Cocktail.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Monkey Gland",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "45 ml gin, 45 ml orange juice, 1 tablespoon absinthe, 1 tablespoon grenadine",
    instructions: "Shake well over ice cubes in a shaker, strain into a chilled cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Monkey_Gland_%2811677703163%29.jpg/440px-Monkey_Gland_%2811677703163%29.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Negroni",
    served: "On the rocks; poured over ice",
    garnish: "Orange slice",
    drinkware: "Old Fashioned",
    ingredients: "3 cl gin, 3 cl seet red vermouth, 3 cl Campari",
    instructions: "Stir into glass over ice, garnish and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Negroni_served_in_Vancouver_BC.jpg/440px-Negroni_served_in_Vancouver_BC.jpg",
    timing: "Before dinner"
)
Cocktail.create(
    name: "Old Fashioned",
    served: "On the rocks; poured over ice",
    garnish: "Orange slice or zest, and cocktail cherry",
    drinkware: "Old Fashioned",
    ingredients: "4.5 cl Bourbon or Rye whiskey, few dashes of Angostura bitters, 1 sugar cube, few dashes plain water",
    instructions: "Place sugar cube in old fashioned glass and saturate with bitters, add a few dashes of plain water. Muddle until dissolved. Fill the glass with ice cubes and add whiskey. Garnish with orange slice or zest, and a cocktail cherry.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Whiskey_Old_Fashioned1.jpg/440px-Whiskey_Old_Fashioned1.jpg",
    timing: "Before dinner"
)
Cocktail.create(
    name: "Paradise",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "3.5 cl (7 parts) gin, 2 cl (4 parts) apricot brandy, 1.5 cl (3 parts) orange juice",
    instructions: "Shake together over ice. Strain into cocktail glass and serve chilled.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/Paradise_cocktail.jpg/440px-Paradise_cocktail.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Planter's Punch",
    served: "On the rocks; poured over ice",
    garnish: "Orange zest",
    drinkware: "Highball",
    ingredients: "4.5 cl Jamaican rum, 1.5 cl fresh lime juice, 3 cl sugar cane juice",
    instructions: "Pour all ingredients into a tumbler glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Planters_Punch_2.jpg/440px-Planters_Punch_2.jpg",
    timing: ""
)
Cocktail.create(
    name: "Porto Flip",
    served: "Straight up; without ice",
    garnish: "Grated nutmeg",
    drinkware: "Cocktail",
    ingredients: "1.5 cl (3 parts) brandy, 4.5 cl (9 parts) port, 1 cl (2 parts) egg yolk",
    instructions: "Shake ingredients together in a mixer with ice. Strain into glass, garnish and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Porto_Flip.jpg/440px-Porto_Flip.jpg",
    timing: "After dinner"
)
Cocktail.create(
    name: "Ramos Gin Fizz",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Collins",
    ingredients: "4.5 cl Gin, 1.5 cl fresh lime juice, 1.5 cl fresh lemon juice, 3 cl simple syrup, 6 cl cream, 1 egg white, 3 dashes orange flower water, 2 drops vanilla extract, soda water",
    instructions: "All ingredients except the soda are poured in a mixing glass, dry shaken (no ice) for two minutes, then ice is added and shaken hard for another minute. Strain into a highball glass without ice and topped with soda.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/75/Ramos_Gin_Fizz.jpg/440px-Ramos_Gin_Fizz.jpg",
    timing: ""
)
Cocktail.create(
    name: "Rusty Nail",
    served: "On the rocks; poured over ice",
    garnish: "Lemon twist",
    drinkware: "Old Fashioned",
    ingredients: "4.5 cl Scotch Whisky, 2.5 cl Drambuie",
    instructions: "Pour all ingredients directly into old fashioned flass filled with ice. Stir gently. Garnish with a lemon twist. Serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Rusty_Nail_a_cocktail_by_%40tokenchick13_%2816503594826%29.jpg/440px-Rusty_Nail_a_cocktail_by_%40tokenchick13_%2816503594826%29.jpg",
    timing: "After dinner",
)
Cocktail.create(
    name: "Sazerac",
    served: "Straight up; without ice",
    garnish: "Lemon peel",
    drinkware: "Old Fashioned",
    ingredients: "5 cl cognac, 1 cl absinthe, one sugar cube, two dashes peychaud's bitters",
    instructions: "Rinse a chilled old-fashioned glass with the absinthe, add crushed ice, and set it aside. Stir the remaining ingredients over ice and set it aside. Discard the ice and any excess absinthe from the prepared glass, and strain the drink into the glass. Add the lemon peel for garnish.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/SazeracRooseveltNOLA1July2009.JPG/440px-SazeracRooseveltNOLA1July2009.JPG",
    timing: "After dinner"
)
Cocktail.create(
    name: "Sidecar",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "5 cl cognac, 2 cl triple sec, 2 cl lemon jucie",
    instructions: "Pour all ingredients into cocktail shaker filled with ice. Shake well and strain into cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Sidecar-cocktail.jpg/440px-Sidecar-cocktail.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Stinger",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "5 cl cognac, 2 cl white crème de menthe",
    instructions: "Pour in a mixing glass with ice, stir and strain into a cocktail glass. May also be served on rocks in a rocks glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Stinger_Cocktail.jpg/440px-Stinger_Cocktail.jpg",
    timing: ""
)
Cocktail.create(
    name: "Tuxedo",
    served: "Straight up; without ice",
    garnish: "Cherry, lemon zest",
    drinkware: "Cocktail",
    ingredients: "3 cl gin (Old Tom), 3 cl dry vermouth, 1/2 barspoon maraschino, 1/4 barspoon absinthe, 3 dashes orange bitters",
    instructions: "Stir all ingredients with ice and strain into a cocktail glass. Garnish with a cherry and a twist of lemon zest.",
    image: "https://hips.hearstapps.com/esq.h-cdn.co/assets/15/18/1430422708-dmg-tuxedo-cocktail-004.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Vieux Carré",
    served: "Straight up; without ice",
    garnish: "Orange zest and maraschino cherry",
    drinkware: "Cocktail",
    ingredients: "3 cl rye whiskey, 3 cl cognac, 3 cl sweet vermouth, 1 barspoon bénédictine, 2 dashes peychaud's bitters",
    instructions: "Pour all ingredients into a mixing glass with ice cubes. Stir well. Strain into chilled cocktail glass. Garnish with orange zest and a maraschino cherry.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Vieux_Carre_Cocktail.jpg/440px-Vieux_Carre_Cocktail.jpg",
    timing: ""
)
Cocktail.create(
    name: "Whiskey Sour",
    served: "On the rocks or straight up",
    garnish: "Maraschino cherry and a half orange slice",
    drinkware: "Old Fashioned",
    ingredients: "4.5 cl (3 parts) bourbon whiskey, 3 cl (2 parts) fresh lemon juice, 1.5 cl (1 part) simple syrup",
    instructions: "If served 'On the rocks', strain ingredients into old-fashioned glass filled with ice.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Whiskey_Sour.jpg/440px-Whiskey_Sour.jpg",
    timing: ""
)
Cocktail.create(
    name: "White Lady",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Cocktail",
    ingredients: "4 cl gin, 3 cl triple sec, 2 cl lemon juice",
    instructions: "Add all ingredients into cocktail shaker filled with ice. Shake well and strain into large cocktail glass.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/White_Lady_-_Beefeater_gin%2C_Cointreau%2C_fresh_lemon_juice_%2812403540403%29.jpg/440px-White_Lady_-_Beefeater_gin%2C_Cointreau%2C_fresh_lemon_juice_%2812403540403%29.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Bellini",
    served: "Straight up; without ice",
    garnish: "",
    drinkware: "Champagne flute",
    ingredients: "10 cl (2 parts) prosecco, 5 cl (1 part) fresh peach purée",
    instructions: "Pour peach purée into chilled glass, add sparkling wine. Stir gently.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Bellini_Cipriani%2C_Macaroni_Grill%2C_Dunwoody_GA.jpg/440px-Bellini_Cipriani%2C_Macaroni_Grill%2C_Dunwoody_GA.jpg",
    timing: ""
)
Cocktail.create(
    name: "Bloody Mary",
    served: "On the rocks; poured over ice",
    garnish: "Celery stalk and lemon wedge",
    drinkware: "Highball",
    ingredients: "4.5 cl (3 parts) vodka, 9 cl (6 parts) tomato juice, 1.5 cl (1 part) lemon juice, 2 to 3 dashes of worcestershire sauce, tabasco sauce, celery salt, black pepper",
    instructions: "Stirring gently, pour all ingredients into highball glass. Garnish.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Bloody_Mary_Coctail_with_celery_stalk_-_Evan_Swigart.jpg/440px-Bloody_Mary_Coctail_with_celery_stalk_-_Evan_Swigart.jpg",
    timing: ""
)
Cocktail.create(
    name: "Cosmopolitan",
    served: "Straight up; without ice",
    garnish: "Lime slice",
    drinkware: "Cocktail",
    ingredients: "4 cl vodka citron, 1.5 cl cointreau, 1.5 cl fresh lime juice, 3 cl cranberry juice",
    instructions: "Shake all ingredients in cocktail shaker filled with ice. Strain into a large cocktail glass. Garnish with lime slice.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Cosmopolitan_%285076906532%29.jpg/440px-Cosmopolitan_%285076906532%29.jpg",
    timing: "All day"
)
Cocktail.create(
    name: "Irish Coffee",
    served: "Hot",
    garnish: "",
    drinkware: "Irish coffee mug",
    ingredients: "4 cl (2 parts) irish whiskey, 8 cl (4 parts) hot coffee, 3 cl (1 1/2 parts) fresh cream, 1 tsp brown sugar",
    instructions: "Heat the coffee, whiskey and sugar; do not boil. Pour into glass and top with cream; serve hot.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/Irish_coffee_glass.jpg/440px-Irish_coffee_glass.jpg",
    timing: ""
)
Cocktail.create(
    name: "Long Island Iced Tea",
    served: "On the rocks; poured over ice",
    garnish: "Lemon slice",
    drinkware: "Highball",
    ingredients: "1.5 cl Tequila, 1.5 cl Vodka, 1.5 cl White rum, 1.5 cl Triple sec, 1.5 cl Gin, 2.5 cl Lemon juice, 3 cl simple syrup, top with Cola",
    instructions: "Add all ingredients into highball glass filled with ice. Stir gently. Optionally garnish with lemon slice.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Long_Island_Iced_Teas.jpg/440px-Long_Island_Iced_Teas.jpg",
    timing: ""
)
Cocktail.create(
    name: "Mai Tai",
    served: "On the rocks; poured over ice",
    garnish: "Spearmint leaves and lime shell",
    drinkware: "Old Fashioned",
    ingredients: "3 cl amber Jamaican rum, 3 cl Martinique molasses rum, 1.5 cl orange curaçao, 1.5 cl orgeat syrup, 3 cl fresh lime juice, 0.75 cl simple syrup",
    instructions: "Shake all ingredients with ice. Strain into glass. Garnish and serve with straw.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Trader_Vic%27s_1944_Mai_Tai.jpg/440px-Trader_Vic%27s_1944_Mai_Tai.jpg",
    timing: ""
)
Cocktail.create(
    name: "Margarita",
    served: "On the rocks; poured over ice",
    garnish: "Salt on the rim",
    drinkware: "Margarita",
    ingredients: "5 cl (10 parts) tequila, 2 cl (4 parts) triple sec, 1.5 cl (3 parts) lime juice",
    instructions: "Pour all ingredients into shaker with ice. Shake well and strain into cocktail glass rimmed with salt.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/MargaritaReal.jpg/440px-MargaritaReal.jpg",
    timing: ""
)
Cocktail.create(
    name: "Mimosa",
    served: "Straight up; without ice",
    garnish: "Orange twist",
    drinkware: "Champagne flute",
    ingredients: "7.5 cl champagne, 7.5 orange juice",
    instructions: "Ensure both ingredients are well chilled, then mix into the glass. Serve cold.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Pool-side_Mimosas_at_The_Standard_Hotel.jpg/440px-Pool-side_Mimosas_at_The_Standard_Hotel.jpg",
    timing: ""
)
Cocktail.create(
    name: "Mojito",
    served: "On the rocks; poured over ice",
    garnish: "Sprig of mint (Yerba buena in the original recipe), slice of lime",
    drinkware: "Collins",
    ingredients: "4 cl white rum, 3 cl fresh lime juice, 6 sprigs of mint, 2 teaspoons sugar (or 2 cl of sugar syrup)",
    instructions: "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish with sprig of mint leaves and lemon slice. Serve with straw.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Mojito98775.jpeg/440px-Mojito98775.jpeg",
    timing: ""
)
Cocktail.create(
    name: "Piña Colada",
    served: "Blended with ice (frozen style)",
    garnish: "Pineapple slice and/or maraschino cherry",
    drinkware: "Poco Grande",
    ingredients: "50 ml White Rum, 30 ml Coconut Cream, 50 ml Fresh Pineapple Juice",
    instructions: "Blend all the ingredients with ice in an electric blender, pour into a large goblet or Hurricane glass and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Pi%C3%B1a_Colada.jpg/440px-Pi%C3%B1a_Colada.jpg",
    timing: ""
)
Cocktail.create(
    name: "Tequila Sunrise",
    served: "On the rocks; poured over ice",
    garnish: "Orange slice and cherry",
    drinkware: "Collins",
    ingredients: "4.5 cl (3 parts) tequila, 9 cl (6 parts) orange juice, 1.5 cl (1 part) grenadine syrup",
    instructions: "Pour the tequila and orange juice into glass over ice. Add the grenadine, which will sink to the bottom. Stir gently to create the sunrise effect. Garnish and serve.",
    image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Tequila_Sunrise_glass.jpg/440px-Tequila_Sunrise_glass.jpg",
    timing: ""
)

