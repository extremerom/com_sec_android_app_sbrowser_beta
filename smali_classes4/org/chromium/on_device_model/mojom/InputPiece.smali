.class public final Lorg/chromium/on_device_model/mojom/InputPiece;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/InputPiece$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAudio:Lorg/chromium/on_device_model/mojom/AudioData;

.field private mBitmap:Lorg/chromium/skia/mojom/BitmapMappedFromTrustedProcess;

.field private mText:Ljava/lang/String;

.field private mToken:I

.field private mUnknownType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/on_device_model/mojom/InputPiece;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/on_device_model/mojom/InputPiece;

    invoke-direct {v1}, Lorg/chromium/on_device_model/mojom/InputPiece;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/AudioData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/on_device_model/mojom/AudioData;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mAudio:Lorg/chromium/on_device_model/mojom/AudioData;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result p0

    iput-boolean p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mUnknownType:Z

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/skia/mojom/BitmapMappedFromTrustedProcess;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/skia/mojom/BitmapMappedFromTrustedProcess;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mBitmap:Lorg/chromium/skia/mojom/BitmapMappedFromTrustedProcess;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mText:Ljava/lang/String;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mToken:I

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/Token;->validate(I)V

    iget p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mToken:I

    invoke-static {p0}, Lorg/chromium/on_device_model/mojom/Token;->toKnownValue(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/on_device_model/mojom/InputPiece;->mToken:I

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/on_device_model/mojom/InputPiece;->mAudio:Lorg/chromium/on_device_model/mojom/AudioData;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lorg/chromium/on_device_model/mojom/InputPiece;->mUnknownType:Z

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/on_device_model/mojom/InputPiece;->mBitmap:Lorg/chromium/skia/mojom/BitmapMappedFromTrustedProcess;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/chromium/on_device_model/mojom/InputPiece;->mText:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_4
    iget p0, p0, Lorg/chromium/on_device_model/mojom/InputPiece;->mToken:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    :goto_0
    return-void
.end method
