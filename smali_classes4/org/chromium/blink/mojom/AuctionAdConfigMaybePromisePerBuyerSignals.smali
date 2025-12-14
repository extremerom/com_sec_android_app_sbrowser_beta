.class public final Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mPromise:I

.field private mValue:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;
    .locals 9

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    if-nez p0, :cond_2

    iput-object v2, v1, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v2, [Lorg/chromium/url/internal/mojom/Origin;

    move v7, v4

    :goto_0
    iget v8, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_3

    mul-int/lit8 v8, v7, 0x8

    add-int/2addr v8, v3

    invoke-virtual {p1, v8, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x10

    invoke-virtual {p0, p1, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Ljava/lang/String;

    move v7, v4

    :goto_1
    iget v8, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_4

    const/16 v8, 0x8

    invoke-static {v7, v8, v3, p0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v1, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    :goto_2
    if-ge v4, v2, :cond_5

    iget-object p0, v1, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    aget-object p1, v6, v4

    aget-object v3, v0, v4

    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iput v5, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_4

    :cond_6
    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mPromise:I

    iput v4, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_4
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 13

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v1, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v2, p2, 0x4

    invoke-virtual {p1, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v1, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/16 v9, 0x8

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    if-nez v1, :cond_1

    add-int/2addr p2, v9

    invoke-virtual {p1, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_1
    add-int/2addr p2, v9

    invoke-virtual {p1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object p2, p0, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    new-array v1, p2, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v10, p2, [Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mValue:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v11, 0x0

    move v3, v11

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v5, v1, v3

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v10, v3

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    invoke-virtual {p1, p2, v9, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v12

    move v7, v11

    :goto_1
    if-ge v7, p2, :cond_3

    aget-object v5, v1, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v12

    move v6, v11

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v7

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p2, v0, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move v7, v11

    :goto_2
    if-ge v7, p2, :cond_5

    aget-object v5, v10, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, p0

    move v6, v11

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_2

    :cond_4
    iget p0, p0, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->mPromise:I

    add-int/2addr p2, v9

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    :cond_5
    :goto_3
    return-void
.end method
