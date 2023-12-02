-- https://github.com/fatih/gomodifytags#adding-tags--options
GoAddTags = function(...)
  local command = string.gsub(
    ':! gomodifytags -file % -all -w -add-tags $tags',
    '%$(%w+)',
    { tags = table.concat({ ... }, ',') }
  )
  vim.cmd(command)
end

-- https://github.com/fatih/gomodifytags#removing-tags--options
GoRemoveTags = function(...)
  local command = string.gsub(
    ':! gomodifytags -file % -all -w -remove-tags $tags',
    '%$(%w+)',
    { tags = table.concat({ ... }, ',') }
  )
  vim.cmd(command)
end

-- Parse a JSON string in the 'key' location and replace the current buffer with the result
-- Key can be a dot separated path to the JSON object to parse
JQ = function(key)
  local keys = vim.split(key, '.', { plain = true, trimempty = true })
  local temp, command, buf_lines
  temp = vim.fn.tempname()
  vim.cmd('w ' .. temp)
  for _, k in ipairs(keys) do
    command = string.gsub(
      ':% !jq -e \'.' .. k .. '|fromjson\'',
      '%$(%w+)',
      { key = k }
    )

    local _, _ = pcall(function()
      vim.cmd(command)
    end)
    buf_lines = vim.fn.line('$')

    -- TODO: handle errors properly to restore the buffer
    if buf_lines == 1 then
      vim.cmd('e!')
      vim.fn.delete(temp)
      return
    end
  end
  vim.cmd('redraw')
end
