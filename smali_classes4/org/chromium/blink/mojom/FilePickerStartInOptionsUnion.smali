.class public final Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDirectoryToken:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

.field private mWellKnownDirectory:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    sget-object v0, Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p0, p1, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    iput-object p0, v1, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mDirectoryToken:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mWellKnownDirectory:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/WellKnownDirectory;->validate(I)V

    iget p0, v1, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mWellKnownDirectory:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/WellKnownDirectory;->toKnownValue(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mWellKnownDirectory:I

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mDirectoryToken:Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;

    add-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    sget-object v1, Lorg/chromium/blink/mojom/FileSystemAccessTransferToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, p0, p2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lorg/chromium/blink/mojom/FilePickerStartInOptionsUnion;->mWellKnownDirectory:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    :goto_0
    return-void
.end method
