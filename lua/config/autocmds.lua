local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- 1日1回のみプラグイン更新をチェック
autocmd("VimEnter", {
  group = augroup("autoupdate", { clear = true }),
  callback = function()
    local data_path = vim.fn.stdpath("data")
    local update_file = data_path .. "/lazy_last_update"
    local current_time = os.time()

    -- 最後の更新時刻を読み込み
    local last_update = 0
    if vim.fn.filereadable(update_file) == 1 then
      local content = vim.fn.readfile(update_file)
      if #content > 0 then
        last_update = tonumber(content[1]) or 0
      end
    end

    -- 24時間（86400秒）以上経過している場合のみ更新
    if current_time - last_update >= 86400 then
      require("lazy").update({ show = false })
      -- 更新時刻を記録
      vim.fn.writefile({ tostring(current_time) }, update_file)
    end
  end,
})

autocmd({"FocusGained", "BufEnter", "CursorHold", "CursorHoldI"}, {
  group = augroup("checktime", { clear = true }),
  command = "checktime",
})

local augroup = vim.api.nvim_create_augroup('FileTypeSettings', { clear = true })

vim.api.nvim_create_autocmd('FileType', {
  group = augroup,
  pattern = { "markdown" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.softtabstop = 2
    vim.bo.expandtab = true
  end,
})
