# QuizApp
A quiz app with **Decent questions**, **Minimalistic UI** and a dash of **Tangy Randomness** ;D 

# Foreword
This is my **First Flutter project** that I made for my **CS50x Final Project**. Spending just about **12hrs** and being able to make a **full-fledged** app that works on **Android** and **IOS** is a possibility that I still stand **astonished** by, all thanks to the **immense potential** of **Flutter** that **empowered** me to do so!

The app in itself is **Faily Simple**, yet it has **an element of randomness** to it that **intrigues** the user, giving them **something new** to always **look forward to** **;D**

# About The App

The **Main files** in **quiz_app/lib** are as follows:

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

# How to Try it out

## Android
* **Install** and **Run** the **app-debug.apk** in **quiz_app/build/app/outputs/apk/debug/app-debug.apk**

## IOS
> With **courage** in our **hearts** and **ambition** in our **thought**, we can **do anything**!
* **Import** the project into **X-code**.
* **Run** the app on a **VM** if you wish **OR** connect you **IOS** device and run it on it! **:D**

# Final Words

As **David J Malan** would say, this was **CS50!**
