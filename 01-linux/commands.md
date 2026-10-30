# Linux Commands Cheat Sheet

## Files and folders
| Command | Purpose |
|---|---|
| `pwd` | Show current folder |
| `ls -la` | List all files with details |
| `cd <folder>` / `cd ..` | Go into a folder / go up one level |
| `mkdir -p a/b` | Create folders |
| `touch f.txt` | Create an empty file |
| `cp a b` / `mv a b` | Copy / move or rename |
| `rm -r <folder>` | Delete (be careful) |

## View and search
| Command | Purpose |
|---|---|
| `cat f` / `less f` | Read a file |
| `head -n 5 f` / `tail -f f` | First 5 lines / follow a log live |
| `grep "text" f` | Search text in a file |
| `find . -name "*.log"` | Find files |
| `wc -l f` | Count lines |

## Permissions
| Command | Purpose |
|---|---|
| `chmod 755 f` | Change permissions |
| `chown user:group f` | Change owner |
| `sudo <cmd>` | Run as admin |

## Processes and system
| Command | Purpose |
|---|---|
| `ps aux` / `top` | Running processes |
| `kill <pid>` | Stop a process |
| `df -h` / `free -h` | Disk / RAM |
| `systemctl status nginx` | Service status |
| `journalctl -u nginx` | Service logs |

## Network
| Command | Purpose |
|---|---|
| `ping google.com` | Check connectivity |
| `curl -I https://example.com` | Show HTTP headers |
| `ss -tulpn` | Open ports |
| `ssh user@host` | Log in to a remote server |

## Pipe example
`ps aux | grep nginx | wc -l`
