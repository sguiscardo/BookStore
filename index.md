# BookStore

---

In this project, you will use your knowledge of Swift to build an app that displays a list of `Books` on the main page. Navigating from a `UITableVIewCell` to a detail screen reveals a way to create `book` objects and add details for the `book`!

Students who complete this project independently or as a pairing will showcase their understanding of the following principles:

- Basic Storyboard constraints
- Creating Custom `class` objects
- Constants, Variables, and Basic Data Types
- Custom UITableVIew Cells
- Segue
- Source of Truth
- Collections Functions
- Control Flow
- IBActions && IBOutlets

---

## **Before we begin, if you have not, please `Fork` and `Clone` the `BookStore` repository.[Stateful: BookStore](https://github.com/Stateful-Academy/BookStore)**

Fetch and switch to the `starter` branch via the git command below

```bash
$ git switch starter
```

## **Design the Storyboards**

Our Book Store app will display `Book` objects in a list view. For this scene, we will be displaying three properties:

- `name`

- `title`

- `rating`

To have three labels present on a `UITableViewCell`, we must design and create a custom cell. As with all things, creating this `view` this is a two-step process. We first create what it looks like via the `Interface Builder`, then we create and assign a  `Controller.Swift` file to properly manage the view.

### **Book List View - Starting from the top down**

In your starter project, we have already deleted the `ViewController.swift` file and the default `View` on the `Main` storyboard for you. This way, you have a completely blank slate to build from.

1. Navigate to the `Object Library` and drag onto the canvas a `UITableViewController`.
2. Embed the new `UITableViewController` into a `NavigationController`
   - Be sure to set this as the initial view.

While we are setting up the initial settings of the `Table View`, this would be a great time to create the `.swfit` file that will manage this screen.

- Name this file `BookListTableViewController`.
  - Be sure to have this file be a `Subclass` of `UITableViewController`

Now that this file exists, we need to link, or subclass, our `UITableViewController` on the `Interface Builder`to our `BookListTableviewController` file.

## **Pausing here to build and run is a great practice. Your app should build and display a blank `UITableviewController`**

Maybe make a commit?

### **Now to add the view elements.**

1. Navigate to your `Object Library` and drag a `Bar Button Item` to the top left of the scene. Update the item to be an `Add` item.

2. We will need a few view elements to display text to the user.

3. Drag three of the appropriate `View Elements` onto the `UITableViewCell`

4. To keep us organized, give each of them a `title` that describes what they will display
   
   - (The Title will go here)
   - (author)
   - (rating)

5. Embed the `(author)` and the `(rating)` into a horizontal stack view.
   
   - Fill, fill, spaced set to `Standard`.

6. Embed this stack view into another stack view along with the `(Title will…)` label
   
   - This will be a vertical stack view
   
   - Fill, Fill, 8

7. Constrain the `Top Level` Stack view to 2 points from every side.
   
   - Everything should snap into place.

8. We will add just a few more attributes to a few of the labels.

9. On the (title) `label,` set the number of lines to 0

10. The (rating) `label`, via the `Size Inspector`, set the `Horizontal Hugging Priority` to one less than the vertical. This will ensure that the `(author)` label will grow in sized before the `(rating)` label does.

**Can we just pause and highlight that you just NESTED stack views! Look at you go!**

Our `UITableVIewCell` on this `UITableViewController` has a custom design. Because of this, the `Cell` will need its own `Controller` file to manage its state. Create and subclass the `UITableViewCell` the same way you did the `BookListTableViewController`.

> Be sure you are placing your files in the correct folders.

Pause here to build and run. Your app should build and display a blank `UITableviewController`with a cell that has three Labels. The (title) `label` should be the width of the cell, with the `(author)` and `(rating)` underneath it.

## **Great work! Make a git commit with the proper commit message and push it to your remote repo.**

---

## **Book Detail**

Our Book Store apps detail screen will display a few items: 

- A `save` button in the navbar

- A `label`, giving some instructions to the user

- A placeholder for an `image`

- Three `textFields`

- A `TextView`

- A "clear" `button`

Let’s jump in and add our items from the top down.

1. Start by adding a `save` button to the `Navigation Bar`
2. Drag a `UILabel` to the canvas, and enter the following constraints
   - Align the center x to the `Safe Area`
   - Align the `Top`, `Leading`, and `Trailing` constraints to 8 points from the `Safe Area`
3. Let's give this `Label` some unique attributes
   - Set the text to `Tell us about this book…`
   - Have the text alignment set to `center`
   - update the `font` to `Title 1`

We want to add a `UIImage` that will be a placeholder for the book's cover art. Once you place a `UIImageView` onto the canvas, lock it in with the following constraints.

- Align center x to the `Safe Area`
- Height to 100
- Top space, to the `UILabel` we just created above, set to 20
- Aspect Ratio of 1:1
- Via the `Attributes Inspector`, set the image to a `photo` provided by the system.
  - I like to have the `tint` be `Black Color`

Hype. It already looks fire.

