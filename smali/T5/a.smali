.class public final LT5/a;
.super LS5/b;
.source "SourceFile"


# instance fields
.field public final c:LW5/a;


# direct methods
.method public constructor <init>(LW5/a;)V
    .locals 0

    invoke-direct {p0}, LS5/b;-><init>()V

    iput-object p1, p0, LT5/a;->c:LW5/a;

    return-void
.end method


# virtual methods
.method public final a(LS5/d;)Landroid/util/SparseArray;
    .locals 5

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzs;->b(LS5/d;)Lcom/google/android/gms/internal/vision/zzs;

    move-result-object v0

    iget-object v1, p1, LS5/d;->c:Landroid/graphics/Bitmap;

    const-string v2, "Error calling native barcode detector"

    const-string v3, "BarcodeNativeHandle"

    const/4 v4, 0x0

    iget-object p0, p0, LT5/a;->c:LW5/a;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result p1

    if-nez p1, :cond_0

    new-array p0, v4, [Lcom/google/android/gms/vision/barcode/Barcode;

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Lm5/b;

    invoke-direct {p1, v1}, Lm5/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v1}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p0, v4, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Internal barcode detector error; check logcat output."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, LS5/d;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result v1

    if-nez v1, :cond_3

    new-array p0, v4, [Lcom/google/android/gms/vision/barcode/Barcode;

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v1, Lm5/b;

    invoke-direct {v1, p1}, Lm5/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, LW5/a;->f()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/g1;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD5/a;->v0()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/vision/d;->b(Landroid/os/Parcel;Lm5/a;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, LD5/a;->A0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Lcom/google/android/gms/vision/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p0, p1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v3, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-array p0, v4, [Lcom/google/android/gms/vision/barcode/Barcode;

    :goto_1
    new-instance p1, Landroid/util/SparseArray;

    array-length v0, p0

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    array-length v0, p0

    :goto_2
    if-ge v4, v0, :cond_4

    aget-object v1, p0, v4

    iget-object v2, v1, Lcom/google/android/gms/vision/barcode/Barcode;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No frame supplied."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, LT5/a;->c:LW5/a;

    invoke-virtual {p0}, LW5/a;->d()Z

    move-result p0

    return p0
.end method

.method public final d()V
    .locals 0

    invoke-super {p0}, LS5/b;->d()V

    iget-object p0, p0, LT5/a;->c:LW5/a;

    invoke-virtual {p0}, LW5/a;->e()V

    return-void
.end method
