.class public final LZ3/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/f;


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;LT3/f;)I
    .locals 1

    sget-object v0, Ll4/b;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ll4/a;

    invoke-direct {v0, p1}, Ll4/a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, v0, p2}, LZ3/u;->d(Ljava/io/InputStream;LT3/f;)I

    move-result p0

    return p0
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public final c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public final d(Ljava/io/InputStream;LT3/f;)I
    .locals 0

    new-instance p0, Lu1/g;

    invoke-direct {p0, p1}, Lu1/g;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    invoke-virtual {p0, p1}, Lu1/g;->c(Ljava/lang/String;)Lu1/c;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lu1/g;->f:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Lu1/c;->e(Ljava/nio/ByteOrder;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    if-nez p2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    return p2
.end method
