.class public final Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mOpaque:I

.field private mTransparent:Lorg/chromium/blink/mojom/AdAuctionData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mOpaque:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/Opaque;->validate(I)V

    iget p0, v1, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mOpaque:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/Opaque;->toKnownValue(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mOpaque:I

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/AdAuctionData;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdAuctionData;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mTransparent:Lorg/chromium/blink/mojom/AdAuctionData;

    iput v0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

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
    iget p0, p0, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mOpaque:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/PotentiallyOpaqueAdAuctionData;->mTransparent:Lorg/chromium/blink/mojom/AdAuctionData;

    add-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    :goto_0
    return-void
.end method
