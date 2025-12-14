.class public abstract Lcom/android/volley/toolbox/f;
.super LN3/p;
.source "SourceFile"


# static fields
.field protected static final PROTOCOL_CHARSET:Ljava/lang/String; = "utf-8"

.field private static final PROTOCOL_CONTENT_TYPE:Ljava/lang/String; = "application/json; charset=utf-8"


# instance fields
.field private mListener:LN3/s;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN3/s;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mRequestBody:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;LN3/s;LN3/r;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, LN3/p;-><init>(ILjava/lang/String;LN3/r;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/toolbox/f;->mLock:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/volley/toolbox/f;->mListener:LN3/s;

    iput-object p3, p0, Lcom/android/volley/toolbox/f;->mRequestBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-super {p0}, LN3/p;->cancel()V

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/volley/toolbox/f;->mListener:LN3/s;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deliverResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/volley/toolbox/f;->mListener:LN3/s;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/volley/toolbox/g;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/g;->c(Ljava/lang/Object;)V

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

.method public getBody()[B
    .locals 3

    const-string v0, "utf-8"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/volley/toolbox/f;->mRequestBody:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    iget-object p0, p0, Lcom/android/volley/toolbox/f;->mRequestBody:Ljava/lang/String;

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unsupported Encoding while trying to get the bytes of %s using %s"

    invoke-static {v0, p0}, LN3/A;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Volley"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/volley/toolbox/f;->PROTOCOL_CONTENT_TYPE:Ljava/lang/String;

    return-object p0
.end method

.method public getPostBody()[B
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/toolbox/f;->getBody()[B

    move-result-object p0

    return-object p0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/volley/toolbox/f;->getBodyContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
