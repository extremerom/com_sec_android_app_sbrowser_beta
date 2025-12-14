.class Lorg/chromium/content/common/SurfaceWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/common/SurfaceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/chromium/content/common/SurfaceWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    if-eqz p0, :cond_2

    invoke-static {p1}, Lorg/chromium/content/common/SurfaceWrapper;->a(Landroid/os/Parcel;)Landroid/window/InputTransferToken;

    move-result-object p0

    new-instance p1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {p1, v2, v1, p0, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;ZLandroid/window/InputTransferToken;I)V

    return-object p1

    :cond_2
    new-instance p0, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {p0, v2, v1, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/Surface;ZI)V

    return-object p0

    :cond_3
    sget-object p0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    new-instance p1, Lorg/chromium/content/common/SurfaceWrapper;

    invoke-direct {p1, p0, v0}, Lorg/chromium/content/common/SurfaceWrapper;-><init>(Landroid/view/SurfaceControl;I)V

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/content/common/SurfaceWrapper$1;->newArray(I)[Lorg/chromium/content/common/SurfaceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/chromium/content/common/SurfaceWrapper;
    .locals 0

    new-array p0, p1, [Lorg/chromium/content/common/SurfaceWrapper;

    return-object p0
.end method
