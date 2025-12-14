.class public final LD5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LD5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v4, p0

    iget v4, v4, LD5/l;->a:I

    packed-switch v4, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    if-eq v5, v2, :cond_0

    invoke-static {v4, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzg;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/location/zzg;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v2

    sget-object v4, LD5/q;->b:LD5/o;

    sget-object v4, LD5/r;->e:LD5/r;

    move v6, v1

    move v7, v6

    move v11, v7

    move-object v8, v3

    move-object v9, v8

    move-object v10, v9

    move-object v13, v10

    move-object v12, v4

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    packed-switch v3, :pswitch_data_1

    invoke-static {v1, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v12, v1

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/google/android/gms/internal/location/zzd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/location/zzd;

    move-object v13, v1

    goto :goto_1

    :pswitch_3
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :pswitch_4
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move v11, v1

    goto :goto_1

    :pswitch_5
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_1

    :pswitch_6
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :pswitch_7
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move v7, v1

    goto :goto_1

    :pswitch_8
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzd;

    move-object v5, v0

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/location/zzd;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/google/android/gms/internal/location/zzd;)V

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v1

    move v5, v2

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    :pswitch_a
    invoke-static {v2, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :pswitch_b
    invoke-static {v2, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_2

    :pswitch_c
    invoke-static {v2, v0}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v2

    move-object v10, v2

    goto :goto_2

    :pswitch_d
    invoke-static {v2, v0}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :pswitch_e
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    move-object v9, v2

    goto :goto_2

    :pswitch_f
    invoke-static {v2, v0}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v2

    move-object v7, v2

    goto :goto_2

    :pswitch_10
    sget-object v3, Lcom/google/android/gms/internal/location/zzdd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/location/zzdd;

    move-object v6, v2

    goto :goto_2

    :pswitch_11
    invoke-static {v2, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzdf;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/internal/location/zzdf;-><init>(ILcom/google/android/gms/internal/location/zzdd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    return-object v0

    :pswitch_12
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v4

    const-wide v5, 0x7fffffffffffffffL

    move v10, v1

    move v11, v10

    move v13, v11

    move v14, v13

    move-object v8, v3

    move-object v9, v8

    move-object v12, v9

    move-object v15, v12

    :goto_3
    move-wide/from16 v16, v5

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v4, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    if-eq v3, v2, :cond_5

    const/4 v5, 0x5

    if-eq v3, v5, :cond_4

    packed-switch v3, :pswitch_data_3

    invoke-static {v1, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :pswitch_13
    invoke-static {v1, v0}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v5

    goto :goto_3

    :pswitch_14
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_4

    :pswitch_15
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move v14, v1

    goto :goto_4

    :pswitch_16
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move v13, v1

    goto :goto_4

    :pswitch_17
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :pswitch_18
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move v11, v1

    goto :goto_4

    :pswitch_19
    invoke-static {v1, v0}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    move v10, v1

    goto :goto_4

    :cond_4
    sget-object v3, Lcom/google/android/gms/common/internal/ClientIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v9, v1

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/location/LocationRequest;

    move-object v8, v1

    goto :goto_4

    :cond_6
    invoke-static {v4, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzdd;

    move-object v7, v0

    invoke-direct/range {v7 .. v17}, Lcom/google/android/gms/internal/location/zzdd;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/ArrayList;ZZLjava/lang/String;ZZLjava/lang/String;J)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v2

    move v5, v1

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, v2, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    packed-switch v3, :pswitch_data_4

    invoke-static {v1, v0}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :pswitch_1b
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_5

    :pswitch_1c
    invoke-static {v1, v0}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    goto :goto_5

    :pswitch_1d
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    move-object v8, v1

    goto :goto_5

    :pswitch_1e
    invoke-static {v1, v0}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v1

    move-object v7, v1

    goto :goto_5

    :pswitch_1f
    invoke-static {v1, v0}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v1

    move-object v6, v1

    goto :goto_5

    :pswitch_20
    invoke-static {v1, v0}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    move v5, v1

    goto :goto_5

    :cond_7
    invoke-static {v2, v0}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/location/zzdb;

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/location/zzdb;-><init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_12
        :pswitch_9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LD5/l;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzg;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzd;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzdf;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzdd;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzdb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
