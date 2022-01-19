# Book Store
---
In this project, you will use your knowledge of Swift to build an app that displays a list of `Authors` on the main page. Navigating from a `UITableVIewCell` to a detail screen reviews a way to add book objects to this author and also details about the books already added!

Students who complete this project independently or as a pairing will showcase their understanding of the the following principles:

Basic Storyboard constraints
Creating Custom `class` objects
Constants, Variables, and basic Data Types
UIImageview
Collections
Functions
Control Flow
IBActions && IBOutlets

## Design the Storyboards
#### Author List View
Our Book Store app will display `Author` objects in list view. For this scene, we will be displaying two properties, `name`, and `bookCount`. 

We’ll us a plus (+) button and the text from a `UITextfield` to create the `Author` objects. It's gonna be great! Let's get started…

Before we begin please delete both the `ViewController.swift` file, along with the default `View` on the `Main` storyboard.

Navigate to the `Object Library` and drag onto the canvas a `UITableViewController`. 

Embed the new `UITableViewController` into a `NavigationController`
Be sure to set this as the initial view.
While we are setting up the initial settings of the `Table View`, this would be a great time to create the `.swfit` file that will manage this screen. 

* Name this file `AuthorListTableviewController`. 
	* Be sure to have this file be a `Subclass` of `UITableViewController`

Now that this file exists we need to link, or subclass, our `UITableViewController` to our `AuthorListTableviewController` file.

Pausing here to build and run is a great practice. Your app should build and display a blank `UITableviewController`

Now to add the view elements.

* Navigate to your `Object Library` and drag a `Bar Button Item` to the top left of the scene. Update the item to be an `Add` item.
* We will need a view element that will receive text from the user. 
		* Drag a `UIView` element and hover it UNDER the navigation item - yet ABOVE the tableview. You should see a blue line appear.
		* Release to set the `UIView` element in the proper position.
		* To view this element easier, change the background color
		* Hover your cursor to the bottom-middle of the `UIView`. You should see an icon that looks like a balk bar with an up and down arrow. 
		* Using this icon, click and drag the `view` until the height is set to `60`
* Great! Now we need to drop a `UITextField` into that view.
* Give this element a `Placeholder` of `Enter Author name...`
* Lock this item in place with `8` point constraints for the `Top`, `Leading`, `Trailing`, and `Bottom`

For the `TableView`…
* Update the style of the `Table View Cell` to `Right Detail` via the `Attributes Inspector` with the cell selected.
* Might as well set the `Reuse Identifier` while you’re here.

Pause here to build and run. Your app should build and display a blank `UITableviewController`with a view element that receives text, and a blue (+) plus button. 

Great work!

#### Book Detail List View
Our Book Store apps detail screen will display `Book` objects in list view. For this scene, we will be displaying three properties, `name`,  `title`, and `rating`. We also will have cells that display data.

We will us a (save) button and the `text` from the Title `UITextfield`  and Rating `UITextField`to create the `Book` objects. It's gonna be great! Let's get started…

Repeat the same steps in the previous section until you have a tableview which is properly subclassed, has a save `Bar Button Item`, and an empty `UIView` colored as you choose, with a set height of `108`

Now to add the view elements.

* Now we need to drop a two `UITextField` , and one `UILabel` into that view.
* To make this easier give each element a placeholder that will describe the data it will present or receive
	* TextField 1 - Book Title
	* Label - Authors name
	* TextField 2 - Rating

Embed all three elements into a vertical stack view

* Set the alignment to Fill
* Set the Distribution to Fill Equally
* Set the spacing to `8`
* Lock this `StackView` in place with `8` point constraints for the `Top`, `Leading`, `Trailing`, and `Bottom`
	* I just like 8, ¯\_(ツ)_/¯ 
* Everything should be a bit wonky, no stress. We will get there in the end

For the next set of instructions ensure the order of your view elements in the view hierarchy are:
* Vertical Stack View
	* Title
	* Name
	* Rating

Select both the `Name` label and the `Rating` Textfield and embed these two into a `Horizontal` Stack View.

* Set the alignment to Fill
* Set the Distribution to Fill
* Set the spacing to 40
	* The label should remain small-ish, and the text field should be larger.
The end result should be something like this:

[image:AA66B7E9-69F1-49D5-83B6-E22F78C143F1-13746-0000BE4CCFB8E31D/Screen Shot 2022-01-19 at 12.10.49 PM.png]

Can we pause for a moment and talk about how you just NESTED stack views? What are you, a pro?

For the `TableView`…

* Update the style of the `Table View Cell` to `Subtitle` via the `Attributes Inspector` with the cell selected.
* Might as well set the `Reuse Identifier` while you’re here.
* If you haven’t yet, drag a `Segue` from the cell of the `AuthorListTableViewController` to this `BookDetailTableViewController`
	* Choose a segue identifier that makes sense

Pause here to build and run. Your app should build and display a blank `UITableviewController`with a view element that receives text, and a blue (+) plus button.  Tapping on that (+) button navigates you to a detail screen with two `UITextFields`, a `UILabel`, beautifully designed above an empty `UITableView`. 

Now is a great time to create the necessary `IBActions` and `IBoutlets` for each `ViewController` if you have not already. Be sure your app builds before you move on.

Great work!
---

## Rest of the Owl
### Model(s)

Our app will only have two Model Objects this time. `Author` and `Book`
Create the necessary swift files and empty classes for both these objects.

The properties for the Models will need to be as follows:
* Author
	* name
	* books
		* books should be set to be of type a collection of `Book` objects
		* Set this to the default value of an empty array
* Book
	* author: Author
	* title: String
	* lastUpdated: Date
		* Set this to a default value of Date()
	* rating: Double

Finish your `Model` Objects with the necessary initializers.

###  Model Controller(s)
