.class public Lcom/sec/sbrowser/spl/wrapper/SplFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sApplicationContext:Landroid/content/Context;

.field private static sSupportClipboardEx:Ljava/lang/Boolean;

.field private static sSupportDirectWriting:Ljava/lang/Boolean;

.field private static sSupportHoveringUi:Ljava/lang/Boolean;

.field private static sSupportMobileKeyboard:Ljava/lang/Boolean;

.field private static sSupportSem:Ljava/lang/Boolean;

.field private static sSupportSemLite:Ljava/lang/Boolean;


# direct methods
.method public static getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static isSemAvailable()Z
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSem:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_SEM_SUPPORT:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "SplFeature"

    const-string v2, "FEATURE_SEM_SUPPORT is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSem:Ljava/lang/Boolean;

    return v1

    :cond_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSem:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSem:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSem:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSemLiteAvailable()Z
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSemLite:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_SEM_SUPPORT_LITE:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "SplFeature"

    const-string v2, "FEATURE_SEM_SUPPORT_LITE is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSemLite:Ljava/lang/Boolean;

    return v1

    :cond_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSemLite:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSemLite:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportSemLite:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static supportClipboardEx()Z
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportClipboardEx:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/ClipboardExManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportClipboardEx:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportClipboardEx:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportClipboardEx:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportDirectWriting()Z
    .locals 3

    const-string v0, "SplFeature"

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    :try_start_0
    const-string v1, "SEC_FLOATING_FEATURE_SIP_SUPPORT_DIRECT_WRITING_ENABLE"

    invoke-static {v1}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Default DW support Feature flag not found."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    :goto_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getInteger(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "One UI upgrade DW support feature flag not found."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isDirectWritingFeatureSupported= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportDirectWriting:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportHoveringUi()Z
    .locals 3

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportHoveringUi:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->FEATURE_HOVERING_UI:Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "SplFeature"

    const-string v2, "FEATURE_HOVERING_UI is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportHoveringUi:Ljava/lang/Boolean;

    return v1

    :cond_1
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$S$StaticFinal;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportHoveringUi:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportHoveringUi:Ljava/lang/Boolean;

    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportHoveringUi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportMDMProvider()Z
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SecContentProviderURI;->exists()Z

    move-result v0

    return v0
.end method

.method public static supportMobileKeyboard()Z
    .locals 1

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportMobileKeyboard:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportMobileKeyboard:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportMobileKeyboard:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->sSupportMobileKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static supportSamsungDesktop()Z
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->exists()Z

    move-result v0

    return v0
.end method

.method public static supportSmartTip()Z
    .locals 1

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup;->exists()Z

    move-result v0

    return v0
.end method
