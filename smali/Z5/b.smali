.class public final LZ5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LZ5/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    iget p0, p0, LZ5/b;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/internal/zzf;-><init>(I)V

    return-object p0

    :pswitch_0
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    const/4 v6, 0x5

    if-eq v5, v6, :cond_2

    invoke-static {v4, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_2
    invoke-static {v4, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-static {v4, p1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v4, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {v4, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_1

    :cond_6
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzfx;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/google/android/gms/wearable/internal/zzfx;-><init>(ILjava/lang/String;Ljava/lang/String;[B)V

    return-object p0

    :pswitch_1
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_9

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_7
    invoke-static {v3, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_2

    :cond_8
    invoke-static {v3, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    goto :goto_2

    :cond_9
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zziv;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zziv;-><init>(Ljava/lang/String;II)V

    return-object p0

    :pswitch_2
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_b
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_c
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_3

    :cond_d
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzer;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzer;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_3
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_e
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzgm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzgm;

    goto :goto_4

    :cond_f
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_4

    :cond_10
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzep;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzep;-><init>(ILcom/google/android/gms/wearable/internal/zzgm;)V

    return-object p0

    :pswitch_4
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_12

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_11
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_5

    :cond_12
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_5

    :cond_13
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzen;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzen;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object p0

    :pswitch_5
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_15

    const/4 v4, 0x3

    if-eq v3, v4, :cond_14

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_6

    :cond_14
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_15
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_6

    :cond_16
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzel;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzel;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_6
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_19

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18

    const/4 v4, 0x3

    if-eq v3, v4, :cond_17

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_7

    :cond_17
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzdi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzdi;

    goto :goto_7

    :cond_18
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_7

    :cond_19
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzej;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzej;-><init>(ILcom/google/android/gms/wearable/internal/zzdi;)V

    return-object p0

    :pswitch_7
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1b

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_8

    :cond_1a
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzgm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_8

    :cond_1b
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_8

    :cond_1c
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzeh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzeh;-><init>(ILjava/util/ArrayList;)V

    return-object p0

    :pswitch_8
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1d

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_9

    :cond_1d
    sget-object v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/wearable/ConnectionConfiguration;

    goto :goto_9

    :cond_1e
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_9

    :cond_1f
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzef;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzef;-><init>(I[Lcom/google/android/gms/wearable/ConnectionConfiguration;)V

    return-object p0

    :pswitch_9
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_22

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_a

    :cond_20
    sget-object v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/ConnectionConfiguration;

    goto :goto_a

    :cond_21
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_a

    :cond_22
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzed;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzed;-><init>(ILcom/google/android/gms/wearable/ConnectionConfiguration;)V

    return-object p0

    :pswitch_a
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_25

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    const/4 v4, 0x3

    if-eq v3, v4, :cond_23

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_b

    :cond_23
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_24
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_b

    :cond_25
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzeb;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzeb;-><init>(ILjava/lang/String;)V

    return-object p0

    :pswitch_b
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_2a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_29

    const/4 v6, 0x3

    if-eq v5, v6, :cond_28

    const/4 v6, 0x4

    if-eq v5, v6, :cond_27

    const/4 v6, 0x5

    if-eq v5, v6, :cond_26

    invoke-static {v4, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_c

    :cond_26
    invoke-static {v4, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c

    :cond_27
    invoke-static {v4, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_28
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v1}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    goto :goto_c

    :cond_29
    invoke-static {v4, p1}, LG5/f3;->q(ILandroid/os/Parcel;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_c

    :cond_2a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzd;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/zzd;-><init>(Landroid/os/IBinder;[Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_c
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_2d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_d

    :cond_2b
    invoke-static {v2, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    goto :goto_d

    :cond_2c
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_d

    :cond_2d
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzea;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzea;-><init>(IZ)V

    return-object p0

    :pswitch_d
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_31

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_30

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2f

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2e

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_e

    :cond_2e
    invoke-static {v3, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v2

    goto :goto_e

    :cond_2f
    invoke-static {v3, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    goto :goto_e

    :cond_30
    invoke-static {v3, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_e

    :cond_31
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdy;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzdy;-><init>(IZZ)V

    return-object p0

    :pswitch_e
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_34

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_32

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_f

    :cond_32
    invoke-static {v2, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    goto :goto_f

    :cond_33
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_f

    :cond_34
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdw;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdw;-><init>(IZ)V

    return-object p0

    :pswitch_f
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_37

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_36

    const/4 v4, 0x3

    if-eq v3, v4, :cond_35

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_10

    :cond_35
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_10

    :cond_36
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_10

    :cond_37
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdt;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdt;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object p0

    :pswitch_10
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_3a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_39

    const/4 v4, 0x3

    if-eq v3, v4, :cond_38

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_11

    :cond_38
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    goto :goto_11

    :cond_39
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_11

    :cond_3a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdr;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdr;-><init>(ILandroid/os/ParcelFileDescriptor;)V

    return-object p0

    :pswitch_11
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_3d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3c

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3b

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_12

    :cond_3b
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzao;

    goto :goto_12

    :cond_3c
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_12

    :cond_3d
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdp;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdp;-><init>(ILcom/google/android/gms/wearable/internal/zzao;)V

    return-object p0

    :pswitch_12
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_40

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3f

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3e

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_13

    :cond_3e
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_13

    :cond_3f
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_13

    :cond_40
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdn;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdn;-><init>(ILjava/util/ArrayList;)V

    return-object p0

    :pswitch_13
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_43

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_42

    const/4 v4, 0x3

    if-eq v3, v4, :cond_41

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_14

    :cond_41
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    goto :goto_14

    :cond_42
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_14

    :cond_43
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdl;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzdl;-><init>(II)V

    return-object p0

    :pswitch_14
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_15
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_47

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_46

    const/4 v5, 0x4

    if-eq v4, v5, :cond_45

    const/4 v5, 0x5

    if-eq v4, v5, :cond_44

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_15

    :cond_44
    invoke-static {v3, p1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v2

    goto :goto_15

    :cond_45
    invoke-static {v3, p1}, LG5/f3;->b(ILandroid/os/Parcel;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_15

    :cond_46
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v3, v0}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_15

    :cond_47
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzdi;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzdi;-><init>(Landroid/net/Uri;Landroid/os/Bundle;[B)V

    return-object p0

    :pswitch_15
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_16
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_4a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_49

    const/4 v4, 0x3

    if-eq v3, v4, :cond_48

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_16

    :cond_48
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_49
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_4a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_16
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_17
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_50

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4f

    const/4 v7, 0x2

    if-eq v1, v7, :cond_4e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_4d

    const/4 v7, 0x4

    if-eq v1, v7, :cond_4c

    const/4 v7, 0x5

    if-eq v1, v7, :cond_4b

    invoke-static {v0, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_17

    :cond_4b
    invoke-static {v0, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v0

    move v6, v0

    goto :goto_17

    :cond_4c
    invoke-static {v0, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v0

    move v5, v0

    goto :goto_17

    :cond_4d
    invoke-static {v0, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v0

    move v4, v0

    goto :goto_17

    :cond_4e
    invoke-static {v0, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v0

    move v3, v0

    goto :goto_17

    :cond_4f
    invoke-static {v0, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    move v2, v0

    goto :goto_17

    :cond_50
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzcf;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wearable/internal/zzcf;-><init>(IZZZZ)V

    return-object p0

    :pswitch_17
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_52

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_51

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_18

    :cond_51
    invoke-static {v1, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_18

    :cond_52
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzcc;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/internal/zzcc;-><init>(I)V

    return-object p0

    :pswitch_18
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_54

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_53

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_19

    :cond_53
    invoke-static {v1, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_19

    :cond_54
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzby;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/internal/zzby;-><init>(I)V

    return-object p0

    :pswitch_19
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_56

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_55

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1a

    :cond_55
    invoke-static {v1, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_1a

    :cond_56
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzbw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/wearable/internal/zzbw;-><init>(I)V

    return-object p0

    :pswitch_1a
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_5a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_59

    const/4 v5, 0x3

    if-eq v4, v5, :cond_58

    const/4 v5, 0x4

    if-eq v4, v5, :cond_57

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1b

    :cond_57
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1b

    :cond_58
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_59
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_5a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/internal/zzbq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_1b
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_5f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-char v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5e

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5d

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5c

    const/4 v6, 0x5

    if-eq v5, v6, :cond_5b

    invoke-static {v4, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1c

    :cond_5b
    invoke-static {v4, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v3

    goto :goto_1c

    :cond_5c
    invoke-static {v4, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_1c

    :cond_5d
    invoke-static {v4, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v1

    goto :goto_1c

    :cond_5e
    sget-object v0, Lcom/google/android/gms/wearable/internal/zzbq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v4, v0}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzbq;

    goto :goto_1c

    :cond_5f
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzbf;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/wearable/internal/zzbf;-><init>(Lcom/google/android/gms/wearable/internal/zzbq;III)V

    return-object p0

    :pswitch_1c
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_62

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_61

    const/4 v4, 0x3

    if-eq v3, v4, :cond_60

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1d

    :cond_60
    sget-object v1, Lcom/google/android/gms/wearable/internal/zzgm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v2, v1}, LG5/f3;->k(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1d

    :cond_61
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_62
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/wearable/internal/zzao;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/wearable/internal/zzao;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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

    iget p0, p0, LZ5/b;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzf;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzfx;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zziv;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzer;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzep;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzen;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzel;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzej;

    return-object p0

    :pswitch_7
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzeh;

    return-object p0

    :pswitch_8
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzef;

    return-object p0

    :pswitch_9
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzed;

    return-object p0

    :pswitch_a
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzeb;

    return-object p0

    :pswitch_b
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzd;

    return-object p0

    :pswitch_c
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzea;

    return-object p0

    :pswitch_d
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdy;

    return-object p0

    :pswitch_e
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdw;

    return-object p0

    :pswitch_f
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdt;

    return-object p0

    :pswitch_10
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdr;

    return-object p0

    :pswitch_11
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdp;

    return-object p0

    :pswitch_12
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdn;

    return-object p0

    :pswitch_13
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdl;

    return-object p0

    :pswitch_14
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzdi;

    return-object p0

    :pswitch_15
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/DataItemAssetParcelable;

    return-object p0

    :pswitch_16
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzcf;

    return-object p0

    :pswitch_17
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzcc;

    return-object p0

    :pswitch_18
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzby;

    return-object p0

    :pswitch_19
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzbw;

    return-object p0

    :pswitch_1a
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzbq;

    return-object p0

    :pswitch_1b
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzbf;

    return-object p0

    :pswitch_1c
    new-array p0, p1, [Lcom/google/android/gms/wearable/internal/zzao;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
