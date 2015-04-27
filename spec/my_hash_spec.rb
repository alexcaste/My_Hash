require('my_hash')
require('rspec')
require('pry')

describe(MyHash) do
    describe("#fetch") do
        it("retrieves a stored value by its key") do
            test_hash = MyHash.new()
            test_hash.store("kitten", "cute")
            expect(test_hash.fetch("kitten")).to(eq("cute"))
        end
    end

    describe("#has_key?") do
        it("returns true if the given input matches the key") do
            test_hash = MyHash.new()
            test_hash.store("kitten", "cute")
            expect(test_hash.has_key?("kitten")).to(eq(true))
        end
    end

    describe("#has_value?") do
        it("returns true if the given input matches the value") do
            test_hash = MyHash.new()
            test_hash.store("kitten", "cute")
            expect(test_hash.has_value?("cute")).to(eq(true))
        end
    end

    # describe("#merge") do
    #     it("adds the input key and value to the end of the initial array") do
    #         test_hash = MyHash.new()
    #         test_hash.store("kitten", "cute")
    #         test_hash_two = MyHash.new()
    #         test_hash_two.store("dog", "large")
    #         expect(test_hash.merge(test_hash_two)).to(eq(["kitten", "cute", "dog", "large"]))
    #     end
    # end
    #
    # describe("#merge") do
    #     it("adds the replaces the value within array if the input key is the same") do
    #         test_hash = MyHash.new()
    #         test_hash.store("kitten", "cute")
    #         expect(test_hash.merge("kitten", "large")).to(eq(["kitten", "large"]))
    #     end
    end
end
