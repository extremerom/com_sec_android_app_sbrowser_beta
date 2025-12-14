.class Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initMoreMenuManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBrowsingAssistSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method public isChinaExitVisible(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCloseInternetVisible()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isContentBlockerVisible(Landroid/content/Context;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExtensionsVisible(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isNotificationVisible()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isIndia()Z

    move-result p0

    return p0
.end method

.method public isReadAloudSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudSupported()Z

    move-result p0

    return p0
.end method

.method public isReadArticlesAloudSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result p0

    return p0
.end method

.method public isSecretModeVisible()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSupportMyanmarFont()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "my"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$1;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
