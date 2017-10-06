local dt = require "darktable"

local function add_tag_filter (tag_name)
   -- Selects all the pics with the given tag plus any labelled red
   local newrule = dt.gui.libs.collect.new_rule ()
   newrule.mode = "DT_LIB_COLLECT_MODE_AND"
   newrule.data = tag_name
   newrule.item = "DT_COLLECTION_PROP_TAG"

   local filters = dt.gui.libs.collect.filter ({})
   local first = filters [1]
   local rollrule = dt.gui.libs.collect.new_rule ()
   rollrule.mode = "DT_LIB_COLLECT_MODE_OR"
   rollrule.data = first.data
   rollrule.item = first.item

   local redrule = dt.gui.libs.collect.new_rule ()
   redrule.mode = "DT_LIB_COLLECT_MODE_AND"
   redrule.data = "red"
   redrule.item = "DT_COLLECTION_PROP_COLORLABEL"

   filters = {}
   table.insert (filters, first)
   table.insert (filters, newrule)
   table.insert (filters, rollrule)
   table.insert (filters, redrule)
   dt.gui.libs.collect.filter (filters)
end

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t1")
                   end,
                   "Add t1 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t2")
                   end,
                   "Add t2 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t3")
                   end,
                   "Add t3 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t4")
                   end,
                   "Add t4 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t5")
                   end,
                   "Add t5 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t6")
                   end,
                   "Add t6 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t7")
                   end,
                   "Add t7 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t8")
                   end,
                   "Add t8 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t9")
                   end,
                   "Add t9 filter")

dt.register_event ("shortcut",
                   function (event,shortcut)
                      add_tag_filter ("t10")
                   end,
                   "Add t10 filter")
