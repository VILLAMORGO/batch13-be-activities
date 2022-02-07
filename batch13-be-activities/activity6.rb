module Frosted
    def to_be_frosted
        "Applying Frosting"
    end
end

class Confection
    def baked_product
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class BananaCake < Confection
end

class Cupcake < Confection
    def baked_product
        include Frosted
    end
end
