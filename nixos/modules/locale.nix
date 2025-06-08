{
  console.keyMap = "ruwin_alt_sh-UTF-8";
  time.timeZone = "Europe/Moscow";

  i18n =
    let
      locale = "ru_RU.UTF-8";
    in
    {
      defaultLocale = "ru_RU.UTF-8";

      extraLocaleSettings = {
        LC_ADDRESS = locale;
        LC_IDENTIFICATION = locale;
        LC_MEASUREMENT = locale;
        LC_MONETARY = locale;
        LC_NAME = locale;
        LC_NUMERIC = locale;
        LC_PAPER = locale;
        LC_TELEPHONE = locale;
        LC_TIME = locale;
      };
    };
}