We will need to add a few view elements that will receive text from the user.

- Drag three of the appropriate `View Elements` on the canvas
- To keep us organized, give each of them `Placeholder text` that describes what they will display
  - Enter Title...
  - Enter Author...
  - Enter Rating...

These will have the same configuration as the `UILabel` we place on the `UITableViewCell` 

- Embed the `Enter Author` and the `Enter Rating` into a horizontal stack view.
  - Fill, fill, spaced set to `Standard`
- Embed this stack view into another stack view along with the `Enter Title` view element
  - This will be a vertical stack view
  
  - Fill, Fill, 8
- Constrain the `Top Level` Stack view to 10 points from the `Top`, `Leading`, and `Trailing`
- On the `Enter Author` element, via the `Size Inspector`, set the Horizontal Hugging Priority to one less than the vertical. This will ensure that the `Enter Author` will grow in size before the `Enter Rating` label.

All we have left to do is add our `TextView` and our `Button`

- Drag a `TextView` onto the canvas and set the following constraints
  - Align `Leading` and `Trailing` to 10 from the `Safe Area`
  - Align the `Top` to 4 from the bottom of the `StackView`
    - This should solve any issues you may have faced with the `StackView`
- Drag a `Button` onto the canvas and lock everything in place with the following constraints
  - Align `Leading` and `Trailing`, and `Bottom` to 10 from the `Safe Area`
  - Align the `Top` to 8 from the bottom of the `TextView`
  - Height set to 44
  - Design the button with whatever colors you desire

## **Yay! Nice work! The view should be fully set up now and looking good!**

### **Wire up the views**

Create the proper `Controller` file for this `BookDetailViewController` and subclass accordingly. Drag out all the `IBOutlets` and `IBactions` you will need. When it comes to the naming these connections, we like these:

```swift
//MARK: - Outlets
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
...

//MARK: - Actions
 @IBAction func saveButtonTapped(_ sender: Any) {
...
      }
 @IBAction func clearButtonTapped(_ sender: Any) {

    }
```

Pause here to build and run. Fix any issues you have. Make a `git` commit with the proper `git message` and `push` it to your remote repo.

## **Great work!**

### **Model**

Our app will only have one Model Object this time.  Let's call it `Book`.  Create the necessary swift file and class for our model.

The properties for the Model will need to be as follows:

```swift
    var author: String
    var title: String
    var lastUpdated: Date
    var rating: Double
    var synopsis: String
```

Finish the creation of the `Model` Object with the necessary initializer. Within the declaration of this `init`, please set the `lastUpdated: Date` to a default value of a **Date** value **initialized** to the current date and time.

## **Pause here to build and run. Fix any issues you have. Make a `git` commit with the proper `git message` and `push` it to your remote repo.**

---

## **Model Controller**

Every `Model` should have a `Controller` to manage its state.

1. Create a new, blank `.Swift` file with the name `BookController`.
2. Declare a new `class` in here with the same name as your file.

This file will need to handle a few things for us. First, our `Controller` controls all the `CRUD` functions for our `Book` Object. We need to be able to create, update, and delete. We also need a collection that holds the `Book` objects.

We also need a way to ensure that when we reference our `books` collection, we are referencing the same `instance` of that collection. Now that we know our goals get building!

We feel confident that you have the ability to create this file without any additional instructions. 

Feel free to reference any project you’ve created to help you with the `syntax`.

A completed `Controller` file should have the following `CRUD` methods and proper `Mark: -` annotations.

- Create
- Update
- Delete
  - Hint: You’ll need to make a small update to the `Book.swift` file in order to use the `.firstIndex(of:)` method on this controller.

Pause here to build and run. Fix any issues you have. Make a `git` commit with the proper `git message` and `push` it to your remote repo.

---

## **View Controllers**

### **BookListTableView**

To display our `books` we will need to update the `numberOfRowsInSection` method to return the number of `books` in our array.

- Use dot notation to access the `BookController`, specifically the `shared instance`, and to then access the collection of `books`. From there access the `count` property

## **Pause**

Now we need to create and configure the `UITableVIewCell` to display properly before we can complete the `tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell` setup.

Navigate to the `BookTableViewCell` file you created earlier. 

- Note: If you haven’t created it, please create it now. This file should be a subclass of `UITableViewCell`. The cell on the storyboard should also be linked (subclassed) to this file.

You can delete all the code within the scope of the `class BooKTableViewCell`. Do that to give us a clean working space. Similar to how you create `IBOutlets` in other files, create the `IBOutlets` for the labels you designed earlier.

```swift
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
```

Under the `IBOutlet`s

- Declare a function with the name `updateViews`, that has one parameter of type `Book`, with no return value.
- Within the body of this function set the `text` properties of the `Label`s to their corresponding `property` from the `Book` that was passed in via the parameters.
  - Note: You will need to initialize a `String` with the `book.rating` to solve the type mismatch error
  - Teaching Note: The technical term for a method like this is `Instance Method`. It is called that because this is a function that we will be using on on an `Instance` of the `BookTableViewCell`

