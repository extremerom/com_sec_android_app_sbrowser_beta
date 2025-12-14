.class public abstract Lorg/chromium/content/common/IGpuProcessCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/common/IGpuProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/common/IGpuProcessCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/common/IGpuProcessCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_forwardInputTransferToken:I = 0x3

.field static final TRANSACTION_forwardSurfaceForSurfaceRequest:I = 0x1

.field static final TRANSACTION_getViewSurface:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.chromium.content.common.IGpuProcessCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/chromium/content/common/IGpuProcessCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.chromium.content.common.IGpuProcessCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/chromium/content/common/IGpuProcessCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/chromium/content/common/IGpuProcessCallback;

    return-object v0

    :cond_1
    new-instance v0, Lorg/chromium/content/common/IGpuProcessCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/chromium/content/common/IGpuProcessCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "org.chromium.content.common.IGpuProcessCallback"

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
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p3, Lorg/chromium/content/common/InputTransferTokenWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lorg/chromium/content/common/IGpuProcessCallback$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/content/common/InputTransferTokenWrapper;

    invoke-interface {p0, p1, p2}, Lorg/chromium/content/common/IGpuProcessCallback;->forwardInputTransferToken(ILorg/chromium/content/common/InputTransferTokenWrapper;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/chromium/content/common/IGpuProcessCallback;->getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lorg/chromium/content/common/IGpuProcessCallback$_Parcel;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_4
    sget-object p1, Lorg/chromium/base/UnguessableToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lorg/chromium/content/common/IGpuProcessCallback$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/UnguessableToken;

    sget-object p3, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lorg/chromium/content/common/IGpuProcessCallback$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    invoke-interface {p0, p1, p2}, Lorg/chromium/content/common/IGpuProcessCallback;->forwardSurfaceForSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V

    :goto_0
    return v1
.end method
