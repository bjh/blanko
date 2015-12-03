module Blanko
  class Nullifier < BasicObject
    attr_reader :default

    def initialize(default="")
      @default = default
    end

    def method_missing(method)
      @default
    end
  end
end