# dotfiles

dotfiles for use with sway / wayland

## Requirements
* sway
* swayidle
* swaylock
* mako
* waybar
* wofi
* zsh
* oh my zsh: https://ohmyz.sh/#install
* spaceship prompt: https://starship.rs/guide/#%F0%9F%9A%80-installation
* tpm tmux: https://github.com/tmux-plugins/tpm
* dracula gtk: git clone https://github.com/dracula/gtk.git ~/.themes/Dracula

Swtich to resolved
* https://wiki.archlinux.org/index.php/Systemd-resolved

## Symlinks
* All the links manually.
```
ln -sf /home/sean/workspace/dotfiles/scripts/vpn.sh /home/sean/.scripts
ln -sf /home/sean/workspace/dotfiles/sway /home/sean/.config
ln -sf /home/sean/workspace/dotfiles/waybar /home/sean/.config
ln -sf /home/sean/workspace/dotfiles/alacritty /home/sean/.config
ln -sf /home/sean/workspace/dotfiles/zsh/.zsh /home/sean/
ln -sf /home/sean/workspace/dotfiles/zsh/.zshrc /home/sean/
ln -sf /home/sean/workspace/dotfiles/zsh/.zprofile /home/sean/
ln -sf /home/sean/workspace/dotfiles/scripts /home/sean/.scripts
ln -sf /home/sean/workspace/dotfiles/tmux/.tmux.conf /home/sean/
ln -sf /home/sean/workspace/dotfiles/mako /home/sean/.config
```
* Or using ansible I have.

```
  - name: Install dotfiles
    file:
        src: "{{ ansible_user_dir }}/dotfiles/{{ item.src }}"
        dest: "{{ ansible_user_dir }}/{{ item.dst }}"
        state: link
        force: yes
    with_items: '{{ dots_links }}'
```
* Vars looks like this.

```
dots_links:
  - { src: "mako", dst: ".config/mako" }
  - { src: "waybar", dst: ".config/waybar" }
  - { src: "sway", dst: ".config/sway" }
  - { src: "alacritty", dst: ".config/alacritty" }
  - { src: "backgrounds", dst: ".backgrounds" }
  - { src: "fonts", dst: ".fonts" }
  - { src: "scripts", dst: ".scripts" }
  - { src: "zsh/.zprofile", dst: ".zprofile" }
  - { src: "zsh/.zshrc", dst: ".zshrc" }
  - { src: "zsh/.zsh", dst: ".zsh" }
  - { src: "zsh/.zshenv", dst: ".zshenv" }
  - { src: "tmux/.tmux.conf", dst: ".tmux.conf" }
```

## Screencaps