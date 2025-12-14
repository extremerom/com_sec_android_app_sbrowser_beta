.class public Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$LazyHolder;
    }
.end annotation


# instance fields
.field private mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->onActionCancel(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->onActionDownload(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;

    move-result-object v0

    return-object v0
.end method

.method private onActionCancel(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "6128"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onActionDownload(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "6129"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockIntentUtils;->launchExtensionsContentBlocker(Landroid/content/Context;)V

    return-void
.end method

.method private showInfoBar(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 4

    const-string v0, "ContentBlock.PromotionManager"

    const-string v1, "showInfoBar"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-wide/16 v1, -0x1

    const-string v3, "0370"

    invoke-static {p1, v3, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "7078"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v2

    invoke-direct {v1, p1, v2, v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$ActionListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBannerDisplayedInfo(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismissInfoBarIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "201"

    return-object p0
.end method

.method public showPromotionBannerIfNeeded(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeverShowBanner(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigManager;->getConfig()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConfigModel;->getBannerMaxDisplayCount()I

    move-result v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBannerDisplayedCount(Landroid/content/Context;)I

    move-result v1

    if-gt v0, v1, :cond_2

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setIsNeverShowBanner(Landroid/content/Context;Z)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getPromotionAllowlist(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isNeedToUpdateBannerRepeatedCount(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    return-void

    :cond_5
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->updateBannerRepeatedCount(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getBannerRepeatedCount(Landroid/content/Context;)I

    move-result p3

    const/16 v0, 0x12c

    if-le v0, p3, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DisplayRepeatedCount is greater than repeatedCount: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContentBlock.PromotionManager"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->mInfoBar:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->hide()V

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionBannerManager;->showInfoBar(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V

    :cond_8
    :goto_0
    return-void
.end method
