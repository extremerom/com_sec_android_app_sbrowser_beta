.class public final Ld4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/m;


# static fields
.field public static final f:LF6/e;

.field public static final g:LX4/i;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:LX4/i;

.field public final d:LF6/e;

.field public final e:LL8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld4/a;->f:LF6/e;

    new-instance v0, LX4/i;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LX4/i;-><init>(I)V

    sput-object v0, Ld4/a;->g:LX4/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LT3/a;LT3/f;)V
    .locals 1

    sget-object v0, Ld4/a;->f:LF6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ld4/a;->a:Landroid/content/Context;

    iput-object p2, p0, Ld4/a;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Ld4/a;->d:LF6/e;

    new-instance p1, LL8/a;

    const/16 p2, 0xb

    invoke-direct {p1, p2, p3, p4}, LL8/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ld4/a;->e:LL8/a;

    sget-object p1, Ld4/a;->g:LX4/i;

    iput-object p1, p0, Ld4/a;->c:LX4/i;

    return-void
.end method

.method public static d(LP3/b;II)I
    .locals 5

    iget v0, p0, LP3/b;->g:I

    div-int/2addr v0, p2

    iget v1, p0, LP3/b;->f:I

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "BufferGifDecoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le v0, v1, :cond_1

    const-string v1, "Downsampling GIF, sampleSize: "

    const-string v3, ", target dimens: ["

    const-string v4, "x"

    invoke-static {v0, p1, v1, v3, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, LP3/b;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LP3/b;->g:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LQ3/k;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Ld4/g;->b:LQ3/j;

    invoke-virtual {p2, v0}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Ld4/a;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, LG5/A;->f(Ljava/util/ArrayList;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

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
    .locals 7

    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object p1, p0, Ld4/a;->c:LX4/i;

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LP3/c;

    if-nez v0, :cond_0

    new-instance v0, LP3/c;

    invoke-direct {v0}, LP3/c;-><init>()V

    :cond_0
    move-object v6, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, v6, LP3/c;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v6, LP3/c;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, LP3/b;

    invoke-direct {v0}, LP3/b;-><init>()V

    iput-object v0, v6, LP3/c;->c:LP3/b;

    iput v2, v6, LP3/c;->d:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, LP3/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, v6, LP3/c;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Ld4/a;->c(Ljava/nio/ByteBuffer;IILP3/c;LQ3/k;)Lb4/b;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Ld4/a;->c:LX4/i;

    invoke-virtual {p0, v6}, LX4/i;->l(LP3/c;)V

    return-object p1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Ld4/a;->c:LX4/i;

    invoke-virtual {p0, v6}, LX4/i;->l(LP3/c;)V

    throw p1

    :goto_1
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final c(Ljava/nio/ByteBuffer;IILP3/c;LQ3/k;)Lb4/b;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    sget v4, Ll4/h;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x2

    :try_start_0
    invoke-virtual/range {p4 .. p4}, LP3/c;->b()LP3/b;

    move-result-object v7

    iget v8, v7, LP3/b;->c:I

    const/4 v9, 0x0

    if-lez v8, :cond_5

    iget v8, v7, LP3/b;->b:I

    if-eqz v8, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v8, Ld4/g;->a:LQ3/j;

    move-object/from16 v10, p5

    invoke-virtual {v10, v8}, LQ3/k;->a(LQ3/j;)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, LQ3/b;->PREFER_RGB_565:LQ3/b;

    if-ne v8, v10, :cond_1

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v13, p2

    move/from16 v14, p3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :goto_1
    invoke-static {v7, v13, v14}, Ld4/a;->d(LP3/b;II)I

    move-result v10

    iget-object v11, v0, Ld4/a;->d:LF6/e;

    iget-object v12, v0, Ld4/a;->e:LL8/a;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, LP3/d;

    move-object/from16 v11, p1

    invoke-direct {v15, v12, v7, v11, v10}, LP3/d;-><init>(LL8/a;LP3/b;Ljava/nio/ByteBuffer;I)V

    invoke-virtual {v15, v8}, LP3/d;->c(Landroid/graphics/Bitmap$Config;)V

    iget v7, v15, LP3/d;->k:I

    add-int/2addr v7, v1

    iget-object v8, v15, LP3/d;->l:LP3/b;

    iget v8, v8, LP3/b;->c:I

    rem-int/2addr v7, v8

    iput v7, v15, LP3/d;->k:I

    invoke-virtual {v15}, LP3/d;->b()Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ll4/h;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v9

    :cond_3
    :try_start_1
    new-instance v8, Ld4/b;

    iget-object v0, v0, Ld4/a;->a:Landroid/content/Context;

    new-instance v9, LZ2/f;

    new-instance v12, Ld4/f;

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v11

    move-object v10, v12

    move-object v0, v12

    move-object v12, v15

    move/from16 v13, p2

    move/from16 v14, p3

    move-object v15, v7

    invoke-direct/range {v10 .. v15}, Ld4/f;-><init>(Lcom/bumptech/glide/b;LP3/d;IILandroid/graphics/Bitmap;)V

    invoke-direct {v9, v1, v0}, LZ2/f;-><init>(ILjava/lang/Object;)V

    invoke-direct {v8, v9}, Ld4/b;-><init>(LZ2/f;)V

    new-instance v0, Lb4/b;

    invoke-direct {v0, v8, v1}, Lb4/b;-><init>(Landroid/graphics/drawable/Drawable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ll4/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    :cond_5
    :goto_2
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ll4/h;->a(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v9

    :goto_3
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Ll4/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method
