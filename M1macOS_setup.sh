#!/bin/sh
# Setup a new macOS environment
# Many commands may be out of date or cause harm to your system
# Use at your own risk

# Disable pop-up Accent Window when holding keyboard key
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Make text selectable in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Fast opening and closing windows and popovers
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Treat help window like a normal window, not always floating on top
defaults write com.apple.helpviewer DevMode -bool true

# Enable Tab in modal dialogs (Full keyboard access)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable menubar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Enable faster showing, hiding, resizing, and zooming windows in Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expanded save panels by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expanded print panels by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Prevent iCloud being default save location
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once all print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Turn off file download “Quarantining” e.g. "Are you sure you want to open it?"
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Check for software updates every day (1)
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Disable Smart Quotes and Smart Dashes globally and in TextEdit (Some programs may still require tweak in Edit>Substitions menu)
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write com.apple.TextEdit SmartQuotes -bool false
defaults write com.apple.TextEdit SmartDashes -bool false

# Set location, filetype, and remove shadow for screenshots
defaults write com.apple.screencapture location -string "${HOME}/Desktop"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Hopefully disable all Finder animations
defaults write com.apple.finder DisableAllAnimations -bool true

# Enable spring loading for directories and make it snappy (if it's too snappy, increase the value of milliseconds)
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Try not create annoying .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Empty Trash - no warning
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Expand File Info panes for “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict General -bool true OpenWith -bool true Privileges -bool true

# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool true

# Enable highlight hover effect for stacks in Dock
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Change the minimize effect from default "genie" to faster "scale" effect
defaults write com.apple.dock mineffect -string "scale"

# Don't minimize window to it's application in Dock
defaults write com.apple.dock minimize-to-application -bool false

# Enable spring-loading on all the items in Dock
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show process indicators in Dock
defaults write com.apple.dock show-process-indicators -bool true

# Disable Dock animations
defaults write com.apple.dock launchanim -bool false

# Make Mission Control animation faster
defaults write com.apple.dock expose-animation-duration -float 0.1

# Disable Mission Control "Group by App" windows
defaults write com.apple.dock expose-group-by-app -bool false

# Disable the Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Disable autohide delay of Dock
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0
defaults write com.apple.dock autohide -bool true

# Don’t send search queries to Apple via Safari
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Use Tab to highlight each item on a web page
defaults write com.apple.Safari WebKitTabToLinksPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2TabsToLinks -bool true

# Show full URL in Safari sans scheme
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Set the best Safari homepage
defaults write com.apple.Safari HomePage -string "about:blank"

# Do not automatically open "safe" downloads - no such thing
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Do not always show Favorites bar - that's what new tab is for
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Free up screen space by disabling Sidebar in new tabs
defaults write com.apple.Safari ShowSidebarInTopSites -bool false

# Enable Safari debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable Safari search default to Contains instead of Starts With
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Remove useless icons from Safari Bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Disable Reply and Send Animations in Mail
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Include only the email address on pasteboard
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Disable inline attachment viewing in Mail
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Exclude external volumes from Spotlight indexing
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"

# Order and enable/disable filetypes in Spotlight
defaults write com.apple.spotlight orderedItems -array '{"enabled" = 1;"name" = "APPLICATIONS";}' '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' '{"enabled" = 1;"name" = "DIRECTORIES";}' '{"enabled" = 1;"name" = "PDF";}' '{"enabled" = 1;"name" = "FONTS";}' '{"enabled" = 0;"name" = "DOCUMENTS";}' '{"enabled" = 0;"name" = "MESSAGES";}' '{"enabled" = 0;"name" = "CONTACT";}' '{"enabled" = 0;"name" = "EVENT_TODO";}' '{"enabled" = 0;"name" = "IMAGES";}' '{"enabled" = 0;"name" = "BOOKMARKS";}' '{"enabled" = 0;"name" = "MUSIC";}' '{"enabled" = 0;"name" = "MOVIES";}' '{"enabled" = 0;"name" = "PRESENTATIONS";}' '{"enabled" = 0;"name" = "SPREADSHEETS";}' '{"enabled" = 0;"name" = "SOURCE";}'
# Load new settings before rebuilding the index
killall mds > /dev/null 2>&1
# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null
# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

# Only use UTF-8 in Terminal
defaults write com.apple.terminal StringEncodings -array 4

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Show CPU usage in Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 100

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0

# Show Data in the Disk graph (instead of IO)
defaults write com.apple.ActivityMonitor DiskGraphType -int 1

# Show Data in the Network graph (instead of packets)
defaults write com.apple.ActivityMonitor NetworkGraphType -int 1

# Update Frequency (in seconds, default 5)
defaults write com.apple.ActivityMonitor UpdatePeriod -int 2

# TextEdit defaults to plain text encoding
defaults write com.apple.TextEdit RichText -int 0
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# Enable Disk Utility advanced user options and debug menu
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true

# Disable Smart Quotes and automatic Spell Checking in Messages
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticQuoteSubstitutionEnabled" -bool false
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

# Expanded print panels from Chrome
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true

sudo pmset -a standbydelay 86400

sudo nvram SystemAudioVolume=" "

sudo find / -name .DS_Store -delete; killall Finder

killall Dock

