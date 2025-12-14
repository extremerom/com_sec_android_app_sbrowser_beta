.class public Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sIsDesktopMode:Ljava/lang/Boolean;


# direct methods
.method public static hasDesktopWindowingOnExternalDisplay(Landroid/app/Activity;)Z
    .locals 5

    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const-string p0, "si__DesktopModeUtils"

    const-string v0, "hasDesktopWindowingOnExternalDisplay true"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isDesktopMode()Z
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->sIsDesktopMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_0
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isDesktopMode = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "si__DesktopModeUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->sIsDesktopMode:Ljava/lang/Boolean;

    return v1

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->sIsDesktopMode:Ljava/lang/Boolean;

    return v1
.end method

.method public static isDesktopMode(Landroid/app/Activity;)Z
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeOneUi8(Landroid/app/Activity;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_3

    const/4 v1, 0x1

    :catch_0
    :cond_3
    if-eqz v1, :cond_4

    const-string p0, "isDesktopMode = "

    const-string v0, "si__DesktopModeUtils"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    return v1
.end method

.method public static isDesktopModeEnabled(Landroid/app/Activity;)Z
    .locals 2

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    :goto_0
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DESKTOP_MODE_ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result p0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_2

    const/4 v1, 0x1

    :catch_0
    :cond_2
    if-eqz v1, :cond_3

    const-string p0, "isDesktopModeEnabled = "

    const-string v0, "si__DesktopModeUtils"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return v1
.end method

.method public static isDesktopModeOneUi8(Landroid/app/Activity;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    if-nez p0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->j(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->hasDesktopWindowingOnExternalDisplay(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isDesktopMode = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->sIsDesktopMode:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__DesktopModeUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public static isDesktopModeStandalone()Z
    .locals 7

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xea60

    const-string v2, "si__DesktopModeUtils"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_3

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DEX_MODE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v5, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->DEX_MODE_NEXT_GEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->getDexMode(Landroid/content/res/Configuration;)I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v5, v0, :cond_2

    if-ne v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    move v4, v3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    const-string v0, "isDesktopModeStandalone[NEXT_GEN] = "

    invoke-static {v0, v2, v4}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_3
    const v0, 0xf4253

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    return v4

    :cond_4
    :try_start_1
    invoke-static {v0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->getDesktopModeState()Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->getEnabled()I

    move-result v1

    sget-object v5, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->ENABLED:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v1, v5, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->getDisplayType()I

    move-result v0

    sget-object v5, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISPLAY_TYPE_STANDALONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v5}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_2
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v5, :cond_6

    move v0, v3

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move v1, v4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isDesktopModeStandalone[classic] FallbackException "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    move v0, v4

    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isDesktopModeStandalone[classic] = enabled"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isStandAlone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    return v3

    :cond_8
    return v4
.end method

.method public static isDesktopWindowingOnExternalDisplay(Landroid/app/Activity;)Z
    .locals 3

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0x13880

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->j(Landroid/app/Activity;)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isLeavingDesktopMode(Landroid/app/Activity;)Z
    .locals 3

    invoke-static {}, Lcom/sec/sbrowser/spl/wrapper/SplFeature;->supportSamsungDesktop()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeManager;->getDesktopModeState()Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->getEnabled()I

    move-result p0

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemDesktopModeState;->DISABLING:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isLeavingDesktopMode() FallbackException "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "si__DesktopModeUtils"

    invoke-static {p0, v0, v2}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public static resetDesktopMode()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->sIsDesktopMode:Ljava/lang/Boolean;

    return-void
.end method
