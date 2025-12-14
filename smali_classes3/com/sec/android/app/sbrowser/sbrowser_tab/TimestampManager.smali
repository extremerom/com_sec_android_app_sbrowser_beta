.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mPreferences:Landroid/content/SharedPreferences;

    const-string p0, "TimestampManager.NEXT_TIMESTAMP"

    const-wide/16 v1, 0x1

    invoke-interface {p1, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public static destroy()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->sInstance:Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->sInstance:Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->sInstance:Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->sInstance:Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final incrementTimestampCounterTo(J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-string p0, "TimestampManager.NEXT_TIMESTAMP"

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final getTimestamp()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->mTimestampCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TimestampManager;->incrementTimestampCounterTo(J)V

    return-wide v0
.end method
