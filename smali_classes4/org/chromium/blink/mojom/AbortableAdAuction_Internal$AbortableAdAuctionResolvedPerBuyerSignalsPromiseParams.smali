.class final Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

.field public perBuyerSignals:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;-><init>(I)V

    const/16 v1, 0x8

    invoke-static {p0, v1}, Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    move-result-object v3

    iput-object v3, v2, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    if-nez v3, :cond_1

    iput-object v0, v2, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v6, [Lorg/chromium/url/internal/mojom/Origin;

    move v8, v0

    :goto_0
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_2

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v4, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    move v8, v0

    :goto_1
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v1, v3, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    :goto_2
    if-ge v0, v6, :cond_4

    iget-object v1, v2, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    aget-object v3, v7, v0

    aget-object v4, v5, v0

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 13

    sget-object v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->auction:Lorg/chromium/blink/mojom/AuctionAdConfigAuctionId;

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    const/16 v1, 0x18

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p1, v1}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v10, v0, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v11, v0, [Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;->perBuyerSignals:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v9

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v4, v10, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v11, v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {p1, v0, v8, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v12

    move v6, v9

    :goto_1
    if-ge v6, v0, :cond_2

    aget-object v4, v10, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v12

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v6

    goto :goto_1

    :cond_2
    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move v6, v9

    :goto_2
    if-ge v6, v0, :cond_3

    aget-object v4, v11, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, p0

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
