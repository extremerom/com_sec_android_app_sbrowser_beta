.class public Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;
    }
.end annotation


# instance fields
.field private final mClientAppDataRecorder:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

.field private final mImmersiveMode:LI/e;

.field private final mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

.field private mInTrustedWebActivity:Z

.field private final mInstalledWebappRegistrar:Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;

.field private mOriginVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mClientAppDataRecorder:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mInstalledWebappRegistrar:Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;

    new-instance p2, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->computeImmersiveMode()LI/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveMode:LI/e;

    const-string p0, "TrustedWebActivityCoordinator"

    const-string p1, "Create TrustedWebActivityCoordinator"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->lambda$attemptVerificationForInitialUrl$0(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V

    return-void
.end method

.method private computeImmersiveMode()LI/e;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->supportTWAImmersiveMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;->getTwaDisplayMode()LI/f;

    move-result-object p0

    instance-of v0, p0, LI/e;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, LI/e;

    :cond_1
    return-object v1
.end method

.method private synthetic lambda$attemptVerificationForInitialUrl$0(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;ZLjava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onOriginVerified] packageName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "TrustedWebActivityCoordinator"

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "[onOriginVerified] origin:"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "[onOriginVerified] verified:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "[onOriginVerified] online:"

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p4, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-eqz p6, :cond_1

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->registerClientAppData(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mInstalledWebappRegistrar:Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->getUrl()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p1, p5}, Lcom/sec/terrace/browser/browserservices/TerraceInstalledWebappRegistrar;->registerClient(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    if-nez p6, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->isNoUiMode()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setNoUiMode(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->setTrustedWebActivityMode(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->updateImmersiveMode(Z)V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->setNoUiMode(Z)V

    :cond_3
    invoke-virtual {p0, p6}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->updateImmersiveMode(Z)V

    invoke-direct {p0, p6}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->setTrustedWebActivityMode(Z)V

    :goto_0
    return-void
.end method

.method private registerClientAppData(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mClientAppDataRecorder:Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientAppDataRecorder;->register(Ljava/lang/String;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void
.end method

.method private setTrustedWebActivityMode(Z)V
    .locals 2

    const-string v0, "[setTrustedWebActivityMode] enabled:"

    const-string v1, "TrustedWebActivityCoordinator"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mInTrustedWebActivity:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mInTrustedWebActivity:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;->hideBrowserControls()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;->showBrowserControls()V

    :goto_0
    return-void
.end method


# virtual methods
.method public attemptVerificationForInitialUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 4

    const-string v0, "TrustedWebActivityCoordinator"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;->getClientPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v2, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[attemptVerificationForInitialUrl] packageName:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "[attemptVerificationForInitialUrl] origin:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    new-instance v0, LEa/a;

    invoke-direct {v0, p0, v2, p2, v1}, LEa/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    invoke-direct {p1, v0, v1, p2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;-><init>(Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier$OriginVerificationListener;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mOriginVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    invoke-virtual {p1, v2}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->start(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void

    :catch_0
    const-string p0, "Failed to Construct a canonical TerraceOrigin from a String."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTwaPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mDelegate:Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValidOrigin(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mOriginVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;->isValidOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPostInflationStartUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mOriginVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->updateImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method public onPreInflationStartUp()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mOriginVerifier:Lcom/sec/terrace/browser/customtabs/TerraceOriginVerifier;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->updateImmersiveMode(Z)V

    :cond_0
    return-void
.end method

.method public shouldUseAppModeUi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mInTrustedWebActivity:Z

    return p0
.end method

.method public updateImmersiveMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveMode:LI/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[updateImmersiveMode] inAppMode : "

    const-string v1, "TrustedWebActivityCoordinator"

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveMode:LI/e;

    iget v0, p0, LI/e;->b:I

    iget-boolean p0, p0, LI/e;->a:Z

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->enterImmersiveMode(IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;->mImmersiveModeController:Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/ImmersiveModeController;->exitImmersiveMode()V

    :goto_0
    return-void
.end method
