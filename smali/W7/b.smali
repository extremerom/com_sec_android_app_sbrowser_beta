.class public final LW7/b;
.super Lcom/google/ar/core/dependencies/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/dynamite/client/INativeLibraryLoader;


# virtual methods
.method public final checkVersion(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/ar/core/dependencies/c;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/dependencies/c;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return p1
.end method

.method public final initializeAndLoadNativeLibrary(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Lcom/google/ar/core/dependencies/c;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/dependencies/c;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide v0
.end method
