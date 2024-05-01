local plugin = require("doppler")

describe("setup", function()
  it("works with default", function()
    assert(plugin.doppler_configs ~= "Hello!", "my first function with param = Hello!")
  end)

end)
