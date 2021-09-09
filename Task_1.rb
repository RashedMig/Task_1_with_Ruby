class Compress
    def initialize(str)
        @str_code = str
        
    end

    def start_compress()
        
            if @str_code == nil
                return print "the string is nil!!"
            elsif @str_code.empty?
                return print "the string is empty!!"
             elsif @str_code =~ /\d/
                return print "the string is contains number !!"    
                
            end
        
        len_of_str = @str_code.length

        $i = 0
        while $i < @str_code.length   
            $counter = 1
            while $i < len_of_str-1 && @str_code.slice($i) == @str_code.slice($i+1)  do
                $counter+=1
                $i +=1
             end
                print "#{@str_code.slice($i)}#{$counter}" 
            $i+=1
        end   
    end 

    def check_for_decompress
        $val = 1
        while $val < @str_code.length
            if @str_code.slice($val).to_i > 0 && @str_code.slice($val).is_a? Integer
                 puts "the string is digit ! "
            
                
            end
            
            # if $val  == @str_code.length-1 

            #     break
                
            # end

            $val += 2
        end
        
    end

    def decompress
        x = @str_code.scan(/../)
        $str = ""
        check_for_decompress()

         for value in 0...x.length do
                char = x[value].to_s.slice(0)
                num_of_letter = x[value].to_s.slice(1).to_i;
                $str = $str + char * num_of_letter  
         end
        puts $str


        
    end



end

#__________________________________________________
def main
   
    st = Compress.new("e2r4y5")
    
    st.decompress
    
    

    

end


main()

