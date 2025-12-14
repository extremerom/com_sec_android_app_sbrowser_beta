.class public final Lorg/chromium/blink/mojom/AuctionDataConfig;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public perBuyerConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public requestSize:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionDataConfig;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AuctionDataConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AuctionDataConfig;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AuctionDataConfig;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Lorg/chromium/url/internal/mojom/Origin;

    move v9, v3

    :goto_0
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_1

    const/16 v10, 0x8

    invoke-static {v9, v10, v1, v5, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    const/16 v5, 0x10

    invoke-virtual {v4, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v9, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;

    move v10, v3

    :goto_1
    iget v11, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_2

    const/16 v11, 0x8

    invoke-static {v10, v11, v1, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lorg/chromium/blink/mojom/AuctionDataConfig;->perBuyerConfigs:Ljava/util/Map;

    move v1, v3

    :goto_2
    if-ge v1, v7, :cond_3

    iget-object v4, v2, Lorg/chromium/blink/mojom/AuctionDataConfig;->perBuyerConfigs:Ljava/util/Map;

    aget-object v6, v8, v1

    aget-object v10, v9, v1

    invoke-interface {v4, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v5, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionDataConfig;->requestSize:Ljava/lang/Integer;

    goto :goto_3

    :cond_4
    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionDataConfig;->requestSize:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/AuctionDataConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->perBuyerConfigs:Ljava/util/Map;

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v12, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->perBuyerConfigs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v11, v14, [Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->perBuyerConfigs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v15, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/blink/mojom/AuctionDataBuyerConfig;

    aput-object v7, v11, v6

    add-int/2addr v6, v4

    goto :goto_0

    :cond_1
    const/4 v10, -0x1

    invoke-virtual {v2, v14, v12, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v13

    :goto_1
    if-ge v9, v14, :cond_2

    aget-object v8, v15, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v13

    move v4, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    move v10, v4

    move-object/from16 v11, v18

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v10

    move-object/from16 v18, v11

    invoke-virtual {v2, v14, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v13

    :goto_2
    if-ge v4, v14, :cond_3

    aget-object v5, v18, v4

    mul-int/lit8 v6, v4, 0x8

    add-int/2addr v6, v12

    invoke-virtual {v2, v5, v6, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, v0, Lorg/chromium/blink/mojom/AuctionDataConfig;->requestSize:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move v4, v13

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    move v0, v13

    :goto_5
    invoke-virtual {v1, v4, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
