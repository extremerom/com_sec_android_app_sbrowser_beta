.class public final Ld4/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/m;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ld4/a;

.field public final c:LT3/f;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ld4/a;LT3/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/h;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Ld4/h;->b:Ld4/a;

    iput-object p3, p0, Ld4/h;->c:LT3/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LQ3/k;)Z
    .locals 1

    check-cast p1, Ljava/io/InputStream;

    sget-object v0, Ld4/g;->b:LQ3/j;

    invoke-virtual {p2, v0}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Ld4/h;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Ld4/h;->c:LT3/f;

    invoke-static {p2, p1, p0}, LG5/A;->e(Ljava/util/ArrayList;Ljava/io/InputStream;LT3/f;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Ljava/lang/Object;IILQ3/k;)LS3/C;
    .locals 5

    check-cast p1, Ljava/io/InputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_2

    :goto_1
    const-string v0, "StreamGifDecoder"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p0, p0, Ld4/h;->b:Ld4/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Ld4/a;->b(Ljava/lang/Object;IILQ3/k;)LS3/C;

    move-result-object v2

    :goto_3
    return-object v2
.end method
