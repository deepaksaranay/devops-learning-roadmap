# Linux Commands Cheat Sheet

## Files और folders
| Command | काम |
|---|---|
| `pwd` | अभी किस folder में हैं |
| `ls -la` | सारी फ़ाइलें (छुपी भी) विस्तार से |
| `cd <folder>` / `cd ..` | folder में जाना / एक ऊपर जाना |
| `mkdir -p a/b` | folder बनाना |
| `touch f.txt` | खाली फ़ाइल बनाना |
| `cp a b` / `mv a b` | copy / move या rename |
| `rm -r <folder>` | मिटाना (सावधानी से) |

## देखना और खोजना
| Command | काम |
|---|---|
| `cat f` / `less f` | फ़ाइल पढ़ना |
| `head -n 5 f` / `tail -f f` | शुरू की 5 लाइन / live log देखना |
| `grep "text" f` | फ़ाइल में text खोजना |
| `find . -name "*.log"` | फ़ाइल खोजना |
| `wc -l f` | लाइनें गिनना |

## Permissions
| Command | काम |
|---|---|
| `chmod 755 f` | अनुमतियाँ बदलना |
| `chown user:group f` | मालिक बदलना |
| `sudo <cmd>` | admin की तरह चलाना |

## Processes और system
| Command | काम |
|---|---|
| `ps aux` / `top` | चल रहे processes |
| `kill <pid>` | process रोकना |
| `df -h` / `free -h` | disk / RAM |
| `systemctl status nginx` | service की स्थिति |
| `journalctl -u nginx` | service के logs |

## Network
| Command | काम |
|---|---|
| `ping google.com` | connection जाँचना |
| `curl -I https://example.com` | HTTP header देखना |
| `ss -tulpn` | खुले ports |
| `ssh user@host` | दूर के server में जाना |

## Pipe का उदाहरण
`ps aux | grep nginx | wc -l`
