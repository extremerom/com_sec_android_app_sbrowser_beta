.class public Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIdMap:[Z

.field private final mInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x5

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mIdMap:[Z

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;-><init>()V

    return-object v0
.end method

.method private assignInstanceId(I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mIdMap:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    add-int/2addr p1, v1

    return p1
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;

    return-object v0
.end method


# virtual methods
.method public clearInstanceId(I)V
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mIdMap:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mInstanceCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public generateInstanceId(Landroid/app/Activity;)I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p0, "InstanceIdManager"

    const-string p1, "There is no usable instance id in a application"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mIdMap:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->assignInstanceId(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->getInstanceIdFromMainActivityId(I)I

    move-result p0

    return p0
.end method

.method public getIdMapValue(I)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_instance/InstanceIdManager;->mIdMap:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public getInstanceIdFromMainActivityId(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method
