# Ruby OO-Television Lab

## Objective

1. Build classes that interact with one another through associations and behavior.

## Instructions

This is a test-driven lab. Use the test file and test output to understand what is being asked of you as you follow the guidelines below.

In this lab, we'll be dealing with an `Episode` class and a `Show` class.

Because of the relationships between your classes, the `Episode` tests, i.e. the tests in `spec/episode_spec.rb`, rely on some code in the `Show` class and vice versa. So, as you proceed through solving this lab, you will go back and forth between coding in `Episode` and `Show`.

We recommend starting out by getting some of the initial `Episode` tests passing and switching to write code in the `Show` class as directed by the test output. Because of the complexity, let's walk through a guideline of how to think about the problem as you're building out the solution.


###`Show` class

The Show class will initialize with a name attribute and an empty array of episodes.

#### `Show#add_episode(episode)`
This method will do four things:

1. It will accept an episode object as an argument.

2. Add the episode object to the @episodes array.

3. Assign the episode's show to be equal to itself.

4. Check to make sure it doesn't add the same episode more than once.

#### `Show#num_of_episodes`
This method will simply return the total number of episodes that belong to that show instance.

###`Episode` class

The Episode class will initialize with a title attribute and should also be saved on initialization.

####`Episode#show=(show)`
This method will do three things:

1. It will accept a show object as an argument.

2. From there, it will set the episode's show to equal the passed in show object.

3. Additionally, it should add the current episode to the show's array of episodes (if it hasn't already been added).


###Conclusion

These are just a few hints and guidelines to help you through this lab. Rely on the guides here, refer to the previous Code Along on object relations, and **read the test output and test files**. Never forget to ask a question on Learn if you are stuck. Good luck!

<p data-visibility='hidden'>View <a href='#'>Ruby OO Television Lab</a> on Learn.co and start learning to code for free.</p>

<p class='util--hide'>View <a href='#'>Ruby OO Television Lab</a> on Learn.co and start learning to code for free.</p>
