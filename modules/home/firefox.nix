{ pkgs, config, inputs, ... }:
{
  programs.firefox = {
    enable = true;
    languagePacks = [ "de" "en-US" ];
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      EnableTrackingProtection = {
	Value = true;
	Locked = true;
	Cryptomining = true;
	Fingerprinting = true;
      };
      DisablePocket = true;
      DisableFirefoxAccounts = true;
      DisableAccounts = true;
      DisableFirefoxScreenshots = true;
    };
    profiles.xp = {
      extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
	ublock-origin
	bitwarden
	darkreader
	vimium
	gruvbox-dark-theme
	# wappalyzer
      ];
      settings = {
	"extensions.pocket.enabled" = false;
	"extensions.autoDisableScopes" = 0;
	"extensions.formautofill.creditCards.enabled" = false;
	"dom.forms.autocomplete.formautofill" = false;
	"dom.payments.defaults.saveAddress" = false;
	"browser.newtabpage.enabled" = false;
	"browser.newtabpage.activity-stream.feeds.section.topstories" = false;
	"browser.newtabpage.activity-stream.feeds.snippets" = false;
	"browser.newtabpage.activity-stream.section.highlights.includePocket" = false;
	"browser.newtabpage.activity-stream.showSponsored" = false;
	"browser.newtabpage.activity-stream.system.showSponsored" = false;
	"browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
	"extensions.htmlaboutaddons.recommendations.enabled" = false;
	"ui.systemUsesDarkTheme" = 1;
	"cookiebanners.ui.desktop.enabled" = true;
	"media.ffmpeg.vaapi.enabled" = true;
      };
    };
  };
}
