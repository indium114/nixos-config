# fetchit config

column_padding = 2

art = {
  source = "./logo.txt"
}

function fetch()
  art.out[1] = color.cyan(art.out[1])
  art.out[2] = color.cyan(art.out[2])
  art.out[3] = color.cyan(art.out[3])
  art.out[4] = color.cyan(art.out[4])
  art.out[5] = color.cyan(art.out[5])
  art.out[6] = color.cyan(art.out[6])
  art.out[7] = color.cyan(art.out[7])
  return {
    columns = {
      art.out,
      {
        color.blue("╭───────────╮"),
        color.blue("│  user    │") .. " " .. color.cyan(user.name) .. "@" .. color.cyan(host.name),
        color.blue("│ 󰣖 os      │") .. " " .. string.lower(os.name),
        color.blue("│  device  │") .. " " .. string.lower(vendor.name .. " " .. vendor.model),
        color.blue("│  kernel  │") .. " " .. "linux" .. " " .. string.lower(kernel.release),
        color.blue("│ 󱂬 wm      │") .. " " .. string.lower(wm.name),
        color.blue("│  shell   │") .. " " .. string.lower(shell.name),
        color.blue("│  cpu     │") .. " " .. string.lower(cpu.name),
        color.blue("│ 󰢮 gpu     │") .. " " .. string.lower(gpu.name),
        color.blue("│  ram     │") .. " " .. string.format("%.1fgb", memory.used_gb) .. " / " .. string.format("%.1fgb", memory.total_gb) .. " (" .. string.format("%.1f", memory.percent) .. "%)",
        color.blue("│  disk    │") .. " " .. string.format("%.1fgb", disk.used_gb) .. " / " .. string.format("%.1fgb", disk.total_gb),
        color.blue("│  palette │") .. " " .. color.black("●") .. " " .. color.white("●") .. " " .. color.cyan("●") .. " " .. color.magenta("●") .. " " .. color.blue("●") .. " " .. color.yellow("●") .. " " .. color.green("●") .. " " .. color.red("●"),
        color.blue("╰───────────╯")
      }
    }
  }
end
