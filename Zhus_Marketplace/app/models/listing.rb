class Listing < ApplicationRecord
    belongs_to :brand
    enum category: {casual:0, formal:1, basketball:2, running:3, skate_canvas:4, other: 5}
end
