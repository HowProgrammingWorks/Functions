def f1(*args)
  puts(args)
end

f1(1, 2, 3)


def f2(*args)
    
  args.each do |item|

      if self.is_a?(Object)
        puts "#{self.is_a?(Object)} : #{args}"
            end
    end            
end

f2(1, "Marcus",self.class)
