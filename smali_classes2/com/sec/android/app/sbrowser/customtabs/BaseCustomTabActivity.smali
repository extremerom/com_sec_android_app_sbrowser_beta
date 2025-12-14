.class public abstract Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;
.super Lcom/sec/android/app/sbrowser/tab/TabActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/customtabs/TerraceCustomTabActivityDelegate;


# instance fields
.field protected mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private mLastUserInteractionTime:J

.field protected mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

.field private mShouldOverridePackage:Z

.field protected mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;-><init>()V

    return-void
.end method

.method private getColorScheme()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$handleFinishAndClose$0()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->useSeparateTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->finish()V

    :goto_0
    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->lambda$handleFinishAndClose$0()V

    return-void
.end method


# virtual methods
.method public abstract buildIntentDataProvider(Landroid/content/Intent;I)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
.end method

.method public createActivityDelegate()Lcom/sec/terrace/TerraceActivityDelegate;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/BaseActivityDelegate;-><init>(Lcom/sec/terrace/TerraceActivity;)V

    return-object v0
.end method

.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->suspendMediaSession()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mShouldOverridePackage:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getAnimationEnterRes()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getAnimationExitRes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mShouldOverridePackage:Z

    :cond_1
    return-void
.end method

.method public getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    return-object p0
.end method

.method public getLastUserInteraction()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mLastUserInteractionTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mShouldOverridePackage:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTerrace()Lcom/sec/terrace/Terrace;
.end method

.method public getTwaPackage()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->getTwaPackage()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public handleFinishAndClose()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isTrustedWebActivity()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isWebappOrWebApkActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isExtraLaunchWithReadArticlesAloud()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/a;->run()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isPartialCustomTab()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->handleCloseAnimation(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/a;->run()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/a;->run()V

    :goto_1
    return-void
.end method

.method public isInTwaMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mTwaCoordinator:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->shouldUseAppModeUi()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public onNativeInitializationFailure()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationFailure()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->finish()V

    return-void
.end method

.method public onNativeInitializationSuccess()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNativeInitializationSuccess()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPostInflation()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPostInflation()V

    return-void
.end method

.method public onPreInflation()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getColorScheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->buildIntentDataProvider(Landroid/content/Intent;I)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabActivity;->onPreInflation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isPartialCustomTab()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->getIntentDataProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getAnimationEnterRes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabDisplayManager;->getStartAnimationOverride(Landroid/app/Activity;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;I)I

    move-result v0

    const v1, 0x7f01004f

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mLastUserInteractionTime:J

    return-void
.end method

.method public useSeparateTask()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x10080000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "useSeparateTask : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "si__BaseCustomTabActivity"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method
