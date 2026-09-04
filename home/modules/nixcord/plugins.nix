{ ... }:

{
  programs.nixcord.config.plugins = {
    alwaysExpandRoles.enable = true;
    alwaysTrust.enable = true;
    betterRoleContext.enable = true;
    betterRoleDot.enable = true;
    betterSettings.enable = true;
    betterUploadButton.enable = true;
    biggerStreamPreview.enable = true;
    clearUrls.enable = true;

    clientTheme = {
      color = "1B1B1B";
      enable = true;
    };

    copyStickerLinks.enable = true;
    copyUserUrls.enable = true;

    crashHandler = {
      attemptToNavigateToHome = true;
      attemptToPreventCrashes = true;
      enable = true;
    };

    customIdle = {
      enable = true;
      idleTimeout = 0.0;
      remainInIdle = true;
    };

    disableCallIdle.enable = true;
    expressionCloner.enable = true;
    fakeNitro.enable = true;
    favoriteEmojiFirst.enable = true;
    forceOwnerCrown.enable = true;
    fullSearchContext.enable = true;
    fullUserInChatbox.enable = true;

    mentionAvatars = {
      enable = true;
      showAtSymbol = true;
    };

    mutualGroupDms.enable = true;
    noMiddleClickPaste.enable = true;
    noOnboardingDelay.enable = true;
    noProfileThemes.enable = true;
    noReplyMention.enable = true;
    noTypingAnimation.enable = true;
    noUnblockToJump.enable = true;

    notificationVolume = {
      enable = true;
      notificationVolume = 25.0;
    };

    permissionsViewer.enable = true;
    plainFolderIcon.enable = true;
    platformIndicators.enable = true;
    quickMention.enable = true;
    readAllNotificationsButton.enable = true;

    relationshipNotifier = {
      notices = true;
    };

    reverseImageSearch.enable = true;
    reviewDb.enable = true;
    serverInfo.enable = true;

    showHiddenThings = {
      enable = true;
      showInvitesPaused = true;
      showModView = true;
      showTimeouts = true;
    };

    showTimeoutDuration.enable = true;
    silentMessageToggle.enable = true;

    silentTyping = {
      enable = true;
      isEnabled = true;
      showIcon = true;
    };

    tenorGifSearch.enable = true;
    validReply.enable = true;
    validUser.enable = true;
    voiceChatDoubleClick.enable = true;
    voiceDownload.enable = true;

    voiceMessages = {
      echoCancellation = false;
      enable = true;
      noiseSuppression = false;
    };

    webScreenShareFixes.enable = true;
  };
}
