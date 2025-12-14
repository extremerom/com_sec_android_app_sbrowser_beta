.class public final Lcom/google/android/gms/vision/barcode/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 6

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v3, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->b:Ljava/lang/String;

    iput v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->c:I

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    return-object p0
.end method
