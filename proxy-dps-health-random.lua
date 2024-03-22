require "base"

local transform_cookie_header = {
    func = (function()
        local random = math.random(1000, 9999)
        return {
            ["Cookie"] = "logUuid=wrkAuthenticateUser" .. random
        }
    end),
    target = "headers"
}

local dps_health_random_size_file = CreateTestConfig({
    path = "/gateway-alpha/TammJourneyDps/1.0/health",
    params = { randomSize = "0.5:0.001,0.35:0.01,0.1:0.1,0.05:1.0" },
    headers = {
        ["Accept"] = "application/json",
        ["x-Gateway-APIKey"] = "XX",
        ["Cookie"] = "logUuid=wrkTestDpsHealthRandom"
    },
    log_errors = true,
    customTransformations = { transform_cookie_header }
})

RunTest(dps_health_random_size_file)
