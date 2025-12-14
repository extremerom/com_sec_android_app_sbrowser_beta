.class public final Lcom/google/android/gms/internal/vision/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/vision/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lcom/google/android/gms/internal/vision/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    move-wide v6, v3

    move v3, v5

    move v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v8

    if-ge v8, v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    int-to-char v9, v8

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    invoke-static {v8, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v5

    goto :goto_0

    :cond_1
    invoke-static {v8, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_0

    :cond_4
    invoke-static {v8, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/internal/vision/zzs;->a:I

    iput v3, v0, Lcom/google/android/gms/internal/vision/zzs;->b:I

    iput v4, v0, Lcom/google/android/gms/internal/vision/zzs;->c:I

    iput-wide v6, v0, Lcom/google/android/gms/internal/vision/zzs;->d:J

    iput v5, v0, Lcom/google/android/gms/internal/vision/zzs;->e:I

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_6
    invoke-static {v4, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v3

    goto :goto_1

    :cond_7
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_1

    :cond_8
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v2, v0, Lcom/google/android/gms/internal/vision/zzk;->a:I

    iput-boolean v3, v0, Lcom/google/android/gms/internal/vision/zzk;->b:Z

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move v10, v3

    move v12, v4

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_1

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :pswitch_2
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v12

    goto :goto_2

    :pswitch_3
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :pswitch_4
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v10

    goto :goto_2

    :pswitch_5
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :pswitch_6
    sget-object v3, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/vision/zzab;

    goto :goto_2

    :pswitch_7
    sget-object v3, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/vision/zzab;

    goto :goto_2

    :pswitch_8
    sget-object v3, Lcom/google/android/gms/internal/vision/zzal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Lcom/google/android/gms/internal/vision/zzal;

    goto :goto_2

    :cond_9
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzao;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/internal/vision/zzao;-><init>([Lcom/google/android/gms/internal/vision/zzal;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;Z)V

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_a

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_a
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_b
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzam;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/vision/zzam;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_a
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzal;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :pswitch_b
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_d
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    goto :goto_5

    :cond_e
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzaj;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/vision/zzaj;-><init>(Landroid/graphics/Rect;)V

    return-object v0

    :pswitch_c
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v12, v10

    move v11, v3

    move v13, v4

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :pswitch_d
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v16

    goto :goto_6

    :pswitch_e
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v15

    goto :goto_6

    :pswitch_f
    invoke-static {v2, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v14

    goto :goto_6

    :pswitch_10
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v13

    goto :goto_6

    :pswitch_11
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :pswitch_12
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v11

    goto :goto_6

    :pswitch_13
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :pswitch_14
    sget-object v3, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/gms/internal/vision/zzab;

    goto :goto_6

    :pswitch_15
    sget-object v3, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/gms/internal/vision/zzab;

    goto :goto_6

    :pswitch_16
    sget-object v3, Lcom/google/android/gms/internal/vision/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/google/android/gms/internal/vision/zzab;

    goto :goto_6

    :pswitch_17
    sget-object v3, Lcom/google/android/gms/internal/vision/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2, v3}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, [Lcom/google/android/gms/internal/vision/zzao;

    goto :goto_6

    :cond_f
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzah;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/internal/vision/zzah;-><init>([Lcom/google/android/gms/internal/vision/zzao;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Lcom/google/android/gms/internal/vision/zzab;Ljava/lang/String;FLjava/lang/String;IZII)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v3

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    const/4 v4, 0x4

    if-eq v3, v4, :cond_12

    const/4 v4, 0x5

    if-eq v3, v4, :cond_11

    const/4 v4, 0x6

    if-eq v3, v4, :cond_10

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_10
    invoke-static {v2, v1}, LG5/f3;->p(ILandroid/os/Parcel;)F

    move-result v9

    goto :goto_7

    :cond_11
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v8

    goto :goto_7

    :cond_12
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v7

    goto :goto_7

    :cond_13
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v6

    goto :goto_7

    :cond_14
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v5

    goto :goto_7

    :cond_15
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/internal/vision/zzab;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/vision/zzab;-><init>(IIIIF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/vision/a;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzs;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzk;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzao;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzam;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzal;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzaj;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzah;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/internal/vision/zzab;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
