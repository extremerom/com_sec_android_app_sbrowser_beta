.class public Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;,
        Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;
    }
.end annotation


# static fields
.field private static sCurrentTaskId:I = -0x1

.field private static sInstanceArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sResetOnGoing:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mApplicationStatus:[Ljava/lang/String;

.field private mAuthListener:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

.field private mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

.field private final mAuthManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

.field private mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

.field private mDisableClicked:Z

.field private mFromTabs:Z

.field private mIsLockScreenActivityLaunchedOnStart:Z

.field private mIsSecretModeEnabled:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

.field private mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

.field private mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

.field private mStopped:Z

.field private mTaskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sInstanceArray:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$1;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthListener:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    const-string v0, "HAS_STOPPED_ACTIVITIES"

    const-string v1, "HAS_DESTROYED_ACTIVITIES"

    const-string v2, "UNKNOWN"

    const-string v3, "HAS_RUNNING_ACTIVITIES"

    const-string v4, "HAS_PAUSED_ACTIVITIES"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mApplicationStatus:[Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sResetOnGoing:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$2;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtectorFactory;->create(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeDelegate;)Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getAuthManagerDelegate()Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->setDelegate(Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lambda$onActivityResumed$4(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lambda$confirmSecretMode$2(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lambda$toggleSecretModeWithDelay$0(Landroid/app/Activity;)V

    return-void
.end method

.method private canNotifyAuthResultImmediately()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenShown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private canUseSecretMode(Landroid/app/Activity;)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthPromptShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSettingsActivatedOtherInstance()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isInitialInfoActivityActivatedOtherInstance()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sCurrentTaskId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isInCurrentTask(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->shouldUseAuth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordVerifyWithNoPassword()V

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->notifyAuthResult(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->updateActivity(Landroid/app/Activity;)V

    const/16 v0, 0x78

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/b;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;I)V

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->prompt(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x79

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDecorViewVisibility(Landroid/app/Activity;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/b;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/b;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;I)V

    invoke-virtual {p1, p3, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->lockScreen(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lambda$confirmSecretMode$1(Z)V

    return-void
.end method

.method public static synthetic e(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V
    .locals 0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lambda$launchInitialInfoActivity$3(Landroid/os/Bundle;Z)V

    return-void
.end method

.method private enableSecretMode(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const p0, 0x7f140454

    invoke-static {p1, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f140891

    goto :goto_0

    :cond_2
    const p0, 0x7f141090

    :goto_0
    invoke-static {p1, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetSecretModeIfWarrantyBitBlown()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModeInitialShown()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mFromTabs:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->launchInitialInfoActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x78

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;ILandroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;
    .locals 5

    const-string v0, "instance for task id "

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    sget-object v2, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sInstanceArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-nez v2, :cond_1

    const-class v3, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    monitor-enter v3

    if-nez v2, :cond_0

    :try_start_0
    const-string v2, "SecretModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "is not exists. create new instance."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;-><init>(Landroid/app/Activity;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sInstanceArray:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v2
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->launchInitialInfoActivity(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->notifySecureDataUnlocked()V

    return-void
.end method

.method private isAuthLockScreenActivity(Landroid/app/Activity;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthLockScreenActivity(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private isAuthPromptShown()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->isInitialInfoActivityShown()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->isAuthPromptActivityShown()Z

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

.method private isInCurrentTask(Landroid/app/Activity;)Z
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isInCurrentTask: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sCurrentTaskId:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "SecretModeManager"

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    sget p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sCurrentTaskId:I

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    if-ne p0, p1, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method private isInitialInfoActivityActivatedOtherInstance()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->isActivatedInitialInfoOtherInstance(I)Z

    move-result p0

    return p0
.end method

.method private isLastEnabledInstance(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->getInstanceId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->getInstanceId(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    return p0
.end method

.method public static isSecretModeEnabled(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sInstanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    if-eqz p0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSecretModeEnabled(Landroid/app/Activity;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSettingsActivatedOtherInstance()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->isActivatedOtherInstance(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetDecorViewVisibility(Landroid/app/Activity;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDisabledClicked(Z)V

    return-void
.end method

.method public static bridge synthetic l(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Z)V
    .locals 0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$confirmSecretMode$1(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setSecretModePreferenceEnabled(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->notifyAuthResult(Z)V

    return-void
.end method

.method private synthetic lambda$confirmSecretMode$2(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    move v1, p1

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDecorViewVisibility(Landroid/app/Activity;Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->notifyAuthResult(Z)V

    return-void
.end method

.method private synthetic lambda$launchInitialInfoActivity$3(Landroid/os/Bundle;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;)V

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setDoNotShowSecretModeInitial(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onActivityResumed$4(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->launchLockScreenActivityOnResume(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$toggleSecretModeWithDelay$0(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->toggleSecretMode(Landroid/app/Activity;)V

    return-void
.end method

.method private launchInitialInfoActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sResetOnGoing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mFromTabs:Z

    if-eqz v0, :cond_0

    const p2, 0x7f141090

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->updateActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    new-instance v0, LHa/a;

    const/16 v2, 0x19

    invoke-direct {v0, v2, p0, p2}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->initialInfo(Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/auth/AuthCallback;)V

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mFromTabs:Z

    return-void
.end method

.method private launchLockScreenActivity(Landroid/app/Activity;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "launchLockScreenActivity mStopped:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    const-string v2, "SecretModeManager"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenShown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordLaunchAuthLockScreen()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x79

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->confirmSecretMode(ILandroid/app/Activity;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private launchLockScreenActivityIfRequired(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->shouldLaunchLockScreenActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x32

    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    int-to-long p0, p0

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private launchLockScreenActivityOnResume(Landroid/app/Activity;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsLockScreenActivityLaunchedOnStart:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsLockScreenActivityLaunchedOnStart:Z

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isResumedOrResuming(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->launchLockScreenActivity(Landroid/app/Activity;)Z

    :cond_1
    return-void
.end method

.method private lockOnRunningActivity(Landroid/app/Activity;)Z
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->getInstanceCount()I

    move-result v0

    if-le v0, v2, :cond_2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isInCurrentTask(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isInCurrentTask(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isVisible(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;ZLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyAuthResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthListener:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;->onResult(Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthListener:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    return-void
.end method

.method private notifySecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;->onSecretModeChanged(ZLandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifySecureDataUnlocked()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;->onSecureDataUnlocked()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenActivity(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPaused - ApplicationState : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecretModeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setEnableMinimizeState(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/secret_mode/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/secret_mode/a;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;I)V

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->launchLockScreenActivityIfRequired(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStopped - ApplicationState : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mApplicationStatus:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecretModeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "isChangingConfigurations is true"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->lockOnRunningActivity(Landroid/app/Activity;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStopped mStopped true : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->lockData()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setEnableMinimizeState(Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isAuthLockScreenShown()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDisableMinimizeState(Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private registerOnActivityStateChangedListener()V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method private resetDecorViewVisibility(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isContentViewVisible(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDecorViewVisibility(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method private resetSecretModeIfWarrantyBitBlown()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isKnoxWarrantyBlown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isPreviousStatusSdp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetSecretMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setStoredDataErasedForNonSdp(Z)V

    const-string p0, "SecretModeManager"

    const-string v0, "Knox warranty bit blown - reset secret mode"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setDecorViewVisibility(Landroid/app/Activity;Z)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityDelegate;

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecureFlag(Landroid/app/Activity;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDecorViewVisibility : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecretModeManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->setContentViewVisible(Landroid/app/Activity;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setDisableMinimizeState(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDecorViewVisibility(Landroid/app/Activity;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method private setDisabledClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDisableClicked:Z

    return-void
.end method

.method private setEnableMinimizeState(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setDecorViewVisibility(Landroid/app/Activity;Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    return-void
.end method

.method public static declared-synchronized setResetSecretModeIsProgress(Z)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sResetOnGoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private declared-synchronized setSecretModeEnabled(ZLandroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized setSecretModeEnabled(ZLandroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "current secret mode task id : "

    const-string v1, "setSecretModeEnabled : "

    const-string v2, "setSecretModeEnabled : "

    const-string v3, "isSdpSupported :"

    monitor-enter p0

    :try_start_0
    const-string v4, "SecretModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSdpSupported()Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    if-ne v4, p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SecretModeManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for LockScreen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    const-string v2, "SecretModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->notifySecretModeChanged(ZLandroid/os/Bundle;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecureFlag(Landroid/app/Activity;)V

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setTaskId(I)V

    if-eqz p1, :cond_3

    const-string p2, "SecretModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    iget v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->getInstanceId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->saveInstanceId(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->registerOnActivityStateChangedListener()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDisableClicked:Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->unregisterOnActivityStateChangedListener()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    sget-boolean p2, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sResetOnGoing:Z

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->resetDecorViewVisibility(Landroid/app/Activity;)V

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setSecretModeEnabled(Z)V

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    new-instance p2, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$UnlockNotifier;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Ljava/lang/Runnable;)V

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->unlockData(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->lockData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setSecureFlag(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->useSecureFlag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSARTEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    const/16 v1, 0x2000

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAllowScreenshotEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-static {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->u(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAllowScreenshotSupported()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->C(Landroid/app/Activity;)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method private static declared-synchronized setTaskId(I)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sCurrentTaskId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private shouldLaunchLockScreenActivity(Landroid/app/Activity;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mIsSecretModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/search_widget/SearchActivityDelegate;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private turnOffSecretMode()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setSecretModePreferenceEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->closeAnotherActivities()V

    return-void
.end method

.method private unregisterOnActivityStateChangedListener()V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public canUseSecretMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canUseSecretMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->hasPassword()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setDoNotShowSecretModeInitial(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->savePassword(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->changePassword(Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getAuthManager()Lcom/sec/android/app/sbrowser/auth/AuthManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    return-object p0
.end method

.method public getAuthManagerDelegate()Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/SecretModeManagerDelegate;

    return-object p0
.end method

.method public hasPassword()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->hasPassword()Z

    move-result p0

    return p0
.end method

.method public isAuthLockScreenShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    iget p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->isAuthLockScreenShown(I)Z

    move-result p0

    return p0
.end method

.method public isDisabledClicked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDisableClicked:Z

    return p0
.end method

.method public migrateDataIfRequired(Landroid/app/Activity;Z)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->getInstance()Lcom/sec/android/app/sbrowser/common/sdp/SdpController;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->shouldMigrateSdpData()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "DefaultPassword"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/android/app/sbrowser/common/sdp/SdpController;->migrationToSdp(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/sdp/SdpController$SdpResultListener;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->migrate(Landroid/app/Activity;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isInCurrentTask(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onActivityStateChange : newState = "

    const-string v1, ", mStopped = "

    invoke-static {p2, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    const-string v2, "SecretModeManager"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->onActivityStopped(Landroid/app/Activity;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onApplicationStateChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mApplicationStatus:[Ljava/lang/String;

    aget-object v1, v1, p1

    const-string v2, "SecretModeManager"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onStopped mStopped true, taskId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    invoke-static {p1, v0, v2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    :cond_0
    return-void
.end method

.method public onDestroy(I)V
    .locals 2

    const-string v0, "SecretModeManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->turnOffSecretMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->sInstanceArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    return-void
.end method

.method public openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "open_in_secret_mode_url"

    invoke-static {v0, p2}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->enableSecretMode(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetSecretMode()V
    .locals 2

    const-string v0, "SecretModeManager"

    const-string v1, "resetSecretMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mLockHandler:Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/secret_mode/LockHandler;->resetIncorrectAttempts()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->resetSecretMode()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->setPrivateAccessToken(ZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;->clearSecretModeTabs()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->clearData()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setStoredDataErasedForNonSdp(Z)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchData;->removeSecretDataFromSmartSearch()V

    return-void
.end method

.method public setAuthListener(Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setAuthListener : mStopped = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    const-string v2, "SecretModeManager"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->canNotifyAuthResultImmediately()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;->onResult(Z)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthListener:Lcom/sec/android/app/sbrowser/common/model/secret_mode/SecretModeAuthListener;

    return-void
.end method

.method public setMultiInstanceManagerDelegate(Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mMultiInstanceManagerDelegate:Lcom/sec/android/app/sbrowser/common/model/multi_instance/MultiInstanceManagerDelegate;

    return-void
.end method

.method public setSecretModeAccessTypeNone()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setAuthTypeToNone()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mDataProtector:Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/secret_mode/DataProtector;->resetPassword()V

    return-void
.end method

.method public setSecretModeEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public shouldLockScreenOnResume()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthNone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isAuthEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mStopped:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldOpenInSecretMode(Landroid/app/Activity;)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForApplication()I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string p0, "SecretModeManager"

    const-string p1, "Open in secret mode is canceled. current activity is not visible"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->isSecretModePreferenceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isLastEnabledInstance(I)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public toggleSecretMode(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->enableSecretMode(Landroid/app/Activity;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public toggleSecretModeWithDelay(Landroid/app/Activity;)V
    .locals 4

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->hasIrisAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toggleSecretModeWithDelay delay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecretModeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/secret_mode/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/app/sbrowser/secret_mode/a;-><init>(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;Landroid/app/Activity;I)V

    int-to-long p0, v0

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateActivity(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getTaskId(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mTaskId:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mAuthManager:Lcom/sec/android/app/sbrowser/auth/AuthManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthManager;->updateActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public updateSecureFlag()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecureFlag(Landroid/app/Activity;)V

    return-void
.end method
