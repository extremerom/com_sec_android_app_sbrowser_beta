.class public final Lorg/chromium/blink/mojom/AuctionAdConfig;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public allBuyerExperimentGroupId:Ljava/lang/Short;

.field public auctionAdConfigNonSharedParams:Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;

.field public decisionLogicUrl:Lorg/chromium/url/mojom/Url;

.field public directFromSellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDirectFromSellerSignals;

.field public expectsAdditionalBids:Z

.field public expectsDirectFromSellerSignalsHeaderAdSlot:Z

.field public perBuyerExperimentGroupIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public seller:Lorg/chromium/url/internal/mojom/Origin;

.field public sellerExperimentGroupId:Ljava/lang/Short;

.field public sendCreativeScanningMetadata:Ljava/lang/Boolean;

.field public serverResponse:Lorg/chromium/blink/mojom/AuctionAdServerResponseConfig;

.field public trustedScoringSignalsUrl:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsDirectFromSellerSignalsHeaderAdSlot:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsAdditionalBids:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionAdConfig;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/AuctionAdConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/AuctionAdConfig;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/AuctionAdConfig;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->seller:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/blink/mojom/AuctionAdServerResponseConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionAdServerResponseConfig;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->serverResponse:Lorg/chromium/blink/mojom/AuctionAdServerResponseConfig;

    const/16 v6, 0x18

    invoke-virtual {p0, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->decisionLogicUrl:Lorg/chromium/url/mojom/Url;

    const/16 v6, 0x20

    invoke-virtual {p0, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->trustedScoringSignalsUrl:Lorg/chromium/url/mojom/Url;

    const/16 v6, 0x28

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->auctionAdConfigNonSharedParams:Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;

    const/16 v6, 0x30

    invoke-static {p0, v6}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDirectFromSellerSignals;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDirectFromSellerSignals;

    move-result-object v6

    iput-object v6, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->directFromSellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDirectFromSellerSignals;

    const/16 v6, 0x40

    invoke-virtual {p0, v6, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsDirectFromSellerSignalsHeaderAdSlot:Z

    invoke-virtual {p0, v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/Short;

    const/16 v8, 0x42

    invoke-virtual {p0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Short;-><init>(S)V

    iput-object v7, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->sellerExperimentGroupId:Ljava/lang/Short;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->sellerExperimentGroupId:Ljava/lang/Short;

    :goto_0
    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/Short;

    const/16 v8, 0x44

    invoke-virtual {p0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Short;-><init>(S)V

    iput-object v7, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->allBuyerExperimentGroupId:Ljava/lang/Short;

    goto :goto_1

    :cond_2
    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->allBuyerExperimentGroupId:Ljava/lang/Short;

    :goto_1
    const/4 v7, 0x3

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsAdditionalBids:Z

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v0, Ljava/lang/Boolean;

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->sendCreativeScanningMetadata:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->sendCreativeScanningMetadata:Ljava/lang/Boolean;

    :goto_2
    const/16 v0, 0x48

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Lorg/chromium/url/internal/mojom/Origin;

    move v10, v3

    :goto_3
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_4

    const/16 v11, 0x8

    invoke-static {v10, v11, v1, v6, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v4, v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readShorts(III)[S

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->perBuyerExperimentGroupIds:Ljava/util/Map;

    :goto_4
    if-ge v3, v8, :cond_5

    iget-object v1, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->perBuyerExperimentGroupIds:Ljava/util/Map;

    aget-object v4, v9, v3

    aget-short v6, v0, v3

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x50

    invoke-virtual {p0, v0, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v2, Lorg/chromium/blink/mojom/AuctionAdConfig;->aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/AuctionAdConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->seller:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->serverResponse:Lorg/chromium/blink/mojom/AuctionAdServerResponseConfig;

    const/16 v12, 0x10

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v12, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->decisionLogicUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->trustedScoringSignalsUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->auctionAdConfigNonSharedParams:Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->directFromSellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDirectFromSellerSignals;

    const/16 v3, 0x30

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsDirectFromSellerSignalsHeaderAdSlot:Z

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->sellerExperimentGroupId:Ljava/lang/Short;

    if-eqz v2, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v11

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    invoke-virtual {v1, v4, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v4, 0x42

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->allBuyerExperimentGroupId:Ljava/lang/Short;

    if-eqz v2, :cond_2

    move v4, v13

    goto :goto_2

    :cond_2
    move v4, v11

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v11

    :goto_3
    const/4 v5, 0x2

    invoke-virtual {v1, v4, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v4, 0x44

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->expectsAdditionalBids:Z

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->sendCreativeScanningMetadata:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    move v4, v13

    goto :goto_4

    :cond_4
    move v4, v11

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v11

    :goto_5
    const/4 v5, 0x4

    invoke-virtual {v1, v4, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->perBuyerExperimentGroupIds:Ljava/util/Map;

    const/16 v3, 0x48

    if-nez v2, :cond_6

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->perBuyerExperimentGroupIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v9, v14, [S

    iget-object v3, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->perBuyerExperimentGroupIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v6, v15, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    aput-short v5, v9, v4

    add-int/2addr v4, v13

    goto :goto_6

    :cond_7
    const/4 v8, -0x1

    invoke-virtual {v2, v14, v10, v8}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v7, v11

    :goto_7
    if-ge v7, v14, :cond_8

    aget-object v6, v15, v7

    mul-int/lit8 v3, v7, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move/from16 v18, v7

    move v7, v11

    move v10, v8

    move/from16 v8, v18

    move-object v13, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v7

    move v8, v10

    move-object v9, v13

    const/16 v10, 0x8

    const/4 v13, 0x1

    goto :goto_7

    :cond_8
    move v10, v8

    move-object v13, v9

    invoke-virtual {v2, v13, v12, v11, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode([SIII)V

    :goto_8
    iget-object v0, v0, Lorg/chromium/blink/mojom/AuctionAdConfig;->aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v2, 0x50

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
