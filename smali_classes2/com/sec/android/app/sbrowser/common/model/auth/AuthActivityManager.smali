.class public Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sActivatedInitialInfoTaskId:I

.field private static sAuthLockScreenActivity:Landroid/app/Activity;

.field private static sAuthPromptActivity:Landroid/app/Activity;

.field private static sInitialInfoActivity:Landroid/app/Activity;


# direct methods
.method public static closeAnotherActivities()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->closeAnotherActivity(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->closeAnotherActivity(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->closeAnotherActivity(I)V

    return-void
.end method

.method private static declared-synchronized closeAnotherActivity(I)V
    .locals 3

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;

    if-eqz v2, :cond_2

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sInitialInfoActivity:Landroid/app/Activity;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sput-object v1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sInitialInfoActivity:Landroid/app/Activity;

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    monitor-exit v0

    return-void
.end method

.method public static isActivatedInitialInfoOtherInstance(I)Z
    .locals 1

    sget v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sActivatedInitialInfoTaskId:I

    if-eq v0, p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAuthLockScreenActivityShown(I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthLockScreenActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthLockScreenActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static declared-synchronized isAuthPromptActivityShown()Z
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized isInitialInfoActivityShown()Z
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sInitialInfoActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->isValid(Landroid/app/Activity;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized setActivatedInitialInfoTaskId(I)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sput p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sActivatedInitialInfoTaskId:I
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

.method public static declared-synchronized setAuthLockScreenActivity(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthLockScreenActivity:Landroid/app/Activity;
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

.method public static declared-synchronized setAuthPromptActivity(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sAuthPromptActivity:Landroid/app/Activity;
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

.method public static declared-synchronized setInitialInfoActivity(Landroid/app/Activity;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/sec/android/app/sbrowser/common/model/auth/AuthActivityManager;->sInitialInfoActivity:Landroid/app/Activity;
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
