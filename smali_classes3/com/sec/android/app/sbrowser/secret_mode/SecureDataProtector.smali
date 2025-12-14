.class public Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;

.field private mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

.field private mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mDelegate:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->lambda$changePassword$3(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->lambda$savePassword$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->lambda$unlockData$0(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->lambda$savePassword$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->lambda$resetPassword$4()V

    return-void
.end method

.method private initialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setCurrentAlias()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    const-string v1, "SecureDataProtector"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isEngineAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->removeEngine(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setCurrentAlias()V

    const-string p0, "Data cleared. remove SDP engine"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->shouldMigrateData(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "Secret mode in used, but SdpEngine is not added. Migration required"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->setShouldMigrateSdpData(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isSecretModeEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mDelegate:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;->checkSecretMode(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$changePassword$3(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DefaultPassword"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->changePassword(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->isSecretModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->lock()V

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$resetPassword$4()V
    .locals 1

    const-string v0, "DefaultPassword"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->savePassword(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$savePassword$1()V
    .locals 2

    const-string v0, "SecureDataProtector"

    const-string v1, "addEngine failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mDelegate:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;->requestResetSecretMode()V

    return-void
.end method

.method private synthetic lambda$savePassword$2(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "addEngine result : "

    const-string v1, "SecureDataProtector"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->isSecretModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPreviousStatusNone()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPreviousStatus(Z)V

    const-string p0, "previous secret mode status set to SDP"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/d;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/d;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;I)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$unlockData$0(Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->runAction(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runAction(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private shouldMigrateData(Landroid/app/Activity;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPreviousStatusSdp()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->hasPassword()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPreviousStatusNonSdp()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isSdpSupported()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isEngineAdded()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SecretDatabaseHelper;->secretDbExists(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->hasPassword()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v1

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->resetIncorrectAttempts()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetSecretMode()V

    return v0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPreviousStatus(Z)V

    return v0
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LJ8/d;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->resetIncorrectAttempts()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->setLockoutAttemptDeadlineWithTimeoutMs(I)V

    :cond_2
    :goto_0
    if-ne p1, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public clearData()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isEngineAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->removeEngine(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isKnoxWarrantyBlown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->removeSecretDb(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public hasPassword()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->isEngineAdded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockData()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->lock()V

    return-void
.end method

.method public resetPassword()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->hasPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    const-string v0, "DefaultPassword"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->changePassword(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/d;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSdpController:Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/sbrowser/secret_mode/c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/secret_mode/c;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->addEngine(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V

    return-void
.end method

.method public unlockData(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasBiometricAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/secret_mode/c;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaTrusted(Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DefaultPassword"

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->unlockViaPassword(Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->runAction(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecureDataProtector;->runAction(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
