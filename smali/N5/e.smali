.class public final LN5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LN5/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    iget p0, p0, LN5/e;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    move-object v1, v3

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    if-ge v6, p0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    int-to-char v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    const/4 v8, 0x4

    if-eq v7, v8, :cond_2

    const/4 v8, 0x5

    if-eq v7, v8, :cond_1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    invoke-static {v6, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v6, p1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {v6, p1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v2}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v6, v1}, LG5/f3;->f(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    goto :goto_0

    :cond_4
    invoke-static {v6, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->b:Lcom/google/android/gms/common/data/DataHolder;

    iput-object v2, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->c:Landroid/os/ParcelFileDescriptor;

    iput-wide v4, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->d:J

    iput-object v3, p0, Lcom/google/android/gms/safetynet/SafeBrowsingData;->e:[B

    return-object p0

    :pswitch_0
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_1

    :cond_6
    invoke-static {v2, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v1

    goto :goto_1

    :cond_7
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_1

    :cond_8
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/zzh;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/safetynet/zzh;-><init>(IZ)V

    return-object p0

    :pswitch_1
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_2

    :cond_9
    invoke-static {v1, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_a
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/zzf;

    invoke-direct {p0, v0}, Lcom/google/android/gms/safetynet/zzf;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-wide v5, v0

    move-object v7, v2

    move v8, v3

    move v9, v8

    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, p0, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    const/4 v2, 0x3

    if-eq v1, v2, :cond_d

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b

    invoke-static {v0, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_3

    :cond_b
    invoke-static {v0, p1}, LG5/f3;->n(ILandroid/os/Parcel;)Z

    move-result v0

    move v9, v0

    goto :goto_3

    :cond_c
    invoke-static {v0, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    move v8, v0

    goto :goto_3

    :cond_d
    sget-object v1, Lcom/google/android/gms/safetynet/HarmfulAppsData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LG5/f3;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/safetynet/HarmfulAppsData;

    move-object v7, v0

    goto :goto_3

    :cond_e
    invoke-static {v0, p1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v0

    move-wide v5, v0

    goto :goto_3

    :cond_f
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/zzd;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/safetynet/zzd;-><init>(J[Lcom/google/android/gms/safetynet/HarmfulAppsData;IZ)V

    return-object p0

    :pswitch_3
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-ge v3, p0, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    int-to-char v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_12

    const/4 v5, 0x3

    if-eq v4, v5, :cond_11

    const/4 v5, 0x4

    if-eq v4, v5, :cond_10

    invoke-static {v3, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_10
    invoke-static {v3, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v2

    goto :goto_4

    :cond_11
    invoke-static {v3, p1}, LG5/f3;->c(ILandroid/os/Parcel;)[B

    move-result-object v1

    goto :goto_4

    :cond_12
    invoke-static {v3, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_13
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/HarmfulAppsData;

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/safetynet/HarmfulAppsData;-><init>(Ljava/lang/String;I[B)V

    return-object p0

    :pswitch_4
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    if-ge v1, p0, :cond_15

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_14

    invoke-static {v1, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_5

    :cond_14
    invoke-static {v1, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_15
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/safetynet/zza;

    invoke-direct {p0, v0}, Lcom/google/android/gms/safetynet/zza;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, LN5/e;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/google/android/gms/safetynet/SafeBrowsingData;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/google/android/gms/safetynet/zzh;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Lcom/google/android/gms/safetynet/zzf;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Lcom/google/android/gms/safetynet/zzd;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Lcom/google/android/gms/safetynet/HarmfulAppsData;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/google/android/gms/safetynet/zza;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
