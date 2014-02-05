module Raddocs
  class ResponseFields
    def initialize(params)
      @params = params
    end

    def parse
      extra_keys = @params.flat_map(&:keys).uniq - ["name", "description", "scope"]

      {
        "extra_keys" => extra_keys,
        "data" => @params
      }
    end
  end
end
