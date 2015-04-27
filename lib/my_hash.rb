class MyHash
    define_method(:initialize) |key, value| do
        @key = key
        @value = value
    end

    define_method(:fetch) do |key|
        @key


    end
end
