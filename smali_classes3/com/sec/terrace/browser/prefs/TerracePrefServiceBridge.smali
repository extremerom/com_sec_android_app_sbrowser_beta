.class public Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;,
        Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ForceDarkBehavior;
    }
.end annotation


# direct methods
.method public static clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z
    .locals 10

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    move-result v0

    return v0
.end method

.method public static clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;JJZ)Z
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;JJZ)Z

    move-result p0

    return p0
.end method

.method public static clearOtrBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZ)Z
    .locals 9

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->clearOtrBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZ)Z

    move-result v0

    return v0
.end method

.method public static getAndroidPermissionForContentSetting(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAntiTrackingLevel(Z)I
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getAntiTrackingLevel(Z)I

    move-result p0

    return p0
.end method

.method public static getFontScaleFactor()F
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getFontScaleFactor()F

    move-result v0

    return v0
.end method

.method public static getOptionalAndroidPermissionForContentSetting(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getOptionalAndroidPermissionForContentSetting(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPersonalDataSyncSetFlag()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getPersonalDataSyncSetFlag()Z

    move-result v0

    return v0
.end method

.method public static getSafeBrowsingGlobalConfigSetting()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getSafeBrowsingGlobalConfigSetting()Z

    move-result v0

    return v0
.end method

.method public static getStorageAccessApiGlobalConfigSetting()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getStorageAccessApiGlobalConfigSetting()Z

    move-result v0

    return v0
.end method

.method public static isAllowCookiesEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isAllowCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAllowPopupsEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isAllowPopupsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isAutoSigninEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isAutoSigninEnabled()Z

    move-result v0

    return v0
.end method

.method public static isBackgroundPlayEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isBackgroundPlayEnabled()Z

    move-result v0

    return v0
.end method

.method public static isBlockUnwantedWebpagesEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isBlockUnwantedWebpagesEnabled()Z

    move-result v0

    return v0
.end method

.method public static isContentBlockerEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isContentBlockerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isContentBlockerStatisticsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isContentBlockerStatisticsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isCredManPasskeyEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isCredManPasskeyEnabled()Z

    move-result v0

    return v0
.end method

.method public static isDefaultContentBlockerEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isDefaultContentBlockerEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGoToBottomEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isGoToBottomEnabled()Z

    move-result v0

    return v0
.end method

.method public static isGoToTopEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isGoToTopEnabled()Z

    move-result v0

    return v0
.end method

.method public static isHighContrastModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isHighContrastModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static isJavaScriptEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public static isKnoxCookiesEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isKnoxCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public static isKnoxJavaScriptEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isKnoxJavaScriptEnabled()Z

    move-result v0

    return v0
.end method

.method public static isKnoxPopupEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isKnoxPopupEnabled()Z

    move-result v0

    return v0
.end method

.method public static isNightModeEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isNightModeEnabled()Z

    move-result v0

    return v0
.end method

.method public static isPushNotificationsEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isPushNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isRememberPasswordsEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isRememberPasswordsEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSafeBrowsingEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isSafeBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public static isSafeBrowsingOptPreviously()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isSafeBrowsingOptPreviously()Z

    move-result v0

    return v0
.end method

.method public static isSearchSuggestEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isSearchSuggestEnabled()Z

    move-result v0

    return v0
.end method

.method public static isThirdPartyCookiesEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isThirdPartyCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public static isWebAuthnPasskeyEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isWebAuthnPasskeyEnabled()Z

    move-result v0

    return v0
.end method

.method public static isZawgyiLanguageEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->isZawgyiLanguageEnabled()Z

    move-result v0

    return v0
.end method

.method public static setAllowCookiesEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAllowCookiesEnabled(Z)V

    return-void
.end method

.method public static setAllowPopupsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAllowPopupsEnabled(Z)V

    return-void
.end method

.method public static setAllowThirdPartyCookies(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAllowThirdPartyCookies(Z)V

    return-void
.end method

.method public static setAntiTrackingActivationThreshold(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAntiTrackingActivationThreshold(I)V

    return-void
.end method

.method public static setAntiTrackingEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAntiTrackingEnabled(Z)V

    return-void
.end method

.method public static setAntiTrackingLevel(ZI)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAntiTrackingLevel(ZI)V

    return-void
.end method

.method public static setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V

    return-void
.end method

.method public static setAutoHttpsUpgradeEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAutoHttpsUpgradeEnabled(Z)V

    return-void
.end method

.method public static setAutoSigninEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAutoSigninEnabled(Z)V

    return-void
.end method

.method public static setAutomaticStorageAccessState(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAutomaticStorageAccessState(I)V

    return-void
.end method

.method public static setAutoplayEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setAutoplayEnabled(Z)V

    return-void
.end method

.method public static setBackgroundPlayEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBackgroundPlayEnabled(Z)V

    return-void
.end method

.method public static setBlockAutoDownloadEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockAutoDownloadEnabled(Z)V

    return-void
.end method

.method public static setBlockFixedFrameAllowedStrings(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockFixedFrameAllowedStrings(Ljava/lang/String;)V

    return-void
.end method

.method public static setBlockFixedFrameEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockFixedFrameEnabled(Z)V

    return-void
.end method

.method public static setBlockNoisyNotificaitonsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockNoisyNotificaitonsEnabled(Z)V

    return-void
.end method

.method public static setBlockPluginFingerprintingGcLevel(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockPluginFingerprintingGcLevel(I)V

    return-void
.end method

.method public static setBlockUnwantedWebpages(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockUnwantedWebpages(Z)V

    return-void
.end method

.method public static setBlockWebFingerprintingAllowedDomains(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockWebFingerprintingAllowedDomains(Ljava/lang/String;)V

    return-void
.end method

.method public static setBlockWebFingerprintingEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setBlockWebFingerprintingEnabled(Z)V

    return-void
.end method

.method public static setCompactModeEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setCompactModeEnabled(Z)V

    return-void
.end method

.method public static setContentBlockerEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setContentBlockerEnabled(Z)V

    return-void
.end method

.method public static setContentBlockerStatisticsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setContentBlockerStatisticsEnabled(Z)V

    return-void
.end method

.method public static setCredManPasskeyEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setCredManPasskeyEnabled(Z)V

    return-void
.end method

.method public static setCsCookieCapExpireEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setCsCookieCapExpireEnabled(Z)V

    return-void
.end method

.method public static setCsCookieCapExpireTime(I)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setCsCookieCapExpireTime(I)V

    return-void
.end method

.method public static setDefaultContentBlockerEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setDefaultContentBlockerEnabled(Z)V

    return-void
.end method

.method public static setDownloadDefaultStorage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setDownloadDefaultStorage(Ljava/lang/String;)V

    return-void
.end method

.method public static setFontScaleFactor(F)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setFontScaleFactor(F)V

    return-void
.end method

.method public static setForceDarkBehavior(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setForceDarkBehavior(I)V

    return-void
.end method

.method public static setForceZoomEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setForceZoomEnabled(Z)V

    return-void
.end method

.method public static setGoToBottomEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setGoToBottomEnabled(Z)V

    return-void
.end method

.method public static setGoToTopEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setGoToTopEnabled(Z)V

    return-void
.end method

.method public static setHighContrastMode(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setHighContrastMode(Z)V

    return-void
.end method

.method public static setJavaScriptEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public static setKnoxCookiesEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setKnoxCookiesEnabled(Z)V

    return-void
.end method

.method public static setKnoxJavaScriptEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setKnoxJavaScriptEnabled(Z)V

    return-void
.end method

.method public static setKnoxPopupEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setKnoxPopupEnabled(Z)V

    return-void
.end method

.method public static setMaliciousSiteDetectionEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setMaliciousSiteDetectionEnabled(Z)V

    return-void
.end method

.method public static setNightMode(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setNightMode(Z)V

    return-void
.end method

.method public static setPasswordEchoEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setPasswordEchoEnabled(Z)V

    return-void
.end method

.method public static setPersonalDataSyncSetFlag(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setPersonalDataSyncSetFlag(Z)V

    return-void
.end method

.method public static setPrivacyAccessTokenEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setPrivacyAccessTokenEnabled(Z)V

    return-void
.end method

.method public static setPushNotificationsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setPushNotificationsEnabled(Z)V

    return-void
.end method

.method public static setRedirectSkipEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setRedirectSkipEnabled(Z)V

    return-void
.end method

.method public static setRememberPasswordsEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setRememberPasswordsEnabled(Z)V

    return-void
.end method

.method public static setRequestDesktopSitesEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    return-void
.end method

.method public static setSafeBrowsing(Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler;->setSafeBrowsingBrowserSettings(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSafeBrowsing(Z)V

    return-void
.end method

.method public static setSafeBrowsingGlobalConfigSetting(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSafeBrowsingGlobalConfigSetting(Z)V

    return-void
.end method

.method public static setSafeBrowsingOptState(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSafeBrowsingOptState(Z)V

    return-void
.end method

.method public static setSearchSuggestEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSearchSuggestEnabled(Z)V

    return-void
.end method

.method public static setSecretDownloadEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSecretDownloadEnabled(Z)V

    return-void
.end method

.method public static setStorageAccessApiGlobalConfigSetting(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setStorageAccessApiGlobalConfigSetting(Z)V

    return-void
.end method

.method public static setSystemFontFamily(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setSystemFontFamily(Ljava/lang/String;)V

    return-void
.end method

.method public static setUseNightDim(ZI)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setUseNightDim(ZI)V

    return-void
.end method

.method public static setVAXContrastFactor(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setVAXContrastFactor(I)V

    return-void
.end method

.method public static setWebAuthnPasskeyEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setWebAuthnPasskeyEnabled(Z)V

    return-void
.end method

.method public static setZawgyiLanguageEnable(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->getInstance()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;->setZawgyiLanguageEnable(Z)V

    return-void
.end method
