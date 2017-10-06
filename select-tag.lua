local dt = require "darktable"

local function select_tag(tag_name)
   local selection = {}
   for _,image in ipairs (dt.database) do
      tags=dt.tags.get_tags (image)
      for _,tag in ipairs (tags) do
         if tostring (tag) == tag_name then
            table.insert (selection, image)
            break
         end
      end
   end
   dt.gui.selection (selection)
end

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t1")
                   end,
                   "Select all t1")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t2")
                   end,
                   "Select all t2")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t3")
                   end,
                   "Select all t3")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t4")
                   end,
                   "Select all t4")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t5")
                   end,
                   "Select all t5")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t6")
                   end,
                   "Select all t6")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t7")
                   end,
                   "Select all t7")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t8")
                   end,
                   "Select all t8")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t9")
                   end,
                   "Select all t9")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      select_tag ("t10")
                   end,
                   "Select all t10")
