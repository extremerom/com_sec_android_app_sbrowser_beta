.class public Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;
.super Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;
    }
.end annotation


# instance fields
.field private mIsAuthenticating:Z

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$loadUrlWithExistingTab$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$loadUrlWithNewTab$1(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$loadUrlWithNewTabFromExternalApp$2(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->shouldAuthenticate()Z

    move-result v0

    const-string v1, "SecretModeIntentHandler"

    if-nez v0, :cond_0

    const-string p0, "authentication is not required"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;->onResult(Z)V

    return-void

    :cond_0
    const-string v0, "need to authenticate for secret mode"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mIsAuthenticating:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->getSecretModeManager()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setAuthListener(Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;IZIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$openSites$4(IZIZ)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$launchNewTabFromAssistIntent$3(Z)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->lambda$handleBixbyIntent$5(Landroid/content/Intent;Z)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mIsAuthenticating:Z

    return-void
.end method

.method private getSecretModeManager()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    return-object p0
.end method

.method private synthetic lambda$handleBixbyIntent$5(Landroid/content/Intent;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->handleBixbyIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$launchNewTabFromAssistIntent$3(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchNewTabFromAssistIntent()V

    return-void
.end method

.method private synthetic lambda$loadUrlWithExistingTab$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p5, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 v0, 0x1

    invoke-interface {p2, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->getTabWithSameUrlInTabList(ZLjava/lang/String;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 p1, 0x0

    invoke-interface {p0, p4, p3, p5, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadUrlWithNewTab$1(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p6

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void
.end method

.method private synthetic lambda$loadUrlWithNewTabFromExternalApp$2(Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p4, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private synthetic lambda$openSites$4(IZIZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    return-void
.end method

.method private shouldAuthenticate()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->getSecretModeManager()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->shouldOpenInSecretMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public handleBixbyIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "handleBixbyIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/i;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/i;-><init>(Ljava/lang/Object;Landroid/os/Parcelable;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method

.method public launchNewTabFromAssistIntent()V
    .locals 2

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "launchNewTabFromAssistIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/main_view/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method

.method public loadHomePageWithNewTab(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadHomePageWithNewTab mIsAuthenticating:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mIsAuthenticating:Z

    const-string v2, "SecretModeIntentHandler"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->mIsAuthenticating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadHomePageWithNewTab(ZLjava/lang/String;)V

    return-void
.end method

.method public loadUrlWithExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "loadUrlWithExistingTab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/c0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/main_view/c0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method

.method public loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V
    .locals 12

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "loadUrlWithNewTab"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-super/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/b0;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, p3

    move-object/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/main_view/b0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method

.method public loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V
    .locals 1

    const-string p3, "SecretModeIntentHandler"

    const-string v0, "loadUrlWithNewTabFromExternalApp"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isOpenInSecretModeFromOtherApps()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "loadUrlWithNewTabFromExternalApp isOpenInSecretModeFromOtherApps = false"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/NewTabHandlerDecorator;->loadUrlWithNewTabFromExternalApp(Ljava/lang/String;Landroid/content/Intent;ZZ)V

    return-void

    :cond_0
    new-instance p3, Lcom/sec/android/app/sbrowser/main_view/d0;

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/main_view/d0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Ljava/lang/String;Landroid/content/Intent;Z)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method

.method public openDownloadFile(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "openSecretDownloadFile"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->getSecretModeManager()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setAuthListener(Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;)V

    return-void
.end method

.method public openSites(IZI)V
    .locals 2

    const-string v0, "SecretModeIntentHandler"

    const-string v1, "openSites"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/e0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/e0;-><init>(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;IZI)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler;->checkAuthenticationRequired(Lcom/sec/android/app/sbrowser/main_view/SecretModeIntentHandler$Callback;)V

    return-void
.end method
