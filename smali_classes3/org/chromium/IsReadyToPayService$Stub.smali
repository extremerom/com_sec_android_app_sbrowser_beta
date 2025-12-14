.class public abstract Lorg/chromium/IsReadyToPayService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/IsReadyToPayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/IsReadyToPayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/IsReadyToPayService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_isReadyToPay:I = 0x1


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/IsReadyToPayService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.IsReadyToPayService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/IsReadyToPayService;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/chromium/IsReadyToPayService;

    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/IsReadyToPayService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/IsReadyToPayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "org.chromium.IsReadyToPayService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/IsReadyToPayServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/chromium/IsReadyToPayServiceCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/IsReadyToPayService;->isReadyToPay(Lorg/chromium/IsReadyToPayServiceCallback;)V

    return v1
.end method
