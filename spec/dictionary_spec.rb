require "dictionary" 

describe Dictionary do 
    before (:all) do 
        @book = Dictionary.new 
        @book.add_a_word("butts") 
        @book.add_a_word("apple")
        @book.add_a_word("application") 
    end #./each do

    describe ".add_a_word" do 
        context "when we want to add a word to the 'butts'" do
            it "will add 'butts' to the word array" do
                expect(@book.is_a_word("butts")).to eql(true)
            end #./it statement 
        end #./context 
    end #./ add_a_word test 

    describe ".close_call" do 
        context "when we add a word that starts with the same two letters as a word  in the array" do
            it "will recall the words that start with those two letters" do 
                expect(@book.close_call("bu")).to eql(["butts"]) 
                expect(@book.close_call("ap")).to eql(["apple", "application"]) 
            end 
        end 
    end 
end #./test for class Dictionary


