.class public final Lcom/google/android/gms/vision/barcode/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move-object/from16 p0, v3

    move-object/from16 v5, p0

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move v3, v4

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v14

    if-ge v14, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    move-object/from16 v18, v13

    int-to-char v13, v14

    packed-switch v13, :pswitch_data_0

    invoke-static {v14, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    :goto_1
    move-object/from16 v13, v18

    goto :goto_0

    :pswitch_0
    invoke-static {v14, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v4

    goto :goto_1

    :pswitch_1
    invoke-static {v14, v0}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v15

    goto :goto_1

    :pswitch_2
    sget-object v13, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v13}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    move-object/from16 v16, v13

    check-cast v16, Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    goto :goto_1

    :pswitch_3
    sget-object v13, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v13}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 p0, v13

    goto :goto_1

    :pswitch_4
    sget-object v13, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v13}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    move-object/from16 v17, v13

    check-cast v17, Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    goto :goto_1

    :pswitch_5
    sget-object v13, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v13}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    goto :goto_0

    :pswitch_6
    sget-object v12, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v12}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    goto :goto_1

    :pswitch_7
    sget-object v11, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v11}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    goto :goto_1

    :pswitch_8
    sget-object v10, Lcom/google/android/gms/vision/barcode/Barcode$Sms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v10}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    goto :goto_1

    :pswitch_9
    sget-object v9, Lcom/google/android/gms/vision/barcode/Barcode$Phone;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v9}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    goto :goto_1

    :pswitch_a
    sget-object v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v8}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/vision/barcode/Barcode$Email;

    goto :goto_1

    :pswitch_b
    sget-object v7, Landroid/graphics/Point;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v14, v7}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/graphics/Point;

    goto :goto_1

    :pswitch_c
    invoke-static {v14, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_1

    :pswitch_d
    invoke-static {v14, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :pswitch_e
    invoke-static {v14, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_f
    invoke-static {v14, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto/16 :goto_1

    :cond_0
    move-object/from16 v18, v13

    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/vision/barcode/Barcode;->a:I

    iput-object v5, v0, Lcom/google/android/gms/vision/barcode/Barcode;->b:Ljava/lang/String;

    iput-object v15, v0, Lcom/google/android/gms/vision/barcode/Barcode;->o:[B

    iput-object v6, v0, Lcom/google/android/gms/vision/barcode/Barcode;->c:Ljava/lang/String;

    iput v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->d:I

    iput-object v7, v0, Lcom/google/android/gms/vision/barcode/Barcode;->e:[Landroid/graphics/Point;

    iput-boolean v4, v0, Lcom/google/android/gms/vision/barcode/Barcode;->p:Z

    iput-object v8, v0, Lcom/google/android/gms/vision/barcode/Barcode;->f:Lcom/google/android/gms/vision/barcode/Barcode$Email;

    iput-object v9, v0, Lcom/google/android/gms/vision/barcode/Barcode;->g:Lcom/google/android/gms/vision/barcode/Barcode$Phone;

    iput-object v10, v0, Lcom/google/android/gms/vision/barcode/Barcode;->h:Lcom/google/android/gms/vision/barcode/Barcode$Sms;

    iput-object v11, v0, Lcom/google/android/gms/vision/barcode/Barcode;->i:Lcom/google/android/gms/vision/barcode/Barcode$WiFi;

    iput-object v12, v0, Lcom/google/android/gms/vision/barcode/Barcode;->j:Lcom/google/android/gms/vision/barcode/Barcode$UrlBookmark;

    move-object/from16 v3, v18

    iput-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->k:Lcom/google/android/gms/vision/barcode/Barcode$GeoPoint;

    move-object/from16 v3, v17

    iput-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->l:Lcom/google/android/gms/vision/barcode/Barcode$CalendarEvent;

    move-object/from16 v3, p0

    iput-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->m:Lcom/google/android/gms/vision/barcode/Barcode$ContactInfo;

    move-object/from16 v3, v16

    iput-object v3, v0, Lcom/google/android/gms/vision/barcode/Barcode;->n:Lcom/google/android/gms/vision/barcode/Barcode$DriverLicense;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

    new-array p0, p1, [Lcom/google/android/gms/vision/barcode/Barcode;

    return-object p0
.end method
