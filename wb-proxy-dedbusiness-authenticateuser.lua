require("base")

local cookies = ReadCookies()

local wb_proxy_dedbusiness_authenticateuser = CreateTestConfig({
    path = "/wb-proxy/TammJourneyDed/1.0/dedBusiness/authenticateUser",
    headers = {
        ["Cookie"] = cookies,
        ["x-Gateway-APIKey"] = "XX",
        ["x-Tamm-FrontendURL"] = "services/business/ded",
        ["Content-Type"] = "application/json",
    },
    method = "POST",
    body = '{"agency":"{{config.ded.agency}}","password":"{{config.ded.password}}","userId":"{{config.ded.userId}}"}',
    log_errors = true,
})

RunTest(wb_proxy_dedbusiness_authenticateuser)
