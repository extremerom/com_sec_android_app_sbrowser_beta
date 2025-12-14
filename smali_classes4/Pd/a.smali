.class public final LPd/a;
.super Ljava/io/BufferedInputStream;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Z

.field public final b:I

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 2

    const v0, 0x8000

    invoke-direct {p0, p2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-static {v1}, LOd/b;->d(Z)V

    iput p1, p0, LPd/a;->b:I

    iput p1, p0, LPd/a;->c:I

    if-eqz p1, :cond_1

    move p2, v0

    :cond_1
    iput-boolean p2, p0, LPd/a;->a:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    return-void
.end method


# virtual methods
.method public final read([BII)I
    .locals 3

    iget-boolean v0, p0, LPd/a;->d:Z

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, LPd/a;->a:Z

    if-eqz v0, :cond_0

    iget v2, p0, LPd/a;->c:I

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, LPd/a;->d:Z

    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, LPd/a;->c:I

    if-le p3, v0, :cond_2

    move p3, v0

    :cond_2
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p1

    iget p2, p0, LPd/a;->c:I

    sub-int/2addr p2, p1

    iput p2, p0, LPd/a;->c:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public final reset()V
    .locals 2

    invoke-super {p0}, Ljava/io/BufferedInputStream;->reset()V

    iget v0, p0, LPd/a;->b:I

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v0, v1

    iput v0, p0, LPd/a;->c:I

    return-void
.end method
