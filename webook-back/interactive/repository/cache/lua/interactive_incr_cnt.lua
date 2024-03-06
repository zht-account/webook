---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2024/3/6 9:43
---
local key = KEYS[1]
local cntKey = ARGV[1]
local delta = tonumber(ARGV[2])
local exists = redis.call("EXISTS", key)
if exists == 1 then
    redis.call("HINCRBY", key, cntKey, delta)
    return 1
else
    return 0
end