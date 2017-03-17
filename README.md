## Background

Your assignment is to build a website that allows a user to create a text template and return the filled out template, populated with patient data.

The data you will use is in the file 'patients.csv' file.
Fields include:
* id
* first_name
* last_name
* phone_number
* email
* street_address
* city
* state
* zip

The website should have the following components:
* A textarea where the template text is composed.
* A way to select a user from a dropdown.
* A submit button.
* Upon submit the user should be able to view the filled out template text.

### Example
User enters: "Hi there @first_name @last_name! Is @phone_number still the best number to reach you?"
User selects: "Tadd Williams"

In the datastore: {
  id: 3, 
  first_name: "Tadd", 
  last_name: "Williams", 
  phone_number: "5555555555", 
  email: "tadd@example.com",
  street_address: "123 Main Street",
  city: "New York City",
  state: "New York",
  zip: "10001"
}

Return text: "Hi there Tadd Williams, Is (555) 555-5555 still the best number to reach you?"

I used '@first_name' as an example of a template variable, but you are are welcome to use any strategy you like to identify variables in your templates.

### Notes

The page can be very basic. It does not need any other special formatting other than to be valid, well-structured HTML (unless you really feel the need to make it spiffy).

Feel free to code this website using Rails, Express, Sinatra, Vapor or any other web framework of your choosing. You are welcome to use any third-party CSS or JS libraries, though this is absolutely not required.

Parse the CSV file directly or write the data to a database with a seed file, whichever you prefer. The data in the csv file is the only presistance you need. No need to save template text.

### General Guidelines

You will be evaluated on all aspects of your solution, but we will focus on your ability to design and write code and to make appropriate choices for running this code in a production environment. Include any special installation requirements, known issues, areas for improvement, or ideas for version 2 in the README and/or in code comments.

If you have any questions feel free to ask Riley (riley.scheid@roostergrin.com) directly. This assignment is open ended and you are welcome to take however much time you need; however, it is recommended that you take no more than two hours to complete it. Take shortcuts, make assumptions, just make note when you do. We are evaluating how you think and the choices you make, not the fit and finish of the final product.

Good luck!