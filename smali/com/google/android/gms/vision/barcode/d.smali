.class public final Lcom/google/android/gms/vision/barcode/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v7

    if-ge v7, p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    int-to-char v8, v7

    packed-switch v8, :pswitch_data_0

    invoke-static {v7, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :pswitch_0
    sget-object v6, Lcom/google/android/gms/vision/barcode/Barcode$Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v7, v6}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/android/gms/vision/barcode/Barcode$Address;

    goto :goto_0

    :pswitch_1
    invoke-static {v7, p1}, LG5/f3;->h(ILandroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/google/android/gms/vision/barcode/Barcode$Email;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v7, v4}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/gms/vision/barcode/Barcode$Email;

    goto :goto_0

    :pswitch_3
    sget-object v3, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v7, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    goto :goto_0

    :pswitch_4
    invoke-static {v7, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    invoke-static {v7, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v7, v0}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->a:Lcom/google/android/gms/vision/barcode/Barcode$PersonName;

    iput-object v1, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->d:[Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object v4, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->e:[Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object v5, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->f:[Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->g:[Lcom/google/android/gms/vision/barcode/Barcode$Address;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    return-object p0
.end method
