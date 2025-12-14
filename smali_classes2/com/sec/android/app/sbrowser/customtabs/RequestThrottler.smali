.class Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALPHA:F

.field private static final BAN_DURATION_MS:J

.field private static final FORGET_AFTER_MS:J

.field private static final sAccessedSharedPreferences:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile sUidToThrottler:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBannedUntilMs:J

.field private mDelayMs:J

.field private mLastPrerenderRequestMs:J

.field private mLastRequestMs:J

.field private mScore:F

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mUid:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->BAN_DURATION_MS:J

    const-wide/16 v3, 0xe

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->FORGET_AFTER_MS:J

    const/high16 v0, 0x41200000    # 10.0f

    long-to-float v1, v1

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->ALPHA:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sAccessedSharedPreferences:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastRequestMs:J

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mDelayMs:J

    const-string v0, "customtabs_client_bans"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mUid:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "score_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_request_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "banned_until_"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mBannedUntilMs:J

    return-void
.end method

.method public static getForUid(Landroid/content/Context;I)Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->purgeOldEntries(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;-><init>(Landroid/content/Context;I)V

    sget-object p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->sUidToThrottler:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static loadInBackground()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler$1;-><init>()V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static purgeOldEntries(Landroid/content/Context;)V
    .locals 10

    const-string v0, "customtabs_client_bans"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v5, "last_request_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Long;

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v6, v1, v6

    sget-wide v8, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->FORGET_AFTER_MS:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_0

    const/16 v3, 0xd

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "score_"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "banned_until_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateBan(Landroid/content/SharedPreferences$Editor;)V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->BAN_DURATION_MS:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mBannedUntilMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "banned_until_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mBannedUntilMs:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "score_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public isPrerenderingAllowed()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mBannedUntilMs:J

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerPrerenderRequest(Ljava/lang/String;)V
    .locals 5

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v2

    sget v2, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->ALPHA:F

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/high16 p1, 0x41200000    # 10.0f

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mScore:F

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "last_request_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastPrerenderRequestMs:J

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->updateBan(Landroid/content/SharedPreferences$Editor;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateStatsAndReturnWhetherAllowed()Z
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastRequestMs:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mDelayMs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mLastRequestMs:J

    const-wide/16 v0, 0x2

    mul-long v6, v4, v0

    cmp-long v2, v2, v6

    if-gez v2, :cond_1

    const-wide/16 v2, 0x2710

    mul-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mDelayMs:J

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/customtabs/RequestThrottler;->mDelayMs:J

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
