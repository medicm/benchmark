require "base"

local doc_store_get = CreateTestConfig({
    path = "/gateway/TammJourneyDocument-store-mgmt/1.0",
    params = { fileName = "dummy.pdf__v9cfUkxcxWP8yddQSZU8LVVWGgYx", stage = "/wb-proxy/upload", userId = "wb-proxy", appId = "wb-proxy" },
    headers = {
        ["x-Gateway-APIKey"] = "XX",
        ["Cookie"] = "logUuid=wrkTestDocStoreGet"
    },
    log_errors = true
})

RunTest(doc_store_get)
