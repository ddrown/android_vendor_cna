# We need a way to prevent the stuff Google Apps replaces from being included in the build.
# This is a hacky way to do that.
ifdef CND_RELEASE
    PACKAGES.Phone.OVERRIDES := Calendar Email Exchange Gallery2 QuickSearchBox Tag PicoTts
endif
