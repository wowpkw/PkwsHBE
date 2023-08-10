-- List of characters, numbers, and symbols
local characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
local numbers = "0123456789"
local symbols = "!@#$%^&*()_+-=[]{}|;:',.<>?/"

-- Function to generate a randomized string of given length
local function GenerateRandomString(length)
    local randomString = ""
    local allChars = characters .. numbers .. symbols
    local maxIndex = #allChars
    
    for i = 1, length do
        local randomIndex = math.random(1, maxIndex)
        randomString = randomString .. string.sub(allChars, randomIndex, randomIndex)
    end
    
    return randomString
end

-- Generate and print a randomized string of length 15
local randomString = GenerateRandomString(25)
print(randomString)
