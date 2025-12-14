.class public final Lwd/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public final a:Lwd/t;

.field public final b:Ljava/util/zip/Inflater;

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(Lwd/t;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/o;->a:Lwd/t;

    iput-object p2, p0, Lwd/o;->b:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lwd/o;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwd/o;->b:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwd/o;->d:Z

    iget-object p0, p0, Lwd/o;->a:Lwd/t;

    invoke-virtual {p0}, Lwd/t;->close()V

    return-void
.end method

.method public final read(Lwd/g;J)J
    .locals 10

    const-string v0, "sink"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_b

    iget-boolean v3, p0, Lwd/o;->d:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lwd/o;->a:Lwd/t;

    iget-object v4, p0, Lwd/o;->b:Ljava/util/zip/Inflater;

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    move-wide v8, v0

    goto :goto_4

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Lwd/g;->T(I)Lwd/u;

    move-result-object v2

    iget v5, v2, Lwd/u;->c:I

    rsub-int v5, v5, 0x2000

    int-to-long v5, v5

    invoke-static {p2, p3, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lwd/t;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v3, Lwd/t;->b:Lwd/g;

    iget-object v6, v6, Lwd/g;->a:Lwd/u;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v7, v6, Lwd/u;->c:I

    iget v8, v6, Lwd/u;->b:I

    sub-int/2addr v7, v8

    iput v7, p0, Lwd/o;->c:I

    iget-object v6, v6, Lwd/u;->a:[B

    invoke-virtual {v4, v6, v8, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_2
    iget-object v6, v2, Lwd/u;->a:[B

    iget v7, v2, Lwd/u;->c:I

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v5

    iget v6, p0, Lwd/o;->c:I

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lwd/o;->c:I

    sub-int/2addr v7, v6

    iput v7, p0, Lwd/o;->c:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lwd/t;->t(J)V

    :goto_3
    if-lez v5, :cond_5

    iget v6, v2, Lwd/u;->c:I

    add-int/2addr v6, v5

    iput v6, v2, Lwd/u;->c:I

    iget-wide v6, p1, Lwd/g;->b:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p1, Lwd/g;->b:J

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_6

    :cond_5
    iget v5, v2, Lwd/u;->b:I

    iget v6, v2, Lwd/u;->c:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lwd/u;->a()Lwd/u;

    move-result-object v5

    iput-object v5, p1, Lwd/g;->a:Lwd/u;

    invoke-static {v2}, Lwd/v;->a(Lwd/u;)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_4
    cmp-long v0, v8, v0

    if-lez v0, :cond_6

    return-wide v8

    :cond_6
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lwd/t;->a()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "source exhausted prematurely"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    const-wide/16 p0, -0x1

    return-wide p0

    :goto_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/o;->a:Lwd/t;

    iget-object p0, p0, Lwd/t;->a:Lwd/z;

    invoke-interface {p0}, Lwd/z;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method
