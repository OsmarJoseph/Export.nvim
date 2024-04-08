local function main()
  local folders_and_files = vim.fn.systemlist({ "ls", vim.fn.expand("%:p:h") });
  local current_bufnr = vim.api.nvim_get_current_buf()

  local new_content = {}

  for _, path in ipairs(folders_and_files) do
    if string.match(path, "graphql") or string.match(path, "index%.ts") or string.match(path, "__tests__") then
      goto continue
    end
    new_content[#new_content + 1] = "export * from './" .. string.gsub(path, "%..+", "") .. "'"
    ::continue::
  end

  vim.api.nvim_buf_set_lines(current_bufnr, 0, -1, false, new_content)

  vim.api.nvim_command("write")
end

local function setup()
  vim.api.nvim_create_user_command("Export", main, {})
end

return { setup = setup }
