# QuizApp
* A quiz app with **Decent questions**, **Minimalistic UI** and a dash of **Tangy Randomness** ;D

# Foreword
* This is my **First Flutter project** that I made for my **CS50x Final Project**. Spending just about **12hrs** and being able to make a **full-fledged** app that works on **Android** and **IOS** is a possibility that I still stand **astonished** by, all thanks to the **immense potential** of **Flutter** that **empowered** me to do so!

* The app in itself is **Fairly Simple**, yet it has **an element of randomness** to it that **intrigues** the user, giving them **something new** to always **look forward to** **;D**

## Why I chose Flutter

**Honestly**, because it makes **coding** for **Apps** so **simple!**

* We **don't need** to know **Objective C**/**Swift** for **IOS**, or **Java** for **Android**!
* Just **one single app** that can run on **both** the platforms!
* It is **managed** by **Google** so **no scope** for **worry**!
* Because I wish to **Digitalize** my **father's business** by gifting him an **app**, hence my journey as an **App developer**! :D

## What Inspired Me to make a QuizApp.

* The **Udemy** course that I am following to _learn_ **Dart** & **Flutter** by **Maximilian Schwarzmüller**.
* I **highly recommend** this course for **anyone willing** to **make efficient apps** with **relative ease**! :D
* [Link to the Course](https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/)

## My Experience

* It's been a **Smooth Ride** as I followed parts of the **course tutorial** to increase my knowledge about **Flutter**, however parts like **the FloatingActionButton** at the bottom were something that I had to look for myself ;p
* Despite the **time** and **efforts** it took to implement these **features**, they are what make **our QuizApp** stand out and **offer** something unique to our **user**!
* Now even tho the **Flutter Docs** are **super aesthetic**, it was quite hard to wrap my mind around the **multi-child layout** widgets as I looked for something to be the **base** for the **UI** 😅
* Alas I did manage to work my way around with a **Stack** Widget, similar to how **'sticking around the barber's shop long enough does get one the haircut'** ;p

# About The App

* The **Main files** in **quiz_app/lib** are as follows:

## main.dart
* The **main executable** file that contains the head **QuizApp** class, a **stateful widget**, responsible for **rendering** the main **UI** for the **app**.
* I have used the **MaterialApp** library provided by **Flutter** to source the **Base structure** and added my **special touch** to it! :D
* It has the **\_questions** list of maps with all the **questions** and their **answers (another list ;p)** being the individual map entries.
* It also holds the **\_changeQuestion()** and **\_reset()** functions that do as their name suggests ;p
* Also Responsible for the **FloatingActionButton** at the **bottom-right** corner :D

> It's always **better** to have **More** Widgets, than **less**, for they make it **easier** to **manage** and **look** at the **Code**!

## quiz.dart
* Holds the **Quiz** widget, a **stateless** one; meaning it **doesn't update** with the **screen** but is rather **static** after instantiation.
* It takes in **two named arguments**:
  1. the **data**, with the **questionText** and **list of answers**; and.
  2. the callback **function**
* It uses **two** other widgets I made - **Question** and **Answer**, to then render the **specific Trivia**! :D

## question.dart
* Holds the **stateless** widget, **Question**.
* It takes in the **questionText**, i.e., the **Question**.
* This simply outputs a **Container** widget holding a **Text** widget with the **questionText** and some **Trivial Styling ;p**

## answer.dart
* Holds the **stateless** widget, **Answer**.
* It takes the **answerText** and the callBack function **handleAnswer**.
* Generates and **returns** a _custom-styled_ **ElevatedButton** Widget as an **Answer choice**! :D

## result.dart
* Holds the **Result** widget (**Stateless**), that is **rendered** by **main.dart** upon **completion** of the **Quiz**.
* Takes in the **score** parameter and the function callBack **reset**.
* Responsible for the **Play Again** widget (**ElevatedButton**) and linking it to **reset**.
* Returns a **Container** widget with the **ElevatedButton** and the **Text** widgets showing the **result** and the **score**.
* Also returns a **FloatingActionButton** widget with a **random color** to **reward** the **Player** for **completion** ;)

# Testing Status

* The app has been tested only on **android** for I don't have a Mac unfortunately! 😅
* It only supports **vertical** orientation for now, however I **plan** to make it **responsive** by changing the base Widget to a **ListView** soon! :)
* It has been tested on **Android versions** 8+, it should work **smoothly** on **prior versions too**, **unless** there's a **significant cut out** in **memory**.

# How to Try it out

## Android
* **Install** and **Run** the **app-debug.apk** in **quiz_app/build/app/outputs/apk/debug/app-debug.apk**

## IOS
> With **courage** in our **hearts** and **ambition** in our **thought**, we can **do anything**!
* **Import** the project into **X-code**.
* **Run** the app on a **VM** if you wish **OR** connect you **IOS** device and run it on it! **:D**

# Ideas that may be implemented for Improvement
* Incorporate **User-Input** and show the user their **Name** with the result, etc.
* Use an **Online** source to get **Fresh Questions**; **increase** the number and **broaden** the variety of **Questions**.
* Utilize **storage** to store liked **color codes**, **high score**, etc.
* Allow the User to **Share** their **Score** or **Color** via native sharing options.

> I would love to collaborate with fellow **Developers** willing to improve their **App Development** Skills and **Learn together**! <3 ;D

# Final Words

* A **Huge Thanks** to **CS50** for giving me this **opportunity** to learn **practical Computer Science** from **one of the best faculties** in the world! <3 :)
* And, as **David J Malan** would say, this was **CS50!**
