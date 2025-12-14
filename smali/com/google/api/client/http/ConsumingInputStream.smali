.class final Lcom/google/api/client/http/ConsumingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :try_start_0
    sget v1, Lcom/google/common/io/g;->a:I

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/api/client/http/ConsumingInputStream;->closed:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method
