module StringExtensions
    refine String do
        def to_alphanumeric
            gsub(/[^\w\s]/, '')
        end
    end
end

#puts "my *1st* refinement!".to_alphanumeric # <= NoMethodError

using StringExtensions
puts "my *1st* refinement!".to_alphanumeric
