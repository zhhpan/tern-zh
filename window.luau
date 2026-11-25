local tern = require("tern")
local titles = require("./titles")

for _, name in ipairs({"core-extra", "keyboard"}) do
    tern.css(name, tern.fs.read(name .. ".css"))
end

tern.command({
    id = "commands",
    title = "中文命令面板 · Chinese commands",
    run = function(cx)
        local items = {}
        for _, action in ipairs(cx.actions:list()) do
            if action.available and not action.plugin and not string.match(action.id, "^plugin%.") then
                local zh = titles[action.label]
                table.insert(items, {
                    label = zh and (zh .. "  ·  " .. action.label) or action.label,
                    detail = table.concat(action.keys, " / "),
                    command = action.id,
                })
            end
        end
        cx:pick({placeholder = "搜索命令（中文或英文）", action = "执行", items = items})
            :next(function(item, err, current)
                if item and current then current:command(item.command) end
            end)
    end,
})

tern.command({
    id = "copy-on-select",
    title = "选中即复制 · Copy on select",
    run = function(cx)
        local enabled = cx.settings:get("copy_on_select") == true
        cx:pick({
            placeholder = "选中终端文字时自动复制",
            action = "应用",
            items = {
                {label = "开启 · On", current = enabled, enabled = true},
                {label = "关闭 · Off", current = not enabled, enabled = false},
            },
        }):next(function(item, err, current)
            if item and current then current.settings:set("copy_on_select", item.enabled) end
        end)
    end,
})
