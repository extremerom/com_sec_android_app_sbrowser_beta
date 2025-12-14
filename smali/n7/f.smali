.class public final Ln7/f;
.super Ljava/io/FilterWriter;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:Z

.field public f:I


# direct methods
.method public constructor <init>(Ljava/io/StringWriter;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterWriter;-><init>(Ljava/io/Writer;)V

    if-ltz p2, :cond_3

    if-eqz p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    iput p1, p0, Ln7/f;->b:I

    const/4 p1, 0x1

    shr-int/2addr p2, p1

    iput p2, p0, Ln7/f;->c:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    iput-object p3, p0, Ln7/f;->a:Ljava/lang/String;

    const/4 p3, 0x0

    iput p3, p0, Ln7/f;->d:I

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Ln7/f;->e:Z

    iput p3, p0, Ln7/f;->f:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final write(I)V
    .locals 7

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ln7/f;->e:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-eqz v1, :cond_1

    if-ne p1, v4, :cond_0

    iget v1, p0, Ln7/f;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Ln7/f;->f:I

    iget v5, p0, Ln7/f;->c:I

    if-lt v1, v5, :cond_1

    iput v5, p0, Ln7/f;->f:I

    iput-boolean v2, p0, Ln7/f;->e:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    iput-boolean v2, p0, Ln7/f;->e:Z

    :cond_1
    :goto_0
    iget v1, p0, Ln7/f;->d:I

    iget v5, p0, Ln7/f;->b:I

    const/16 v6, 0xa

    if-ne v1, v5, :cond_2

    if-eq p1, v6, :cond_2

    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(I)V

    iput v2, p0, Ln7/f;->d:I

    :cond_2
    iget v1, p0, Ln7/f;->d:I

    if-nez v1, :cond_5

    iget-object v1, p0, Ln7/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v5, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Ln7/f;->e:Z

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget v5, p0, Ln7/f;->f:I

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5, v4}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput v5, p0, Ln7/f;->d:I

    :cond_5
    iget-object v1, p0, Ljava/io/FilterWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    if-ne p1, v6, :cond_7

    iput v2, p0, Ln7/f;->d:I

    iget p1, p0, Ln7/f;->c:I

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Ln7/f;->e:Z

    iput v2, p0, Ln7/f;->f:I

    goto :goto_3

    :cond_7
    iget p1, p0, Ln7/f;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Ln7/f;->d:I

    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    if-lez p3, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ln7/f;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final write([CII)V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    if-lez p3, :cond_0

    :try_start_0
    aget-char v1, p1, p2

    invoke-virtual {p0, v1}, Ln7/f;->write(I)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