Great work! Let’s get back to our `BookListTableView` file and finish what we were working on.

Uncomment the `tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell` function. Within the body of this method we need to:

- Because we want this to use the `BookTableViewCell` type and not a regular, old-and-busted, basic `UITableViewCell`, we will need to optionally `Type Cast` the cell that will be used.
- We do this by using the keyword `as?`

```swift
guard let cell = tableView.dequeueReusableCell(withIdentifier: "You should maybe set this, ¯\_(ツ)_/¯ ", for: indexPath) as? BookTableViewCell else {return UITableViewCell()}
```

At this time, our cell is no longer a `UITableViewCell` but a shiny new `ButtonTableViewCell`. We now have access to all the properties and methods of that type.

Using `dot notation` call your `updateViews(book:)` instance method from the `cell`. This method needs you to pass in a `Book` object to work properly. Pass in the `Book` whose `index` matches the `row` for the `cell`

**Done <3**

Now, uncomment the `tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)` method. Within the body, if the `editingStye` is equal to `.delete` we will need to perform the following tasks

- Create a new constant that has the data type of  `Book`. Subscript on your source of trusth using the `indexPath.row`
- Pass that new constant to the `deleteBook` method on the shared instance of your `Model Controller`
  - Be sure to write this code before the line where the `tableView` deletes the rows

Our plan is to use the `Segue` we created from the `cell` to pass a `Book` object to the `BookDetailViewController`. But for that to succeed we need something to `catch` that data when it’s sent. To do this:

- On the `BookDetailViewController`, declare a new variable named `book` and set the type to be an optional `Book`.

Navigate back to the `BookListTableViewController`

---

### Segue

Uncomment the `prepare(for segue: UIStoryboardSegue, sender:Any?)` function. Within the body of this function, we need to double-check a few items before we can pass the `book` object to the `BookDetailViewController`. 

We first need to know which specific segue was triggered. If the selected segue is the one we are expecting, we need to know if the `destination` of that `segue` is where we are trying to go - the `BookDetailViewController`. If it is, then we need to know what `cell` the user tapped on so we can find the corresponding `book` object in our array. Once we have that we can pass that data along. 

Let's write the code that matches our goals:

- Create a conditional that checks if the `segue.identifier` is equal to the `String` you set for the identifier of the `segue` that we made on the `Interface Builder`
  - If you haven’t yet set the identifier in your storyboard.. you should
- If that is true, conditionally typecast the `segue.destination` `as?` the type of `ViewController` we aim to move the data to
- On the same conditional let's unwrap the `indexPath` for the selected row
- Using that `indexPath` assign the corresponding value from the `books` array to a new constant named `bookToPass`
- Assign the `book` property of the `destination` to the value of `bookToPass`

While you are on the `BookListTableViewController` add the life cycle method `viewWillAppear` and reload the tableview.

Well done! You just rocked a segue!

---

### **Detail View**

### **BookDetailViewController**

Navigate to the `BookDetailViewController` swift file for these next few steps. This file should already have your `MARK:-`s and the `IBOutlets` as we completed that step earlier.

Before we really dive in, delete any unused code. Now, to finish the last few steps, we need to build a helper function that will take a `Book`object and display the data accordingly.

- Declare a func with a proper name for what this function will be doing.
  - Hint: this func will updating the views
- This method should have one parameter of type `Book` optional
- Within the body, `guard` against `Book` not having a value
- Set your view elements to display the corresponding properties from the now unwrapped `book`
  - Be sure to fix the type mismatch error
- Call this function in `viewDidload`

All we have left to do is create our save function and one additional helper function to quickly delete the data displayed

### **Clear**

- Create a helper method named `resetView` with no parameters or return type.
- In this function, set the values of each of the `View Elements` to an empty string.
- Call this method in the `clearButtonTapped` action

### **Save**

Save will be the largest and most challenging method of the three. Within the scope of the `saveButtonTapped` method. Though, we know you got this.

- guard against any of the `text` properties of the `TextFields` being nil
- Be sure to solve any type mismatch error that may arise
- Conditionally unwrap the `book` optional property.
  - If there is a value
    - Then the user navigated here via the cells segue. This means they are trying to update an existing `Book`
    - Call your update method and pass in the unwrapped values
  - If there is NOT a value
    - Then the user did NOT navigate here via the cells segue. This means they are trying to create a new `Book`
    - Call your `createBook` function from your singleton.
- Outside the conditional unwrap but within the scope of the `saveButtonTapped` method:
  - Remove this screen and navigate back to the `BookListTableViewController`

Nice work! Build and run your app! Everything should be working - but fix any bugs that may be present! Well done. I think now would be a great time to commit and push.

Submit the assignment by pasting a link to your project repository

# **Stretch goals**

As an added challenge give these requirements a try

- Design your button to have the correct title, a border color, a border width, and rounded corners
- Update your design to have a `UIPickerView` that will set the `rating`
- Add a way to replace the `photo` Image with an image the user adds from their photo library
