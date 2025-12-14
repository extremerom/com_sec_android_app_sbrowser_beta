.class public final LV5/b;
.super LS5/b;
.source "SourceFile"


# instance fields
.field public final c:LS5/h;

.field public final d:LW5/a;

.field public final e:Ljava/lang/Object;

.field public f:Z


# direct methods
.method public constructor <init>(LW5/a;)V
    .locals 1

    invoke-direct {p0}, LS5/b;-><init>()V

    new-instance v0, LS5/h;

    invoke-direct {v0}, LS5/h;-><init>()V

    iput-object v0, p0, LV5/b;->c:LS5/h;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LV5/b;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, LV5/b;->f:Z

    iput-object p1, p0, LV5/b;->d:LW5/a;

    return-void
.end method


# virtual methods
.method public final a(LS5/d;)Landroid/util/SparseArray;
    .locals 14

    if-eqz p1, :cond_7

    iget-object v0, p1, LS5/d;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v4, v2, v3

    add-int/lit8 v5, v2, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move v5, v1

    move v6, v4

    :goto_0
    if-ge v5, v4, :cond_2

    rem-int v7, v5, v2

    div-int v8, v5, v2

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v10, v10

    const v12, 0x3e991687    # 0.299f

    mul-float/2addr v12, v10

    int-to-float v11, v11

    const v13, 0x3f1645a2    # 0.587f

    mul-float/2addr v13, v11

    add-float/2addr v13, v12

    int-to-float v9, v9

    const v12, 0x3de978d5    # 0.114f

    mul-float/2addr v12, v9

    add-float/2addr v12, v13

    float-to-int v12, v12

    int-to-byte v12, v12

    invoke-virtual {v3, v5, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_0

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_0

    const v7, -0x41d2f1aa    # -0.169f

    mul-float/2addr v7, v10

    const v8, -0x4156872b    # -0.331f

    mul-float/2addr v8, v11

    add-float/2addr v8, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v12, v9, v7

    add-float/2addr v12, v8

    const/high16 v8, 0x43000000    # 128.0f

    add-float/2addr v12, v8

    mul-float/2addr v10, v7

    const v7, -0x412978d5    # -0.419f

    mul-float/2addr v11, v7

    add-float/2addr v11, v10

    const v7, -0x425a1cac    # -0.081f

    mul-float/2addr v9, v7

    add-float/2addr v9, v11

    add-float/2addr v9, v8

    add-int/lit8 v7, v6, 0x1

    float-to-int v8, v12

    int-to-byte v8, v8

    invoke-virtual {v3, v6, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x2

    float-to-int v8, v9

    int-to-byte v8, v8

    invoke-virtual {v3, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LS5/d;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    :cond_2
    iget-object v0, p0, LV5/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, LV5/b;->f:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, LV5/b;->d:LW5/a;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzs;->b(LS5/d;)Lcom/google/android/gms/internal/vision/zzs;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, LW5/a;->c(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzs;)[LV5/a;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v5, p1, v1

    iget v6, v5, LV5/a;->a:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v6, v4, 0x1

    move v4, v6

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, LV5/b;->c:LS5/h;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, LS5/h;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v9, v7, LS5/h;->a:Landroid/util/SparseIntArray;

    const/4 v10, -0x1

    invoke-virtual {v9, v6, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v9, v10, :cond_4

    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    sget v9, LS5/h;->d:I

    add-int/lit8 v10, v9, 0x1

    sput v10, LS5/h;->d:I

    iget-object v10, v7, LS5/h;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v6, v9}, Landroid/util/SparseIntArray;->append(II)V

    iget-object v7, v7, LS5/h;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v9, v6}, Landroid/util/SparseIntArray;->append(II)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v2, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :goto_3
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_6
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot use detector after release()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_4
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No frame supplied."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, LV5/b;->d:LW5/a;

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 2

    invoke-super {p0}, LS5/b;->d()V

    iget-object v0, p0, LV5/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, LV5/b;->f:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, LV5/b;->d:LW5/a;

    invoke-virtual {v1}, LW5/a;->e()V

    const/4 v1, 0x0

    iput-boolean v1, p0, LV5/b;->f:Z

    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finalize()V
    .locals 3

    :try_start_0
    iget-object v0, p0, LV5/b;->e:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, LV5/b;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "FaceDetector"

    const-string v2, "FaceDetector was not released with FaceDetector.release()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, LV5/b;->d()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
