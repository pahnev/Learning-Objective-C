# Learning-Objective-C
 Collection of project done while learning Objective-C and iOS programming.
 

### Contents
- **TeamTreehouse**
    - [Blog Reader App](#blog-reader-android-app-treehouse)
    - [Diary App Using Core Data](#diary-app-using-core-data)
    - [Photo Browser App](#photo-browser-app)
    - [Self Destructing message app](#self-destructing-message-app-treehouse)



#Blog Reader App [treehouse](http://teamtreehouse.com/library/build-a-blog-reader-iphone-app)
---

**Challenge 1**
> **Table View Sections**
> 
> Create sections in your table view to categorize blog posts into Design, Development and Mobile.

Hint: You can create three separate arrays and modify the method **numberOfSectionsInTableView** to return the number three. In your **cellForRowAtIndexPath** method check **indexPath.section** and write an **if** statement or a **switch** statement to return text from the appropriate array.


**Challenge 2**
> JSON Google Search
> 
> Use the Google JSON Search API URL to request JSON search results from Google: [https://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=JSON](https://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=JSON) 
> 
> The last part of the URL after "q=" is the search term.


**Challenge 3**
> 
Instead of dates display the age of a blog post. For example, few hours ago, X days ago, weeks ago, months ago> 

**Challenge 4**
> 
Make a multi-threaded version of the Blog Reader app. Currently, the JSON request is being made on the main thread which makes the user interface unresponsive. Create a multi-threaded version of this app so that it parses and loads the JSON data in a separate thread without blocking interaction with the main UI.
>
>Hint: You can use AFNetworking to make an asynchronous request.
>
>In addition, use SDWebImage to download the images asynchronously.


---
---
---
---
#Diary App Using Core Data [treehouse](http://teamtreehouse.com/library/build-a-diary-app-using-core-data)
---
**Challenge 1:**

> Implement an “editing” mode in our UITableView instance that will show the user the deletion controls on the left-hand side of the table view. Use the editButtonItem property of the entry view controller as the navigation item’s left bar button item.

**Challenge 2:**

> Implement the [reorder](https://developer.apple.com/library/ios/documentation/UserExperience/Conceptual/TableView_iPhone/ManageReorderRow/ManageReorderRow.html#//apple_ref/doc/uid/TP40007451-CH11-SW1) functionality to move around the diary entries in your table view controller. Hint: here is Apple's [Core Data Sample app](https://developer.apple.com/library/ios/samplecode/CoreDataBooks/Introduction/Intro.html#//apple_ref/doc/uid/DTS40008405-Intro-DontLinkElementID_2)

> Read up on the [documentation](https://developer.apple.com/library/ios/documentation/Cocoa/Conceptual/CoreData/Articles/cdCreateMOs.html#//apple_ref/doc/uid/TP40001654-CJBDBHCB) surrounding insertion and deletion of managed objects within a context.


**Challenge 3:**

> 
> Use the UITextViewDelegate protocol to limit the number of characters in an entry’s body to two hundred. Also use the protocol to implement a counter to let the user know how many characters have been used so far.


---
---
---
---
#Photo Browser App [treehouse](http://teamtreehouse.com/library/build-a-diary-app-using-core-data)
---
**Challenge 1:**

> 1. Add a header to your collection view that displays a title saying "Photos with hash tag #photobomb".

> 2. Set the status bar content color to white using [preferredStatusBarStyle](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIViewController_Class/Reference/Reference.html#//apple_ref/occ/instm/UIViewController/preferredStatusBarStyle). Set navigation bar title color using the [appearance proxy](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAppearance_Protocol/Reference/Reference.html).


**Challenge 2:**

> We are storing the user’s credentials in **NSUserDefaults** right now. The Keychain is a much better place to store credentials. Try using the Keychain to read and write credentials. Something like [SSKeychain](https://github.com/soffes/sskeychain) may help.



**Challenge 3:**

> Implement a [swipe down gesture](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISwipeGestureRecognizer_Class/Reference/Reference.html) to close the detail view controller.

**Challenge 4:**

> Instead of the fade-in transition, try moving-in the detail view controller from the side


**Challenge 5**
> On the photo detail view, attach a spring so you can drag the view away from it’s spot on screen and make it bounce back to where it started. Use the [UIAttachmentBehavior](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIAttachmentBehavior_Class/Reference/Reference.html) to achieve this effect.

> In the full screen photo view, add [like](http://instagram.com/developer/endpoints/tags/#get_tags_media_recent) and [comment count](http://instagram.com/developer/endpoints/tags/#get_tags_media_recent) with data from the Instagram API.

> To take it even one step further modify the app with another hash tag and customize the view transitions. Get creative and make the app your own!


---
---
---
---

#Self Destructing message app [treehouse](http://teamtreehouse.com/library/build-a-selfdestructing-message-iphone-app)
---
**Challenge 1:**

> **Tabs Sans Storyboard**
> 
> We didn't do much with code in this stage. We configured our tabs using a storyboard, but it's possible (and sometimes necessary) to create and configure a UITabBarController dynamically in code.

> Create a simple app that has one view controller (it can be blank). In its **viewDidLoad** method, add a UITabBarController, and then add 5 tabs programmatically, labeled "1", "2", etc.

> **Dynamic Tabs**
> 
> Add a new root view controller and embed it in a navigation controller. In this new view controller, add a text field and a button. Have the user enter a number (1-5) in the text field (prevent any other values!), and when the button is tapped, present the view controller from the Extra Credit above. Use the number entered by the user to determine how many tabs to create.

**Challenge 2:**

> **User Profiles: Do we really know our "Friends"?**
> 
> We don't know much about users in the app besides their usernames. Wouldn't it be nice to have additional information that could be displayed when a friend is tapped on?

> 1. Add some additional optional fields to the Sign Up screen. Maybe things like:
>  	- First name
> 	- Last name
> 	- Hometown
> 	- Website
> 2. Store these new fields in the User class on Parse.
> 3. Add **tableView:didSelectRowAtIndexPath:to** FriendsViewController and, when a friend is tapped, navigate to a new Profile view controller.
> 4. On the new Profile view controller, display all the additional user data you are collecting.

**Challenge 3:**

> **More Notifications, Please!**
> 
> Right now, we are not displaying anything to the user if a message is successfully sent. Instead, add a brief popup message using a third party library like [MBProgressHUD](https://github.com/jdg/MBProgressHUD). Get creative with the display, but a good starting point would be a simple automatic message at the bottom of the screen, [like this one](http://dl.dropboxusercontent.com/u/378729/MBProgressHUD/7.png).

**Challenge 4:**

> **Automatic File Deletion**
> 
As mentioned in "Deleting Data from Parse.com", the Parse iOS API does not currently contain a way to delete a file from within the app. It is possible, however, using the [Parse REST API](https://www.parse.com/questions/how-can-i-delete-a-file). Using [NSMutableURLRequest](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/Foundation/Classes/NSMutableURLRequest_Class/Reference/Reference.html), construct a DELETE request to the REST API and delete a file at the same time we delete a message (once it's been viewed by the last recipient).


