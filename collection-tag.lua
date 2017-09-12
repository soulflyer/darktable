local dt = require "darktable"

local newrule = dt.gui.libs.collect.new_rule ()
newrule.mode = "DT_LIB_COLLECT_MODE_AND"
newrule.data = "t1"
newrule.item = "DT_COLLECTION_PROP_TAG"
print (newrule.mode)
print (newrule.data)
print (newrule.item)

-- Fetch the current list of filters
local filters = dt.gui.libs.collect.filter ({})
-- Add teh new filter to the list
table.insert (filters, newrule)
for _,filter in ipairs (filters) do
   print ("*******************")
   print (filter.mode)
   print (filter.data)
   print (filter.item)
end
-- Set the list of filters to the list of existing ones plus the new one
dt.gui.libs.collect.filter (filters)
