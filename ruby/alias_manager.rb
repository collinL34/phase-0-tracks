# make fake spy names like a boss!!
# reverse the whole string so that first name is now last name
#but since the words are also now reversed we will re reverse the individual word os it goes back to the correct spelling
# then loop through the individual words and use next on the array
# vowels are made the next aeiou a => e
# and so are constants d => f

    loop do
      puts "Please give me a name, type 'quit' if done."
      user = gets.chomp
      if user == 'quit'
        break
      end
      def secret(user)
        new_versions = []
        old_versions = []
        old_versions << string
        word = string.reverse.split('')
        vowels = ['a','e','i','o','u']
        constants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
          word.map! do |x|
            if vowels.include?(x)
              if x != 'u'
                 idx = vowels.index(x)
                 idx = idx + 1
                 x = vowels[idx]
              else
                x = 'a'
              end
            elsif constants.include?(x)
              if x != 'z'
                idx = constants.index(x)
                idx = idx + 1
                x = constants[idx]
              else
                x = 'b'
              end
            elsif x == ' '
              x = " "
            end
          end
            new_versions << word.join('')

            counter = 0

            while counter < new_versions.length
              old = old_versions[counter]
              newer = new_versions[counter]
                puts "#{old} is also known as #{newer}."
                counter = counter + 1
              end
          end
      end
