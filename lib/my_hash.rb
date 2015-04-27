class MyHash
    define_method(:initialize) do
        @store_array = []
    end

    define_method(:store) do |key, value|
        @key = key
        @value = value
        @store_array.push(key)
        @store_array.push(value)
        @store_array
    end

    define_method(:fetch) do |key|
        @store_array[1]
    end

    define_method(:has_key?) do |key|
        if @store_array[0] == key
            true
        end
    end

    define_method(:has_value?) do |value|
        if @store_array[1] == value
            true
        end
    end

    #define_method(:merge) do |array|

end
