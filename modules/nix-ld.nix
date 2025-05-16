{
  programs.nix-ld.enable = true;

  programs.nix-ld.libraries = with pkgs; [
      glibc
      stdenv.cc.cc.lib
      zlib
      openssl
      lttng-ust
      libsecret
      libuuid
      libxkbcommon

      # Графика и GUI
      xorg.libX11
      xorg.libXext
      xorg.libXrender
      xorg.libXi
      xorg.libXcursor
      xorg.libXfixes
      xorg.libXrandr
      xorg.libXdamage
      xorg.libxcb
      xorg.libXcomposite
      xorg.libXScrnSaver  # libXss.so.1
      xorg.libXxf86vm
      xorg.libXtst

      # Шрифты и рендеринг
      fontconfig
      freetype
      harfbuzz
      pango
      cairo
      gdk-pixbuf
      atk
      gtk3

      # DBus и аудио
      dbus
      alsa-lib
      libpulseaudio

      # Дополнительные зависимости JetBrains
      jetbrains.jdk
      python3
      expat
      libxml2
      xz
      nss
      nspr
      cups
      at-spi2-core
      at-spi2-atk
  ];
}
