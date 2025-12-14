.class public Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mIsRunning:Z

.field private mUpdateDialog:Lm/l;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mIsRunning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mUpdateDialog:Lm/l;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->lambda$createUpdateDialog$1(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->lambda$shouldLaunchHelpIntro$0(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V

    return-void
.end method

.method private checkRequestRemoteConsent(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isParentalControlLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->getParentalControlStatus()Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlStatus;->isChild()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->createLinkedTextFactory(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$PrivacyNotice;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;Z)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->createLinkedTextFactory(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType$TermsAndConditions;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;Z)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->showRemoteConsentDialog(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;)V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->onVersionUpdate(ZZ)V

    return-void
.end method

.method public static createLinkedTextFactory(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/parental_control/LinkedTextFactory;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$1;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method private getUpdateType()Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HelpIntroHelper"

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isMinorViewEvenRegionChanged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[Legal] Show minor dialog for exceptional case"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->FULL_SCREEN:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTosMajorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MAJOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isPpMinorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_PP_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isTosMinorUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->MINOR_TOS_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_5
    const-string v0, "[Legal] No update for Help Intro"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->uploadLegacyDataIfNeeded(Landroid/content/Context;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0
.end method

.method public static isAgreementNeeded(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isAgreementNeeded(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isGDPRStyle()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isGDPR()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isBrazil()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isTurkey()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isHelpIntroActivityExist()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string p0, "HelpIntroHelper"

    const-string v0, "[Legal] Help intro activity is exist"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createUpdateDialog$1(ZLandroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveAgreementUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$shouldLaunchHelpIntro$0(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isHelpIntroActivityExist()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HelpIntroHelper"

    const-string v1, "[Legal] Help intro activity is not exist. Launch again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->setRunning(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->launchHelpIntroIfNeeded(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Z

    :cond_0
    return-void
.end method

.method private launchHelpIntroActivity(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->setRunning(Z)V

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0xa6

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0, p0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private onVersionUpdateInternally(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->dismissUpdateDialog()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->createUpdateDialog(ZZ)Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mUpdateDialog:Lm/l;

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Dialog show() error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HelpIntroHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private shouldLaunchHelpIntro(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isRunning()Z

    move-result v0

    const-string v1, "HelpIntroHelper"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isHelpIntroActivityExist()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[Legal] Help intro is running, but activity is not exist."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LGa/d;

    const/16 v3, 0x19

    invoke-direct {v2, v3, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const-string p0, "[Legal] Help intro is running. Return"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isBvtActivate()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "[Legal] Bvt activate. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isSkipFlagOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->checkEMTokenEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "[Legal] EM token enabled. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "[Legal] Not enough storage. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->isBrowserAllowedByDPM()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "[Legal] Browser is not allowed by DPM. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isHelpIntroEnabled()Z

    move-result p1

    if-nez p1, :cond_6

    const-string p0, "[Legal] Help intro is not enabled. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_6
    const-string p1, "disable-help-ux"

    invoke-static {p1}, Lcom/sec/terrace/TerraceCommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p0, "[Legal] Help intro is switched off by Terrace command line. Do not launch Help intro"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->getDisableHelpIntro()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p0, "[Legal] Help intro is disabled for unit test"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "[Legal] Retail mode. Do not launch Help intro"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const-string v0, "pref_private_help_intro"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "server_upload_done"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveUpdatedVersions(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/HelpIntroPrefUtil;->getPrivateEditor(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->setPermissionPageState(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->recordSatNoticeShown(Landroid/content/Context;)V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBrowsingAssistEnabled(Z)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;->NO_UPDATE:Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    return-object p0

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->getUpdateType()Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    move-result-object p0

    return-object p0
.end method

.method public static showRemoteConsentDialog(Landroidx/fragment/app/J;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/RemoteConsentManager;->showRemoteConsentDialog(Landroidx/fragment/app/f0;)V

    return-void
.end method


# virtual methods
.method public createUpdateDialog(Landroid/app/Activity;ZZ)Lm/l;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->createUpdateDialog(ZZ)Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public createUpdateDialog(ZZ)Lm/l;
    .locals 9

    if-eqz p1, :cond_0

    const-string v0, "Major version"

    goto :goto_0

    :cond_0
    const-string v0, "Minor version"

    :goto_0
    const-string v1, "[Legal] createUpdateDialog, "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HelpIntroHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e044a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b016a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b00dd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isKorea()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->isGDPRStyle()Z

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_2

    const v8, 0x7f1405a0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const v8, 0x7f1405a1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-static {v7, v8}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->combineAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v3, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f14059f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_3
    if-eqz p2, :cond_5

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f14059d

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f14059b

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f14059c

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f14059e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    if-eqz p2, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicyForAgreement()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->termsOfServiceForAgreement()Ljava/lang/String;

    move-result-object p2

    :goto_4
    invoke-static {v8, v6, p2}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p2

    if-eqz v3, :cond_8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/public_things/PublicPages;->privacyPolicyForChanges()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v6, v3}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->getLinkedText(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p2

    :cond_8
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    if-eqz p1, :cond_9

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f14059a

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1402ad

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->shouldShowSatText()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lm/k;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v7}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/B;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/B;-><init>(ILjava/lang/Object;Z)V

    invoke-virtual {v0, p2, v1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    xor-int/lit8 p0, p1, 0x1

    iget-object p1, v0, Lm/k;->a:Lm/h;

    iput-boolean p0, p1, Lm/h;->m:Z

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    return-object p0
.end method

.method public dismissUpdateDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mUpdateDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/y;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mUpdateDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public handleActivityResult(Landroid/app/Activity;ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->setRunning(Z)V

    const/4 p0, -0x1

    if-ne p2, p0, :cond_1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isAgreementNeeded(Landroid/content/Context;)Z

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->getInstance()Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/default_browser/SelfPromotionMananger;->showDialogIfNeeded(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method public isBvtActivate()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemProperties;->getBvtActivate()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mIsRunning:Z

    return p0
.end method

.method public isSkipFlagOn()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "skip"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "isSkipFlagOn : "

    const-string v1, "HelpIntroHelper"

    invoke-static {v0, v1, p0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isStorageFull()Z
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isStorageFull()Z

    move-result p0

    return p0
.end method

.method public launchHelpIntroIfNeeded(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Z
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper$2;->$SwitchMap$com$sec$android$app$sbrowser$common$model$global_config$HelpIntroConstants$ViewType:[I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->shouldLaunchHelpIntro(Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)Lcom/sec/android/app/sbrowser/common/model/global_config/HelpIntroConstants$ViewType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "HelpIntroHelper"

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[Legal] TOS minor version update"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v4}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->checkRequestRemoteConsent(ZZ)V

    goto :goto_0

    :cond_1
    const-string v0, "[Legal] PP minor version update"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->checkRequestRemoteConsent(ZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "[Legal] TOS major version update"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->checkRequestRemoteConsent(ZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "[Legal] PP major version update"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->checkRequestRemoteConsent(ZZ)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowFullFTU(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->shouldShowPermissionPage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[Legal] Launch permission page"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->setInvisibleMainView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->launchHelpIntroActivity(Landroid/app/Activity;)V

    return v2

    :cond_4
    return v4

    :cond_5
    const-string v0, "[Legal] Launch Help Intro Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;->setInvisibleMainView()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->launchHelpIntroActivity(Landroid/app/Activity;)V

    return v2
.end method

.method public onVersionUpdate(ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->onVersionUpdateInternally(ZZ)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->saveAgreementUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mIsRunning:Z

    return-void
.end method

.method public shouldShowSatText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isSatNoticeShown(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doesAntiTrackingLevelExist()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showSAT(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isHelpIntroNeeded(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->isSatNoticeShown(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->doesAntiTrackingLevelExist()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingDefaultPopup;->showAntiTrackingDefaultDialog()V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->recordSatNoticeShown(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
