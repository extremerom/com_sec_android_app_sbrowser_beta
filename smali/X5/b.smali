.class public final LX5/b;
.super LS5/b;
.source "SourceFile"


# instance fields
.field public final c:LW5/a;


# direct methods
.method public constructor <init>(LW5/a;)V
    .locals 0

    invoke-direct {p0}, LS5/b;-><init>()V

    iput-object p1, p0, LX5/b;->c:LW5/a;

    return-void
.end method


# virtual methods
.method public final a(LS5/d;)Landroid/util/SparseArray;
    .locals 17

    move-object/from16 v0, p1

    new-instance v1, Lcom/google/android/gms/internal/vision/zzaj;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/vision/zzaj;-><init>(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/vision/zzs;->b(LS5/d;)Lcom/google/android/gms/internal/vision/zzs;

    move-result-object v3

    iget-object v4, v0, LS5/d;->c:Landroid/graphics/Bitmap;

    iget-object v5, v0, LS5/d;->a:LS5/c;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    :goto_0
    move-object v7, v4

    goto :goto_2

    :cond_0
    invoke-virtual/range {p1 .. p1}, LS5/d;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget v9, v5, LS5/c;->f:I

    iget v4, v3, Lcom/google/android/gms/internal/vision/zzs;->a:I

    iget v13, v3, Lcom/google/android/gms/internal/vision/zzs;->b:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v8, v7

    :goto_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v14, Landroid/graphics/YuvImage;

    const/4 v12, 0x0

    move-object v7, v14

    move v10, v4

    move v11, v13

    invoke-direct/range {v7 .. v12}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v4, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x64

    invoke-virtual {v14, v7, v4, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :goto_2
    invoke-static {v7}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v8, v3, Lcom/google/android/gms/internal/vision/zzs;->e:I

    const/4 v14, 0x1

    const/4 v15, 0x2

    const/4 v13, 0x3

    if-eqz v8, :cond_6

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    iget v8, v3, Lcom/google/android/gms/internal/vision/zzs;->e:I

    if-eqz v8, :cond_5

    if-eq v8, v14, :cond_4

    if-eq v8, v15, :cond_3

    if-ne v8, v13, :cond_2

    const/16 v8, 0x10e

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported rotation degree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v8, 0xb4

    goto :goto_3

    :cond_4
    const/16 v8, 0x5a

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    int-to-float v8, v8

    invoke-virtual {v12, v8}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move v10, v0

    move v11, v4

    move v6, v13

    move/from16 v13, v16

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_4

    :cond_6
    move v6, v13

    :goto_4
    iget v8, v3, Lcom/google/android/gms/internal/vision/zzs;->e:I

    if-eq v8, v14, :cond_7

    if-ne v8, v6, :cond_8

    :cond_7
    iput v4, v3, Lcom/google/android/gms/internal/vision/zzs;->a:I

    iput v0, v3, Lcom/google/android/gms/internal/vision/zzs;->b:I

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, v5, LS5/c;->a:I

    iget v4, v5, LS5/c;->b:I

    iget v5, v3, Lcom/google/android/gms/internal/vision/zzs;->e:I

    if-eq v5, v14, :cond_b

    if-eq v5, v15, :cond_a

    if-eq v5, v6, :cond_9

    move-object v4, v2

    goto :goto_5

    :cond_9
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v10

    invoke-direct {v4, v5, v8, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_5

    :cond_a
    new-instance v5, Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v4, v9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v10

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v10

    invoke-direct {v5, v8, v9, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v5

    goto :goto_5

    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v4, v5

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v9, v2, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v5, v8, v4, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v0

    :goto_5
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_c
    const/4 v2, 0x0

    iput v2, v3, Lcom/google/android/gms/internal/vision/zzs;->e:I

    move-object/from16 v0, p0

    iget-object v0, v0, LX5/b;->c:LW5/a;

    invoke-virtual {v0}, LW5/a;->d()Z

    move-result v4

    if-nez v4, :cond_d

    new-array v0, v2, [Lcom/google/android/gms/internal/vision/zzah;

    goto :goto_6

    :cond_d
    :try_start_0
    new-instance v2, Lm5/b;

    invoke-direct {v2, v7}, Lm5/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/b;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v6, v4}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/vision/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/vision/zzah;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    const/4 v2, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    const-string v1, "TextNativeHandle"

    const-string v2, "Error calling native text recognizer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    new-array v0, v2, [Lcom/google/android/gms/internal/vision/zzah;

    :goto_6
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    array-length v3, v0

    move v4, v2

    :goto_7
    if-ge v4, v3, :cond_f

    aget-object v5, v0, v4

    iget v6, v5, Lcom/google/android/gms/internal/vision/zzah;->j:I

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    if-nez v6, :cond_e

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iget v7, v5, Lcom/google/android/gms/internal/vision/zzah;->j:I

    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_e
    iget v7, v5, Lcom/google/android/gms/internal/vision/zzah;->k:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    move v3, v2

    :goto_8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_11

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    new-instance v5, LX5/a;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/android/gms/internal/vision/zzah;

    iput-object v7, v5, LX5/a;->a:[Lcom/google/android/gms/internal/vision/zzah;

    move v7, v2

    :goto_9
    iget-object v8, v5, LX5/a;->a:[Lcom/google/android/gms/internal/vision/zzah;

    array-length v9, v8

    if-ge v7, v9, :cond_10

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/vision/zzah;

    aput-object v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No frame supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, LX5/b;->c:LW5/a;

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 0

    invoke-super {p0}, LS5/b;->d()V

    iget-object p0, p0, LX5/b;->c:LW5/a;

    invoke-virtual {p0}, LW5/a;->e()V

    return-void
.end method
