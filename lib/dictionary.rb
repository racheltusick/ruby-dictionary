class Dictionary
    #create our dictionary
    def initialize #anything not inside function DOES NOT RUN
                   #we need initialize to run the word_list
        @word_list = []
    end 

    #we want to check if input is a word in our list
    def is_a_word(word)
        @word_list.include? (word) 
    end #./end the is_a_word function
    
    #we want to be able to add words to the dictionary
    def add_a_word(word) #we are adding a word to word list, so we need to put these 2 values in the () so the function knows to use them
        @word_list << word
        @word_list 
    end #./ add_a_word function

    def close_call(test_word) 
        @close_words = []
        @word_list.each do |word_list_word|
            if word_list_word.start_with?(test_word) 
                @close_words << word_list_word
            end #end if statement 
        end #end each statement 
        @close_words
    end #end close_call 
end #./ end the class 