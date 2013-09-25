The MadLib of J. Alfred Prufrock
=======

On the first day of General Assembly Web Development Immersive, we were assigned to read chapters of Programming Ruby: The Pragmatic Programmer's Guide, that talk about methods on arrays and hashes, and iterators.  

On my second day, we were assigned the task of making a madlib to practice string interpolation.  

I started working on a second version of my madlib program to practice using the methods on arrays and hashes.  I'm practicing keeping my work in multiple files and using `require` to import the text into my file, and I'm hoping to export the results of the madlib to a text file so I can keep the results.

Future features I'd like to add:
  
  * deal with pairs of rhyming words like ['peach', 'beach'], maybe using hashes inside of hashes or arrays inside of arrays.
  
  * make madlib methods that I can use again on other poems, automating as many of the repetitive tasks as possible. Does that mean I need a class Madlib() that contains, uh, instance variables like @content_words{} and maybe a method to separately prompt the madlib-creator to identify the words and their parts of speech from the command line and then save that work to a file that the madlib continues to use with require_relative?  like if content_words_hash_file.size < verysmall, run the content_words-builder program and File.write that into the file?  Hmmrm.
  
  * practice writing automated testing code that tests my code as I make it (this feature of Ruby is very interesting to me as a former teacher.  Automated evaluating?? OMG.)
  
  * start saving data about which words are nouns and which words are verbs in some kind of data repository such that I can eventually have a big list of user-created nouns and the madlib can start generating itself without additional input, or recycling words that originally got replaced from this text into another one.
  
  * figure out how to make a website where people can generate their own madlibs and contribute their noun-verb-adjective data to my lists.

