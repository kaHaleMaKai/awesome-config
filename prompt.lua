---------------------------------------------------------------------------
-- @author Julien Danjou &lt;julien@danjou.info&gt;
-- @copyright 2009 Julien Danjou
-- @classmod awful.widget.prompt
---------------------------------------------------------------------------

local setmetatable = setmetatable

local completion = require("awful.completion")
local util = require("awful.util")
local spawn = require("awful.spawn")
local prompt = require("awful.prompt")
local widget_base = require("wibox.widget.base")
local textbox = require("wibox.widget.textbox")
local type = type

local widgetprompt = { mt = {} }

local function complete_me(command, cur_pos, ncomp, shell)
    return completion.shell(command, cur_pos, ncomp, "zsh")
end

--- Run method for promptbox.
--
-- @param promptbox The promptbox to run.
local function run(promptbox)
    return prompt.run {
        prompt              = promptbox.prompt,
        textbox             = promptbox.widget,
        completion_callback = complete_me,
        history_path        = util.get_cache_dir() .. "/history",
        exe_callback        = function (...)
            promptbox:spawn_and_handle_error(...)
        end,
    }
end

local function spawn_and_handle_error(self, ...)
    util.shell = "zsh"
    local result = spawn.with_shell(...)
    if type(result) == "string" then
        self.widget:set_text(result)
    end
end

--- Create a prompt widget which will launch a command.
--
-- @param args Arguments table. "prompt" is the prompt to use.
-- @return A launcher widget.
function widgetprompt.new(args)
    args = args or {}
    local widget = textbox()
    local promptbox = widget_base.make_widget(widget)

    promptbox.widget = widget
    promptbox.widget:set_ellipsize("start")
    promptbox.run = run
    promptbox.spawn_and_handle_error = spawn_and_handle_error
    promptbox.prompt = args.prompt or "» "
    --promptbox.prompt = args.prompt or "⏸ "
    --promptbox.prompt = args.prompt or "⏵ "
    --promptbox.prompt = args.prompt or "∙ "
    --promptbox.prompt = args.prompt or "⇾ "
    return promptbox
end

function widgetprompt.mt:__call(...)
    return widgetprompt.new(...)
end

return setmetatable(widgetprompt, widgetprompt.mt)

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
