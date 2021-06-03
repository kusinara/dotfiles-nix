{ config, lib, ... }:

with lib;
{
  time.timeZone = mkDefault "Europe/Ljubljana";
  i18n.defaultLocale = mkDefault "en_US.UTF-8";
  # For redshift, mainly
  location = (if config.time.timeZone == "Europe/Ljubljana" then {
    latitude = 46.0569;
    longitude = 14.5058;
  }

  # So the bitwarden CLI knows where to find my server.
  modules.shell.bitwarden.config.server = "bitwarden.robertstojs.com";

}

