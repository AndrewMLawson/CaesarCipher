require 'pry'

def caesar_cipher(input, factor)
    splitString = input.chars
    newString = ""
    splitString.each do |item|
        if item.ord >= 65 && item.ord <= 90
            if item.ord + factor > 90
                newString = newString + (item.ord + factor - 90 + 64).chr
            else
                newString = newString + (item.ord + factor).chr
            end
        elsif item.ord >= 97 && item.ord <=122
            if item.ord + factor > 122
                newString = newString + (item.ord + factor - 122 + 96).chr
            else
                newString = newString + (item.ord + factor).chr
            end
        else
            newString = newString + item
        end
    end
    p newString
end

puts "What would you like to decode?"
userInput = gets.chomp
puts "What is the factor?"
userFactor = gets.to_i

caesar_cipher(userInput, userFactor);