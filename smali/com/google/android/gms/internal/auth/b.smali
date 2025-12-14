.class public final Lcom/google/android/gms/internal/auth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    invoke-static {p1}, LG5/f3;->y(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-ge v2, p0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    int-to-char v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-static {v2, p1}, LG5/f3;->v(ILandroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, LG5/f3;->g(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v2, p1}, LG5/f3;->r(ILandroid/os/Parcel;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, LG5/f3;->l(ILandroid/os/Parcel;)V

    new-instance p0, Lcom/google/android/gms/internal/auth/zzbw;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzbw;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/internal/auth/zzbw;

    return-object p0
.end method
