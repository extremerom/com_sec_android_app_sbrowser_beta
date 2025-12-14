.class public final LZ5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LZ5/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, LZ5/v;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v4, v1}, LG5/f3;->i(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v4, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzs;

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/wearable/internal/zzs;-><init>(Ljava/util/ArrayList;Z)V

    return-object v0

    :pswitch_0
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/google/android/gms/wearable/internal/zziv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v4}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/wearable/internal/zziv;

    goto :goto_1

    :cond_4
    sget-object v3, Lcom/google/android/gms/wearable/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v5, v3}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_5
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_1

    :cond_6
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzq;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/zzq;-><init>(ILjava/util/ArrayList;Lcom/google/android/gms/wearable/internal/zziv;)V

    return-object v0

    :pswitch_1
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v11, v3

    packed-switch v11, :pswitch_data_1

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :pswitch_2
    sget-object v10, Lcom/google/android/gms/wearable/internal/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v10}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/google/android/gms/wearable/internal/zzs;

    goto :goto_2

    :pswitch_3
    invoke-static {v3, v1}, LG5/f3;->u(ILandroid/os/Parcel;)I

    move-result v3

    if-nez v3, :cond_7

    move-object v9, v2

    goto :goto_2

    :cond_7
    const/4 v9, 0x4

    invoke-static {v1, v3, v9}, LG5/f3;->z(Landroid/os/Parcel;II)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    move-object v9, v3

    goto :goto_2

    :pswitch_4
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :pswitch_5
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :pswitch_6
    sget-object v6, Lcom/google/android/gms/wearable/internal/zziv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v3, v6}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/android/gms/wearable/internal/zziv;

    goto :goto_2

    :pswitch_7
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :pswitch_8
    invoke-static {v3, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_8
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzo;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/wearable/internal/zzo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wearable/internal/zziv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Lcom/google/android/gms/wearable/internal/zzs;)V

    return-object v0

    :pswitch_9
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v12, v5

    move v13, v12

    move v14, v13

    move v15, v14

    move-object v6, v3

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object/from16 v16, v11

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    packed-switch v3, :pswitch_data_2

    invoke-static {v2, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :pswitch_a
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_3

    :pswitch_b
    invoke-static {v2, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v2

    move v15, v2

    goto :goto_3

    :pswitch_c
    invoke-static {v2, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v2

    move v14, v2

    goto :goto_3

    :pswitch_d
    invoke-static {v2, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v2

    move v13, v2

    goto :goto_3

    :pswitch_e
    invoke-static {v2, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v2

    move v12, v2

    goto :goto_3

    :pswitch_f
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_3

    :pswitch_10
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :pswitch_11
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_3

    :pswitch_12
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_3

    :pswitch_13
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_3

    :pswitch_14
    invoke-static {v2, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :pswitch_15
    invoke-static {v2, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    move v5, v2

    goto :goto_3

    :cond_9
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzl;

    move-object v4, v0

    invoke-direct/range {v4 .. v16}, Lcom/google/android/gms/wearable/internal/zzl;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BBBBLjava/lang/String;)V

    return-object v0

    :pswitch_16
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_a
    invoke-static {v5, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    invoke-static {v5, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v3

    goto :goto_4

    :cond_c
    invoke-static {v5, v1}, LG5/f3;->o(ILandroid/os/Parcel;)B

    move-result v2

    goto :goto_4

    :cond_d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzi;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/zzi;-><init>(BBLjava/lang/String;)V

    return-object v0

    :pswitch_17
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_10

    const/4 v8, 0x3

    if-eq v7, v8, :cond_f

    const/4 v8, 0x4

    if-eq v7, v8, :cond_e

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_e
    sget-object v5, Lcom/google/android/gms/wearable/internal/zzgq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v6, v5}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_5

    :cond_f
    invoke-static {v6, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v3

    goto :goto_5

    :cond_10
    invoke-static {v6, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_5

    :cond_11
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhg;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/wearable/internal/zzhg;-><init>(IJLjava/util/ArrayList;)V

    return-object v0

    :pswitch_18
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_13

    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_12
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_6

    :cond_13
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_6

    :cond_14
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzhc;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzhc;-><init>(II)V

    return-object v0

    :pswitch_19
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v6, v5

    const/4 v7, 0x1

    if-eq v6, v7, :cond_17

    const/4 v7, 0x2

    if-eq v6, v7, :cond_16

    const/4 v7, 0x3

    if-eq v6, v7, :cond_15

    invoke-static {v5, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_15
    invoke-static {v5, v1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v4

    goto :goto_7

    :cond_16
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_7

    :cond_17
    invoke-static {v5, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_7

    :cond_18
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzha;

    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/wearable/internal/zzha;-><init>([BII)V

    return-object v0

    :pswitch_1a
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, v0, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_19

    invoke-static {v3, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_8

    :cond_19
    invoke-static {v3, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_8

    :cond_1a
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgy;

    invoke-direct {v0, v2}, Lcom/google/android/gms/wearable/internal/zzgy;-><init>(I)V

    return-object v0

    :pswitch_1b
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_1d

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1c

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1b

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_1b
    sget-object v3, Lcom/google/android/gms/wearable/internal/zzdi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/internal/zzdi;

    goto :goto_9

    :cond_1c
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_9

    :cond_1d
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgu;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzgu;-><init>(ILcom/google/android/gms/wearable/internal/zzdi;)V

    return-object v0

    :pswitch_1c
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1f

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1e

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_1e
    invoke-static {v4, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1f
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_a

    :cond_20
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgs;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzgs;-><init>(ILjava/lang/String;)V

    return-object v0

    :pswitch_1d
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v4, v3

    move-object v3, v2

    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_23

    const/4 v8, 0x3

    if-eq v7, v8, :cond_22

    const/4 v8, 0x4

    if-eq v7, v8, :cond_21

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_21
    invoke-static {v6, v1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v4

    goto :goto_b

    :cond_22
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_23
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_24
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgq;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/wearable/internal/zzgq;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :pswitch_1e
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    const/4 v6, 0x3

    if-eq v5, v6, :cond_25

    invoke-static {v4, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_c

    :cond_25
    sget-object v3, Lcom/google/android/gms/wearable/internal/zzbq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v4, v3}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/wearable/internal/zzbq;

    goto :goto_c

    :cond_26
    invoke-static {v4, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_c

    :cond_27
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgo;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/wearable/internal/zzgo;-><init>(ILcom/google/android/gms/wearable/internal/zzbq;)V

    return-object v0

    :pswitch_1f
    invoke-static/range {p1 .. p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move-object v3, v2

    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, v0, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2b

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2a

    const/4 v8, 0x4

    if-eq v7, v8, :cond_29

    const/4 v8, 0x5

    if-eq v7, v8, :cond_28

    invoke-static {v6, v1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_28
    invoke-static {v6, v1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v5

    goto :goto_d

    :cond_29
    invoke-static {v6, v1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v4

    goto :goto_d

    :cond_2a
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_d

    :cond_2b
    invoke-static {v6, v1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_2c
    invoke-static {v0, v1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzgm;

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/wearable/internal/zzgm;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_9
        :pswitch_1
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LZ5/v;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzs;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzq;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzo;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzl;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzi;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzhg;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzhc;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzha;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgy;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgu;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgs;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgq;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgo;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzgm;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
