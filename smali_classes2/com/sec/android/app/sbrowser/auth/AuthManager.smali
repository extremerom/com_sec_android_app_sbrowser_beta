.class public Lcom/sec/android/app/sbrowser/auth/AuthManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

.field private mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

.field private mIsInitialInfoStarted:Z

.field private mIsLockScreenStarted:Z

.field private mIsPromptStarted:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;-><init>(Lcom/sec/android/app/sbrowser/auth/util/ActivityProvider;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$prompt$2(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method public static synthetic b(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V
    .locals 0

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$createPassword$4(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method public static synthetic c(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V
    .locals 0

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$initialInfo$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method private confirmPassword(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "confirmPassword requestCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "confirmPassword there is no valid activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeConfirmPasswordIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/h;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p2, p0}, Lcom/sec/android/app/sbrowser/auth/h;-><init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/auth/AuthManager;ILcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$register$3(ILcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$lockScreen$1(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method public static synthetic f(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V
    .locals 0

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lambda$confirmPassword$5(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    return-void
.end method

.method public static isAuthRegistered(I)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthRegistered(I)Z

    move-result p0

    return p0
.end method

.method public static isAuthSupported(I)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->isAuthSupported(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$confirmPassword$5(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createPassword$4(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initialInfo$0(Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 2

    const-string v0, "initialInfo::onActivityResult resultCode:"

    const-string v1, "AuthManager"

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsInitialInfoStarted:Z

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const/16 v1, 0x1f6

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$lockScreen$1(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 3

    const-string v0, "lockScreen::onActivityResult resultCode:"

    const-string v1, "AuthManager"

    invoke-static {p3, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsLockScreenStarted:Z

    if-nez v0, :cond_0

    const-string p0, "lockScreen::onActivityResult it is already handled"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsLockScreenStarted:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p3, v1, :cond_2

    const/16 v1, 0x62

    if-eq p3, v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lockScreen(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$prompt$2(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 3

    const-string v0, "prompt::onActivityResult resultCode:"

    const-string v1, "AuthManager"

    invoke-static {p3, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsPromptStarted:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p3, v1, :cond_1

    const/16 v1, 0x62

    if-eq p3, v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->prompt(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$register$3(ILcom/sec/android/app/sbrowser/auth/AuthCallback;I)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthRegistered(I)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void
.end method

.method private notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "AuthManager"

    const-string p1, "notifyAuthResult callback is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthCallback;->onAuthResult(Z)V

    return-void
.end method

.method private shouldUseBiometricPrompt()Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->hasBiometricAuth()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useBiometricPrompt()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldUseKeyguardLockScreen()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useKeyguardLockScreen()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public activate(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 0

    const/16 p1, 0x6e

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->confirmPassword(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public changePassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 1

    const/16 v0, 0x67

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->confirmPassword(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public createPassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "AuthManager"

    const-string p1, "createPassword there is no valid activity"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeCreatePasswordIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/h;

    const/4 v3, 0x1

    invoke-direct {v0, v3, p1, p0}, Lcom/sec/android/app/sbrowser/auth/h;-><init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public initialInfo(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1

    const-string v2, "AuthManager"

    if-nez v1, :cond_0

    const-string p0, "initialInfo there is no valid activity"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsInitialInfoStarted:Z

    if-eqz v1, :cond_1

    const-string p0, "initialInfo it is already started"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeInitialInfoIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsInitialInfoStarted:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/h;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p2, p0}, Lcom/sec/android/app/sbrowser/auth/h;-><init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public isAuthLockScreenActivity(Landroid/app/Activity;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthLockScreenActivityDelegate;

    return p0
.end method

.method public isAuthLockScreenShown(I)Z
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

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthLockScreenActivity(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public launchInitialInfoActivity()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->launchInitialInfoActivity()V

    return-void
.end method

.method public lockScreen(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lockScreen authType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "lockScreen there is no valid activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->shouldUseKeyguardLockScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "lockScreen keyguard lock screen is used"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/auth/KeyguardLockScreenAdapter;->show(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeAuthLockScreenIntent(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "lockScreen there is no valid intent"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsLockScreenStarted:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->isAuthLockScreenActivityShown(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "lockScreen it is already started"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsLockScreenStarted:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/i;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p2, p3, v2}, Lcom/sec/android/app/sbrowser/auth/i;-><init>(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public lockScreen(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 2

    const-string v0, "AuthManager"

    const-string v1, "lockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lockScreen(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public migrate(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeMigrateIntent(Landroid/app/Activity;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public prompt(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prompt authType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "prompt there is no valid activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsPromptStarted:Z

    if-eqz v2, :cond_1

    const-string p0, "prompt it is already started"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->shouldUseBiometricPrompt()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, "prompt biometric prompt is used"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/auth/BiometricPromptAdapter;->show(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void

    :cond_2
    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeAuthPromptIntent(Landroid/app/Activity;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p0, "prompt there is no valid intent"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mIsPromptStarted:Z

    new-instance v1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/auth/i;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p2, p3, v2}, Lcom/sec/android/app/sbrowser/auth/i;-><init>(Lcom/sec/android/app/sbrowser/auth/AuthManager;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;I)V

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public prompt(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 2

    const-string v0, "AuthManager"

    const-string v1, "prompt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->updateAndGetAuthType()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->prompt(ILandroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public register(ILcom/sec/android/app/sbrowser/common/model/authentication/FingerprintRegister;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "AuthManager"

    if-nez v0, :cond_0

    const-string p0, "register there is no valid activity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/auth/IntentHelper;->makeRegisterIntent(I)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p2, "Tried to register with wrong auth type : "

    invoke-static {p1, p2, v1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->notifyAuthResult(Lcom/sec/android/app/sbrowser/auth/AuthCallback;Z)V

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;

    invoke-direct {v1, p2}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;-><init>(Landroid/app/Activity;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/auth/g;

    invoke-direct {p2, p1, p3, p0}, Lcom/sec/android/app/sbrowser/auth/g;-><init>(ILcom/sec/android/app/sbrowser/auth/AuthCallback;Lcom/sec/android/app/sbrowser/auth/AuthManager;)V

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher;->startActivityForResult(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/auth/util/ActivityLauncher$Callback;)V

    return-void
.end method

.method public removePassword(Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V
    .locals 1

    const/16 v0, 0x68

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->confirmPassword(ILcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    return-void
.end method

.method public resetDecorViewVisibility(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->resetDecorViewVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public resetSecretMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->resetSecretMode()V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-void
.end method

.method public setDisabledClicked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setDisabledClicked(Z)V

    return-void
.end method

.method public setResetSecretModeIsProgress(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setResetSecretModeIsProgress(Z)V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setSecretModeEnabled(Z)V

    return-void
.end method

.method public setSecretModeEnabled(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setSecretModeEnabled(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;->setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldUseAuth()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mHelper:Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/auth/AuthTypeHelper;->shouldUseAuth()Z

    move-result p0

    return p0
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/AuthManager;->mActivity:Landroid/app/Activity;

    return-void
.end method
