local dt = require "darktable"

local divecentre = dt.new_widget("entry")
{
    text = "Alpha",
    placeholder = "placeholder",
    editable = true,
    tooltip = "Set to 'none' to use the soulflyer intro pic",
    reset_callback = function(self) self.text = "Alpha" end
}

local filename = dt.new_widget ("entry")
{
   text = "test",
   placeholder = "placeholder",
   editable = true,
   tooltip = "Typically 'yymmdd-projectname'",
   reset_callback = function (self) self.text = "test" end
}

local divecentre_label = dt.new_widget ("label")
{
   label = "divecentre"
}

local filename_label = dt.new_widget ("label")
{
   label = "filename"
}

dt.register_lib(
  "exportJSONModule",     -- Module name
  "export JSON",     -- name
  true,                -- expandable
  true,               -- resetable
  {[dt.gui.views.lighttable] = {"DT_UI_CONTAINER_PANEL_RIGHT_CENTER", 100}},   -- containers
  dt.new_widget("box") -- widget
  {
    orientation = "vertical",
    divecentre_label,
    divecentre,
    filename_label,
    filename,
    dt.new_widget("button")
    {
      label = "Export",
      clicked_callback = function ()
         local images = dt.gui.action_images
         local t ={}
         dt.print ("Exporting JSON file")
         for _,v in ipairs(images) do
            --s=(tostring (v))
            s=(string.match (tostring (v), "%d%d%d%d%/%d%d/.+"))
            s=(string.gsub (s, "CR2", "jpg"))
            s=(string.gsub (s, "NEF", "jpg"))
            s=(string.gsub (s, "JPG", "jpg"))
            if (string.match (s, "%.gif"))
            then
               table.insert (t, 1, s)
            else
               t [#t+1]=s
            end
         end
         os.execute ("/Users/iain/bin/build-json -z -d \""
                        .. divecentre.text
                        .. "\" -l \""
                        .. (table.concat (t, " "))
                        .. "\" "
                        .. filename.text)
         dt.print ("Exported json file " .. filename.text .. " for " .. divecentre.text)
      end
    }
  },
  nil,-- view_enter
  nil -- view_leave
)
