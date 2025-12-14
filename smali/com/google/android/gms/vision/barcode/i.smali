.class public final Lcom/google/android/gms/vision/barcode/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-static {v4, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v4, v7}, LG5/f3;->A(Landroid/os/Parcel;II)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    invoke-static {p1, v4, v7}, LG5/f3;->A(Landroid/os/Parcel;II)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->a:D

    iput-wide v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->b:D

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    return-object p0
.end method
