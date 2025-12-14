.class public Lcom/sec/android/app/sbrowser/tab/TabIdManager;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# instance fields
.field private final mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->getTabId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/tab/TabIdManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/tab/TabIdManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    return-object v0
.end method

.method private saveTabId()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const-string v1, "TabIdManager.NEXT_ID"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final generateTabId()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->incrementIdCounterTo(I)V

    return v0
.end method

.method public final getTabId()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "TabIdManager.NEXT_ID"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final incrementIdCounterTo(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->mIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->saveTabId()V

    return-void
.end method
