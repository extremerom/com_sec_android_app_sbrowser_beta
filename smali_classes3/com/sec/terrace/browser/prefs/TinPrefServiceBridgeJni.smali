.class public Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/prefs/TinPrefServiceBridgeJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clearBrowsingData(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;ZZZZZZZZI)V
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MyYQq2Rh(Ljava/lang/Object;ZZZZZZZZI)V

    return-void
.end method

.method public clearBrowsingDataForSuspiciousSite(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;JJZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MO2eBCyd(Ljava/lang/Object;JJZ)V

    return-void
.end method

.method public getAntiTrackingLevel(Z)I
    .locals 0

    invoke-static {p1}, LJ/N;->MgoUF8zm(Z)I

    move-result p0

    return p0
.end method

.method public getAutoSigninEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MFkeE_Vw(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getBackgroundPlayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MC$mYgyK(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCompactModeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MVWrBMdd(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MBWqjIXG(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getContentBlockerStatisticsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MCgFu$Rr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDefaultContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M_UFWHUE(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFontScaleFactor(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)F
    .locals 0

    invoke-static {p1}, LJ/N;->MLwUSKwt(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public getGoToBottomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MwM7SFpV(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getGoToTopEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MCqfLes_(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->Mf0wRUqU(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getKnoxCookiesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MpE7m3DH(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getKnoxJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M0xFGPQw(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getKnoxPopupEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M5P0NmQO(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getPersonalDataSyncSetFlag(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MnTxrJa5(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getRememberPasswordsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M6y4ynMW(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getSafeBrowsingGlobalConfigSetting()Z
    .locals 0

    invoke-static {}, LJ/N;->Mv6MzBgX()Z

    move-result p0

    return p0
.end method

.method public getSearchSuggestEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->M7wqKRGw(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getStorageAccessApiGlobalConfigSetting()Z
    .locals 0

    invoke-static {}, LJ/N;->MtxI2Msz()Z

    move-result p0

    return p0
.end method

.method public getZawgyiLanguageEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MbszSXaV(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBlockNoisyNotificaitonsEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->Me8ygZ99()Z

    move-result p0

    return p0
.end method

.method public isBlockUnwantedWebpagesEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MoYQjM6H()Z

    move-result p0

    return p0
.end method

.method public isContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDXq3rgx(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public isContentSettingUserModifiable(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;I)Z
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MZKQxOjZ(Ljava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public isCredManPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MwbuSWL1(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isHighContrastModeEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MpbYKDIe()Z

    move-result p0

    return p0
.end method

.method public isNightModeEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MYEQar2k()Z

    move-result p0

    return p0
.end method

.method public isSafeBrowsingEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MvDHExdC()Z

    move-result p0

    return p0
.end method

.method public isSafeBrowsingOptPreviously()Z
    .locals 0

    invoke-static {}, LJ/N;->MZ372Dkb()Z

    move-result p0

    return p0
.end method

.method public isThirdPartyCookiesEnabled()Z
    .locals 0

    invoke-static {}, LJ/N;->MlJ1SbDe()Z

    move-result p0

    return p0
.end method

.method public isWebAuthnPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;)Z
    .locals 0

    invoke-static {p1}, LJ/N;->MG_BmoQK(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public resetAcceptLanguages(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MumjEFfB(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setAllowThirdPartyCookies(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MqwjngXM(Z)V

    return-void
.end method

.method public setAntiTrackingActivationThreshold(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MHDmRcy2(I)V

    return-void
.end method

.method public setAntiTrackingEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MJOum_0A(Z)V

    return-void
.end method

.method public setAntiTrackingLevel(ZI)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MaGvOWic(ZI)V

    return-void
.end method

.method public setAntiTrackingThirdPartyCookieBlockingEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MYfiOfC1(Z)V

    return-void
.end method

.method public setAutoHttpsUpgradeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MWvpfCkh(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setAutoSigninEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MMFR_SfH(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setAutomaticStorageAccessState(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->M0wTl_a7(I)V

    return-void
.end method

.method public setAutoplayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MziCih5p(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setBackgroundPlayEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MrZcqbyy(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setBlockAutoDownloadEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M5KLoh9k(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setBlockFixedFrameAllowedStrings(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M6xVGvPY(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBlockFixedFrameEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->Mx6vGhfA(Z)V

    return-void
.end method

.method public setBlockNoisyNotificaitonsEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MrDcc4Q6(Z)V

    return-void
.end method

.method public setBlockPluginFingerprintingGcLevel(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MbFGuKFZ(I)V

    return-void
.end method

.method public setBlockUnwantedWebpages(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MQ4hyNww(Z)V

    return-void
.end method

.method public setBlockWebFingerprintingAllowedDomains(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MtTmdDrD(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setBlockWebFingerprintingEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->M76PwQkF(Z)V

    return-void
.end method

.method public setCompactModeEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MmzSKdHb(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MBCmIO2J(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentBlockerStatisticsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MQY3wzKC(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentSettingEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;IZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MfIt07Ez(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public setContentSettingForPattern(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;ILjava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mg42fwT1(Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method

.method public setCredManPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MgxzwcTY(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setCsCookieCapExpireEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MyCbm8x6(Z)V

    return-void
.end method

.method public setCsCookieCapExpireTime(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MpTcvyOq(I)V

    return-void
.end method

.method public setDefaultContentBlockerEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MGn_vkWd(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setDownloadDefaultStorage(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MDyvpUE7(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setFontScaleFactor(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;F)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MmkXdfP9(Ljava/lang/Object;F)V

    return-void
.end method

.method public setForceDarkBehavior(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->MUWSzoyM(I)V

    return-void
.end method

.method public setForceZoomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MesWarQv(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setGoToBottomEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Me5rKVyI(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setGoToTopEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MBGTJQ7T(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setHighContrastMode(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MgplfUvk(Z)V

    return-void
.end method

.method public setJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MuLi2gkv(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setKnoxCookiesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MzSsUbWE(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setKnoxJavaScriptEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M4kgLF8T(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setKnoxPopupEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MagTdj1l(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setMaliciousSiteDetectionEnabled(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MyMMIt_W(Z)V

    return-void
.end method

.method public setNightMode(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MP0qW$Tu(Z)V

    return-void
.end method

.method public setPasswordEchoEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M6WfGBHh(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPersonalDataSyncSetFlag(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MIKLJZDE(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPrivacyAccessTokenEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M4Ir3c80(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRedirectSkipEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MkqifVfa(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRememberPasswordsEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MhBEZU5F(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRequestDesktopSitesEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MtiLViEh(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSafeBrowsing(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MH5bOaLq(Z)V

    return-void
.end method

.method public setSafeBrowsingGlobalConfigSetting(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->M$f6MYdA(Z)V

    return-void
.end method

.method public setSafeBrowsingOptState(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->Me0tFw7b(Z)V

    return-void
.end method

.method public setSearchSuggestEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mxp2YofN(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSecretDownloadEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MMum79qz(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setStorageAccessApiGlobalConfigSetting(Z)V
    .locals 0

    invoke-static {p1}, LJ/N;->MrokeXhN(Z)V

    return-void
.end method

.method public setSystemFontFamily(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mbfl_Xd$(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setUseNightDim(ZI)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M5lZqOLh(ZI)V

    return-void
.end method

.method public setVAXContrastFactor(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->Mg1Uetdj(I)V

    return-void
.end method

.method public setWebAuthnPasskeyEnabled(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M4C5Ca2Y(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setZawgyiLanguageEnable(Lcom/sec/terrace/browser/prefs/TinPrefServiceBridge;Z)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MfNbrGS2(Ljava/lang/Object;Z)V

    return-void
.end method
