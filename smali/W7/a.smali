.class public final LW7/a;
.super Lcom/google/ar/core/dependencies/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;


# virtual methods
.method public final newNativeLibraryLoader(Lcom/google/vr/dynamite/client/IObjectWrapper;Lcom/google/vr/dynamite/client/IObjectWrapper;)Lcom/google/vr/dynamite/client/INativeLibraryLoader;
    .locals 2

    invoke-virtual {p0}, Lcom/google/ar/core/dependencies/c;->a()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/ar/core/dependencies/e;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v0, p2}, Lcom/google/ar/core/dependencies/e;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/ar/core/dependencies/c;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p2, "com.google.vr.dynamite.client.INativeLibraryLoader"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    goto :goto_0

    :cond_1
    new-instance v0, LW7/b;

    invoke-direct {v0, p1, p2}, Lcom/google/ar/core/dependencies/c;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
