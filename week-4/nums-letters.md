### Release 1: Summarize  

**What does puts do?**  

It returns nil and prints the output to the console with a new line.  

**What is an integer? What is a float?**  

An integer is a number without decimal points and a float is a number with decimal points.  

**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**  

Float division is when you divide numbers with decimal points. When you do this, you will get an exact answer. E.g. "puts 5.0 / 2.0" will return "2.5".  
Integer division is when you divide numbers without decimal points (whole numbers). When you do this, you will not get an "exact" answer. Your answer will be rounded down to the next integer. E.g. "puts 7 / 3" will return "2".  

### Release 2: Try it!  

*Hours in a year:*  

```ruby
puts 24 * 365
```  

*Minutes in a decade:*  

```ruby
puts 60 * 24 * 365 * 10
```  

### Release 7: Reflect  

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**  

Ruby will handle addition, subtraction, and multiplication of numbers much like a calculator will. Regardless of whether you input an integer or a float, Ruby will output the exact answer. However, when you divide two integers Ruby will round down to the next integer. You have to convert the integers to floats if you want an exact answer.  

**What is the difference between integers and floats?**  

*Integers* are numbers without decimal points (whole numbers) and *floats* are numbers with decimal points.  

**What is the difference between integer and float division?**  

When you divide two integers Ruby will round down to the next integer. You have to convert the integers to floats if you want an exact answer. As long as at least one number is a float, you will get an exact (float) answer when dividing with Ruby.  

**What are strings? Why and when would you use them?**  

*Strings* are objects that hold and manipulate a sequence of bytes (typically characters). You would use them if you want to output some text, or if you would like to manipulate the contents of the string. Strings are very flexible and easily modified; you can even do arithmetic with strings.  

**What are local variables? Why and when would you use them?**  

*Local variables* are assignments the user makes to store objects (e.g. a string or number). These are useful if you want to print out and/or recall information multiple times and/or for later use.  

**How was this challenge? Did you get a good review of some of the basics?**  

I enjoyed this challenge. It helped me to review some of the basics as well as pick up a few new bits of knowledge. For example, I didn't know dividing two integers will round down to the closest integer.  

### Links to assignments  

[4.2.1 Defining Variables](defining-variables.rb)  
[4.2.2 Simple String](simple-string.rb)  
[4.2.3 Basic Math](basic-math.rb)