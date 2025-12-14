.class public abstract LN3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final DEFAULT_PARAMS_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private mCacheEntry:LN3/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mCanceled:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mDefaultTrafficStatsTag:I

.field private mErrorListener:LN3/r;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mEventLog:LN3/z;

.field private final mLock:Ljava/lang/Object;

.field private final mMethod:I

.field private mRequestCompleteListener:LN3/n;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private mRequestQueue:LN3/q;

.field private mResponseDelivered:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private mRetryPolicy:LN3/u;

.field private mSequence:Ljava/lang/Integer;

.field private mShouldCache:Z

.field private mShouldRetryConnectionErrors:Z

.field private mShouldRetryServerErrors:Z

.field private mTag:Ljava/lang/Object;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;LN3/r;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, LN3/z;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, LN3/z;

    invoke-direct {v0}, LN3/z;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, LN3/p;->mEventLog:LN3/z;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, LN3/p;->mShouldCache:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, LN3/p;->mCanceled:Z

    iput-boolean v2, p0, LN3/p;->mResponseDelivered:Z

    iput-boolean v2, p0, LN3/p;->mShouldRetryServerErrors:Z

    iput-boolean v2, p0, LN3/p;->mShouldRetryConnectionErrors:Z

    iput-object v1, p0, LN3/p;->mCacheEntry:LN3/b;

    iput p1, p0, LN3/p;->mMethod:I

    iput-object p2, p0, LN3/p;->mUrl:Ljava/lang/String;

    iput-object p3, p0, LN3/p;->mErrorListener:LN3/r;

    new-instance p1, LN3/e;

    const/16 p3, 0x9c4

    invoke-direct {p1, p3, v0}, LN3/e;-><init>(II)V

    invoke-virtual {p0, p1}, LN3/p;->setRetryPolicy(LN3/u;)LN3/p;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    iput v2, p0, LN3/p;->mDefaultTrafficStatsTag:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)[B
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Encoding not supported: "

    invoke-static {v1, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic access$000(LN3/p;)LN3/z;
    .locals 0

    iget-object p0, p0, LN3/p;->mEventLog:LN3/z;

    return-object p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, LN3/z;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LN3/p;->mEventLog:LN3/z;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, LN3/z;->a(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LN3/p;->mCanceled:Z

    const/4 v1, 0x0

    iput-object v1, p0, LN3/p;->mErrorListener:LN3/r;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public compareTo(LN3/p;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/p;",
            ")I"
        }
    .end annotation

    invoke-virtual {p0}, LN3/p;->getPriority()LN3/o;

    move-result-object v0

    invoke-virtual {p1}, LN3/p;->getPriority()LN3/o;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LN3/p;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, LN3/p;->mSequence:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_0

    :goto_1
    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LN3/p;

    invoke-virtual {p0, p1}, LN3/p;->compareTo(LN3/p;)I

    move-result p0

    return p0
.end method

.method public deliverError(LN3/x;)V
    .locals 1

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LN3/p;->mErrorListener:LN3/r;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/volley/toolbox/g;

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/volley/toolbox/g;->c:LN3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public abstract deliverResponse(Ljava/lang/Object;)V
.end method

.method public finish(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LN3/p;->mRequestQueue:LN3/q;

    if-eqz v0, :cond_2

    iget-object v1, v0, LN3/q;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, LN3/q;->b:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v0, LN3/q;->j:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, v0, LN3/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, LN3/q;->b()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_1
    sget-boolean v0, LN3/z;->c:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LN3/m;

    invoke-direct {v3, p0, p1, v0, v1}, LN3/m;-><init>(LN3/p;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v2, p0, LN3/p;->mEventLog:LN3/z;

    invoke-virtual {v2, v0, v1, p1}, LN3/z;->a(JLjava/lang/String;)V

    iget-object p1, p0, LN3/p;->mEventLog:LN3/z;

    invoke-virtual {p0}, LN3/p;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, LN3/z;->b(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getBody()[B
    .locals 2

    invoke-virtual {p0}, LN3/p;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, LN3/p;->getParamsEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LN3/p;->a(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LN3/p;->getParamsEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCacheEntry()LN3/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LN3/p;->mCacheEntry:LN3/b;

    return-object p0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, LN3/p;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LN3/p;->getMethod()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getErrorListener()LN3/r;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, LN3/p;->mErrorListener:LN3/r;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()I
    .locals 0

    iget p0, p0, LN3/p;->mMethod:I

    return p0
.end method

.method public getParams()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParamsEncoding()Ljava/lang/String;
    .locals 0

    const-string p0, "UTF-8"

    return-object p0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LN3/p;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, LN3/p;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, LN3/p;->a(Ljava/lang/String;Ljava/util/Map;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LN3/p;->getBodyContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPostParams()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LN3/p;->getParams()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getPostParamsEncoding()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, LN3/p;->getParamsEncoding()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPriority()LN3/o;
    .locals 0

    sget-object p0, LN3/o;->NORMAL:LN3/o;

    return-object p0
.end method

.method public getRetryPolicy()LN3/u;
    .locals 0

    iget-object p0, p0, LN3/p;->mRetryPolicy:LN3/u;

    return-object p0
.end method

.method public final getSequence()I
    .locals 1

    iget-object p0, p0, LN3/p;->mSequence:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getSequence called before setSequence"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LN3/p;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getTimeoutMs()I
    .locals 0

    invoke-virtual {p0}, LN3/p;->getRetryPolicy()LN3/u;

    move-result-object p0

    check-cast p0, LN3/e;

    iget p0, p0, LN3/e;->a:I

    return p0
.end method

.method public getTrafficStatsTag()I
    .locals 0

    iget p0, p0, LN3/p;->mDefaultTrafficStatsTag:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LN3/p;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, LN3/p;->mResponseDelivered:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isCanceled()Z
    .locals 1

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, LN3/p;->mCanceled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public markDelivered()V
    .locals 2

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, LN3/p;->mResponseDelivered:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyListenerResponseNotUsable()V
    .locals 2

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LN3/p;->mRequestCompleteListener:LN3/n;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    check-cast v1, Lo3/n;

    invoke-virtual {v1, p0}, Lo3/n;->y(LN3/p;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyListenerResponseReceived(LN3/t;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/t;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LN3/p;->mRequestCompleteListener:LN3/n;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    check-cast v1, Lo3/n;

    iget-object v0, p1, LN3/t;->b:LN3/b;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, LN3/b;->e:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, LN3/p;->getCacheKey()Ljava/lang/String;

    move-result-object p0

    monitor-enter v1

    :try_start_1
    iget-object v0, v1, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    sget-boolean v2, LN3/A;->a:Z

    if-eqz v2, :cond_1

    const-string v2, "Releasing %d waiting requests for cacheKey=%s."

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, LN3/A;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LN3/p;

    iget-object v2, v1, Lo3/n;->b:Ljava/lang/Object;

    check-cast v2, LI3/d;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, LI3/d;->i(LN3/p;LN3/t;Lcom/google/common/util/concurrent/v;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {v1, p0}, Lo3/n;->y(LN3/p;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public parseNetworkError(LN3/x;)LN3/x;
    .locals 0

    return-object p1
.end method

.method public abstract parseNetworkResponse(LN3/k;)LN3/t;
.end method

.method public sendEvent(I)V
    .locals 0

    iget-object p0, p0, LN3/p;->mRequestQueue:LN3/q;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LN3/q;->b()V

    :cond_0
    return-void
.end method

.method public setCacheEntry(LN3/b;)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/b;",
            ")",
            "LN3/p;"
        }
    .end annotation

    iput-object p1, p0, LN3/p;->mCacheEntry:LN3/b;

    return-object p0
.end method

.method public setNetworkRequestCompleteListener(LN3/n;)V
    .locals 1

    iget-object v0, p0, LN3/p;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, LN3/p;->mRequestCompleteListener:LN3/n;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setRequestQueue(LN3/q;)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/q;",
            ")",
            "LN3/p;"
        }
    .end annotation

    iput-object p1, p0, LN3/p;->mRequestQueue:LN3/q;

    return-object p0
.end method

.method public setRetryPolicy(LN3/u;)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LN3/u;",
            ")",
            "LN3/p;"
        }
    .end annotation

    iput-object p1, p0, LN3/p;->mRetryPolicy:LN3/u;

    return-object p0
.end method

.method public final setSequence(I)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "LN3/p;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, LN3/p;->mSequence:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN3/p;"
        }
    .end annotation

    iput-boolean p1, p0, LN3/p;->mShouldCache:Z

    return-object p0
.end method

.method public final setShouldRetryConnectionErrors(Z)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN3/p;"
        }
    .end annotation

    iput-boolean p1, p0, LN3/p;->mShouldRetryConnectionErrors:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "LN3/p;"
        }
    .end annotation

    iput-boolean p1, p0, LN3/p;->mShouldRetryServerErrors:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)LN3/p;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "LN3/p;"
        }
    .end annotation

    iput-object p1, p0, LN3/p;->mTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 0

    iget-boolean p0, p0, LN3/p;->mShouldCache:Z

    return p0
.end method

.method public final shouldRetryConnectionErrors()Z
    .locals 0

    iget-boolean p0, p0, LN3/p;->mShouldRetryConnectionErrors:Z

    return p0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 0

    iget-boolean p0, p0, LN3/p;->mShouldRetryServerErrors:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LN3/p;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LN3/p;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LN3/p;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LN3/p;->getPriority()LN3/o;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LN3/p;->mSequence:Ljava/lang/Integer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
