# Specifications for the Rails Assessment

Specs:

- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise)
- [x] Include login (how e.g. Devise)
- [x] Include logout (how e.g. Devise)
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:

- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate

# Specifications for the Rails with JavaScript Assessment

Specs:

- [x] Must have a Rails Backend and new requirements implemented through JavaScript.
- [x] Make use of ES6 features as much as possible (e.g. arrow functions, `let` & `const`).
- [x] Must translate the JSON responses into Javascript Model Objects using either ES6 class or constructor function syntax.
- [x] At least one of the JS Model Objects must have a method on the prototype.
- [x] Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.
- [x] Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.
- [x] Your Rails application must return at least one serialized `has-many` relationship through JSON that is then rendered to the page.
- [ ] Must use your Rails application to render a form for creating a resource that is submitted dynamically through JavaScript, using a JSON response of the newly created resource to render to the DOM without a page refresh.

Readme File Contains:

- [ ] Application Description
- [ ] Installation guide (e.g. fork and clone repo, migrate db, bundle install, etc)
- [ ] Contributors guide (e.g. file an issue, file an issue with a pull request, etc)
- [ ] Licensing statement at the bottom (e.g. This project has been licensed under the MIT open source license.)

Repo General

- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message
