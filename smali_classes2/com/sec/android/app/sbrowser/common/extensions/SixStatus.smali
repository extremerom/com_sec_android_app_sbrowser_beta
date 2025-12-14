.class public Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;
    }
.end annotation


# instance fields
.field private mSixSupportedByConfig:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->mSixSupportedByConfig:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    return-object v0
.end method

.method private isDefaultExtEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method private isEnabled(Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;)Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedByConfig()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$1;->$SwitchMap$com$sec$android$app$sbrowser$common$extensions$SixStatus$SIX_ENABLE_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isPluginExtEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_1
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isPluginExtEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method private isPluginExtEnabled()Z
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isWorkSpaceSupport(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportedByConfig()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->mSixSupportedByConfig:Z

    return p0
.end method

.method private isWorkSpaceSupport(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/KnoxModeUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SecureFolderModeUtils;->isSecureFolderMode()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public isDefaultExtEnabled(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->DEFAULT_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled(Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;)Z

    move-result p0

    return p0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->PLUGIN_ONLY:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled(Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;->EITHER_ONE:Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled(Lcom/sec/android/app/sbrowser/common/extensions/SixStatus$SIX_ENABLE_TYPE;)Z

    move-result p0

    return p0
.end method

.method public isNeverTransOptionsEnabled()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled()Z

    move-result p0

    return p0
.end method

.method public isOneUi7Style()Z
    .locals 1

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0x11170

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSIXSyncEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportMainSwitch()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method public isSupportedLoading()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method public isSupportedSplit(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPagetransSplitMode()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabAndNotFold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const p1, 0xec54

    if-lt p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->getConfigAiVersion()I

    move-result p0

    const/16 p1, 0x4f1d

    if-lt p0, p1, :cond_2

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method public isSupportedTransNativeUX()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTransCaption()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTransCaption()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTransImg()Z
    .locals 1

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v0, 0xeac5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransbarPopupType(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTransbarPopupType()Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabAndNotFold(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const p1, 0xec54

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransbarV2(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isTranslateV2()Z
    .locals 0

    const-string p0, "SITranslate v2"

    invoke-static {p0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isTranslatorEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistEnabledMode()Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isTranslatorEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setSupportedByConfig(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->mSixSupportedByConfig:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->mSixSupportedByConfig:Z

    :cond_0
    return-void
.end method

.method public supportsImgTransMultiThreading()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
