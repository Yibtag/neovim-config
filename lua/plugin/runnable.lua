vim.keymap.set("n", "<c-x>", function()
    local current_buffer = vim.api.nvim_get_current_buf()
    local file_name = vim.api.nvim_buf_get_name(current_buffer)
    local file_path = vim.fn.expand(file_name)

    if string.find(file_path, ".c") then
	vim.cmd("!gcc " .. file_path .. " -o main.exe")
    end

    if string.find(file_path, ".py") then
	vim.cmd("term python3 " .. file_path)
    end

    if string.find(file_path, ".js") then
	vim.cmd("term node " .. file_path)
    end

    if string.find(file_path, ".exe") then
	vim.cmd("term " .. file_path)
    end
 
    if string.find(file_path, ".cpp") then
	vim.cmd("!g++ " .. file_path .. " -o main.exe")
    end
end)
