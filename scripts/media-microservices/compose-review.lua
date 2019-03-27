require "socket"
time = socket.gettime()*1000
math.randomseed(time)
math.random(); math.random(); math.random()

local charset = {'q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's',
  'd', 'f', 'g', 'h', 'j', 'k', 'l', 'z', 'x', 'c', 'v', 'b', 'n', 'm', 'Q',
  'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H',
  'J', 'K', 'L', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '1', '2', '3', '4', '5',
  '6', '7', '8', '9', '0'}

function string.random(length)
  if length > 0 then
    return string.random(length - 1) .. charset[math.random(1, #charset)]
  else
    return ""
  end
end

local movie_index = math.random(1000)
local user_index = math.random(1000)
local username = "username_" .. tostring(user_index)
local password = "password_" .. tostring(user_index)
local title = "title_" .. tostring(movie_index)
local rating = math.random(0, 10)
local text = string.random(256)

wrk.method = "POST"
wrk.body   = "username=" .. username .. "&password=" .. password .. "&title=" ..
    title .. "&rating=" .. rating .. "&text=" .. text
wrk.headers["Content-Type"] = "application/x-www-form-urlencoded"