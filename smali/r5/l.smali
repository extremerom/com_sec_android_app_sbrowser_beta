.class public final Lr5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr5/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    iget p0, p0, Lr5/l;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_1
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    sget-object v5, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->b:[Lf3/k;

    aget-object v4, v5, v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-class v7, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    move v8, v1

    :goto_2
    if-ge v8, v5, :cond_2

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;

    iget-object v9, v9, Landroidx/work/multiprocess/parcelable/ParcelableWorkRequest;->a:Lf3/G;

    check-cast v9, Lg3/q;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    iget-object v5, v5, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->a:Lu3/b;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-instance p1, Lu3/b;

    invoke-direct {p1, v0, v4, v6, v3}, Lu3/b;-><init>(Ljava/lang/String;Lf3/k;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object p1, p0, Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;->a:Lu3/b;

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableResult;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_3
    new-instance p0, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    invoke-direct {p0, p1}, Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/samsung/android/settings/external/DynamicSummaryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/external/DynamicSummaryData;->b:Ljava/lang/String;

    return-object p0

    :pswitch_5
    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const-wide/16 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_4

    :cond_4
    invoke-static {v2, p1}, LG5/f3;->t(ILandroid/os/Parcel;)J

    move-result-wide v0

    goto :goto_4

    :cond_5
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/fido/fido2/api/common/zzy;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fido/fido2/api/common/zzy;-><init>(J)V

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;->c(I)Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

    move-result-object p0
    :try_end_0
    .catch Lr5/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

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

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lr5/l;->a:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkerParameters;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkQuery;

    return-object p0

    :pswitch_1
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableWorkContinuationImpl;

    return-object p0

    :pswitch_2
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableResult;

    return-object p0

    :pswitch_3
    new-array p0, p1, [Landroidx/work/multiprocess/parcelable/ParcelableForegroundRequestInfo;

    return-object p0

    :pswitch_4
    new-array p0, p1, [Lcom/samsung/android/settings/external/DynamicSummaryData;

    return-object p0

    :pswitch_5
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/zzy;

    return-object p0

    :pswitch_6
    new-array p0, p1, [Lcom/google/android/gms/fido/fido2/api/common/ErrorCode;

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
