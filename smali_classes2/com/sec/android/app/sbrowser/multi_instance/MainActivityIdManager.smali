.class public Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;


# instance fields
.field private final mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFocusedActivityId:I

.field private mIdMap:[Z

.field private mOldFocusedActivityId:I

.field private mPreLaunchList:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x5

    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mIdMap:[Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    return-void
.end method

.method private assignActivityId(Landroid/app/Activity;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mIdMap:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return p1
.end method

.method private clearActivityId(I)V
    .locals 2

    const-string v0, "CMI: clearActivity activity: "

    const-string v1, "MainActivityIdManager"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mIdMap:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    if-ne p1, v0, :cond_3

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    :cond_3
    :goto_0
    return-void
.end method

.method private clearAllActivityIds()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mIdMap:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    const-string p0, "MainActivityIdManager"

    const-string v0, "CMI: all activity erased"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public destroy()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    sput-object p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->sInstance:Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    return-void
.end method

.method public getActivityCount()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ltz p0, :cond_1

    const/4 v0, 0x5

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public getActivityIdByClassName(Ljava/lang/String;)I
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY2:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY3:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY4:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY5:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public getClassByActivityId(I)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    return-object p0

    :cond_0
    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity5;

    return-object p0

    :cond_1
    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity4;

    return-object p0

    :cond_2
    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity3;

    return-object p0

    :cond_3
    const-class p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity2;

    return-object p0
.end method

.method public getClassNameByActivityId(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "invalid_class_name"

    return-object p0

    :cond_0
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY5:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY4:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY3:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY2:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultActivity()Ljava/lang/String;
    .locals 0

    sget p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->TYPE_SBROWSER_MAIN_ACTIVITY:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->getClassName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedActivity()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassNameByActivityId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFocusedActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getClassByActivityId(I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getNextId()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mIdMap:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->isPrepareLaunch(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "MainActivityIdManager"

    const-string v0, "CMI: There is no usable activity in a application"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getPreLaunchList()[Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    return-object p0
.end method

.method public isActivityCountFull()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityCount()I

    move-result p0

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPrepareLaunch(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "MainActivityIdManager"

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->assignActivityId(Landroid/app/Activity;)I

    move-result p0

    const-string p1, "CMI:  onActivityStateChange() CREATED - "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CMI:  onActivityStateChange() DESTROYED className - "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->clearActivityId(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "MainActivityIdManager"

    const-string v0, "CMI: onApplicationStateChange() HAS_DESTROYED_ACTIVITIES "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->clearAllActivityIds()V

    :cond_0
    return-void
.end method

.method public setFocusedActivity(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    if-eq p1, v0, :cond_0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mOldFocusedActivityId:I

    :cond_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "CMI: setFocusedActivity() Focused Activity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mFocusedActivityId:I

    const-string v0, "MainActivityIdManager"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public setPreLaunchFlag(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "MainActivityIdManager"

    if-ne v0, v1, :cond_0

    const-string p0, "setPreLaunchFlag() invalid activity, className: "

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "CMI: setPreLaunchFlag() Class: "

    invoke-static {v1, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    const/4 p1, 0x1

    aput-boolean p1, p0, v0

    return-void
.end method

.method public unsetPreLaunchFlag(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "MainActivityIdManager"

    if-ne v0, v1, :cond_0

    const-string p0, "unsetPreLaunchFlag() invalid activity, className: "

    invoke-static {p0, p1, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    const-string v1, "CMI: unsetPreLaunchFlag() Class: "

    invoke-static {v1, p1, v2}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->mPreLaunchList:[Z

    const/4 p1, 0x0

    aput-boolean p1, p0, v0

    return-void
.end method
