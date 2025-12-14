.class public abstract Lz8/b;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lz8/c;


# direct methods
.method public static v0(Landroid/os/IBinder;)Lz8/c;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lz8/c;

    if-eqz v1, :cond_1

    check-cast v0, Lz8/c;

    return-object v0

    :cond_1
    new-instance v0, Lz8/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lz8/a;->a:Landroid/os/IBinder;

    return-object v0
.end method
