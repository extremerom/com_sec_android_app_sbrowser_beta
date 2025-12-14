.class public abstract Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getRuntimeHostBrowserPackageName:I = 0x1


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;

    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "org.chromium.webapk.lib.common.identity_service.IIdentityService"

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
    invoke-interface {p0}, Lorg/chromium/webapk/lib/common/identity_service/IIdentityService;->getRuntimeHostBrowserPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
