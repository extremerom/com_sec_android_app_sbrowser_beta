.class Lorg/chromium/content/common/InputTransferTokenWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/common/InputTransferTokenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/chromium/content/common/InputTransferTokenWrapper;",
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

    invoke-virtual {p0, p1}, Lorg/chromium/content/common/InputTransferTokenWrapper$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/InputTransferTokenWrapper;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/chromium/content/common/InputTransferTokenWrapper;
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p0, v0, :cond_0

    invoke-static {}, LA2/e;->i()Landroid/os/Parcelable$Creator;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, LA2/e;->l(Ljava/lang/Object;)Landroid/window/InputTransferToken;

    move-result-object p0

    new-instance p1, Lorg/chromium/content/common/InputTransferTokenWrapper;

    invoke-direct {p1, p0}, Lorg/chromium/content/common/InputTransferTokenWrapper;-><init>(Landroid/window/InputTransferToken;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not reached"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/content/common/InputTransferTokenWrapper$1;->newArray(I)[Lorg/chromium/content/common/InputTransferTokenWrapper;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lorg/chromium/content/common/InputTransferTokenWrapper;
    .locals 0

    new-array p0, p1, [Lorg/chromium/content/common/InputTransferTokenWrapper;

    return-object p0
.end method
