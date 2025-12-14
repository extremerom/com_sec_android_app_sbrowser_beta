.class public final Lorg/chromium/blink/mojom/InterestGroup;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/InterestGroup$ExecutionMode;,
        Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

.field public adSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/blink/mojom/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field public additionalBidKey:[B

.field public ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

.field public aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public allSellersCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

.field public auctionServerRequestFlags:Lorg/chromium/blink/mojom/AuctionServerRequestFlags;

.field public biddingUrl:Lorg/chromium/url/mojom/Url;

.field public biddingWasmHelperUrl:Lorg/chromium/url/mojom/Url;

.field public enableBiddingSignalsPrioritization:Z

.field public executionMode:I

.field public expiry:Lorg/chromium/mojo_base/mojom/Time;

.field public maxTrustedBiddingSignalsUrlLength:I

.field public name:Ljava/lang/String;

.field public owner:Lorg/chromium/url/internal/mojom/Origin;

.field public priority:D

.field public prioritySignalsOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public priorityVector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public sellerCapabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/blink/mojom/SellerCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public sizeGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public trustedBiddingSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;

.field public trustedBiddingSignalsKeys:[Ljava/lang/String;

.field public trustedBiddingSignalsSlotSizeMode:I

.field public trustedBiddingSignalsUrl:Lorg/chromium/url/mojom/Url;

.field public updateUrl:Lorg/chromium/url/mojom/Url;

.field public userBiddingSignals:Ljava/lang/String;

.field public viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/InterestGroup;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/InterestGroup;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/16 v0, 0xd0

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/blink/mojom/InterestGroup;->priority:D

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/InterestGroup;->executionMode:I

    iput p1, p0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsSlotSizeMode:I

    iput p1, p0, Lorg/chromium/blink/mojom/InterestGroup;->maxTrustedBiddingSignalsUrlLength:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/InterestGroup;
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v2, Lorg/chromium/blink/mojom/InterestGroup;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v3, Lorg/chromium/blink/mojom/InterestGroup;

    invoke-direct {v3, v2}, Lorg/chromium/blink/mojom/InterestGroup;-><init>(I)V

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-static {v5}, Lorg/chromium/mojo_base/mojom/Time;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Time;

    move-result-object v5

    iput-object v5, v3, Lorg/chromium/blink/mojom/InterestGroup;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-static {v6}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v6

    iput-object v6, v3, Lorg/chromium/blink/mojom/InterestGroup;->owner:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v6, 0x18

    invoke-virtual {v1, v6, v4}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/chromium/blink/mojom/InterestGroup;->name:Ljava/lang/String;

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide v7

    iput-wide v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->priority:D

    const/16 v7, 0x28

    invoke-virtual {v1, v7, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v7

    iput-boolean v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->enableBiddingSignalsPrioritization:Z

    const/16 v7, 0x2c

    invoke-virtual {v1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v7

    iput v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->executionMode:I

    invoke-static {v7}, Lorg/chromium/blink/mojom/InterestGroup$ExecutionMode;->validate(I)V

    iget v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->executionMode:I

    invoke-static {v7}, Lorg/chromium/blink/mojom/InterestGroup$ExecutionMode;->toKnownValue(I)I

    move-result v7

    iput v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->executionMode:I

    const/16 v7, 0x30

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    const/4 v9, -0x1

    if-nez v7, :cond_1

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_1b

    :cond_1
    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v7, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v13, v12, [Ljava/lang/String;

    move v14, v4

    :goto_0
    iget v15, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_2

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v10, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v5, v4, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDoubles(III)[D

    move-result-object v7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v3, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    move v10, v4

    :goto_1
    if-ge v10, v12, :cond_3

    iget-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    aget-object v14, v13, v10

    aget-wide v15, v7, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/16 v7, 0x38

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_4

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    goto :goto_5

    :cond_4
    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v7, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v13, v12, [Ljava/lang/String;

    move v14, v4

    :goto_3
    iget v15, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_5

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v10, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v5, v4, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDoubles(III)[D

    move-result-object v7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v3, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    move v10, v4

    :goto_4
    if-ge v10, v12, :cond_6

    iget-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    aget-object v14, v13, v10

    aget-wide v15, v7, v10

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    const/16 v7, 0x40

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_7

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

    goto :goto_9

    :cond_7
    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v7, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v13, v12, [Lorg/chromium/url/internal/mojom/Origin;

    move v14, v4

    :goto_6
    iget v15, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_8

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v10, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v15

    invoke-static {v15}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v7, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/blink/mojom/SellerCapabilities;

    move v14, v4

    :goto_7
    iget v15, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_9

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v15

    invoke-static {v15}, Lorg/chromium/blink/mojom/SellerCapabilities;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SellerCapabilities;

    move-result-object v15

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_9
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

    move v7, v4

    :goto_8
    if-ge v7, v12, :cond_a

    iget-object v10, v3, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

    aget-object v14, v13, v7

    aget-object v15, v11, v7

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    :goto_9
    const/16 v7, 0x48

    invoke-virtual {v1, v7, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/blink/mojom/SellerCapabilities;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SellerCapabilities;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->allSellersCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

    const/16 v7, 0x50

    invoke-virtual {v1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v7

    iput v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsSlotSizeMode:I

    invoke-static {v7}, Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode;->validate(I)V

    iget v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsSlotSizeMode:I

    invoke-static {v7}, Lorg/chromium/blink/mojom/InterestGroup$TrustedBiddingSignalsSlotSizeMode;->toKnownValue(I)I

    move-result v7

    iput v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsSlotSizeMode:I

    const/16 v7, 0x54

    invoke-virtual {v1, v7}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v7

    iput v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->maxTrustedBiddingSignalsUrlLength:I

    const/16 v7, 0x58

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->biddingUrl:Lorg/chromium/url/mojom/Url;

    const/16 v7, 0x60

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->biddingWasmHelperUrl:Lorg/chromium/url/mojom/Url;

    const/16 v7, 0x68

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->updateUrl:Lorg/chromium/url/mojom/Url;

    const/16 v7, 0x70

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsUrl:Lorg/chromium/url/mojom/Url;

    const/16 v7, 0x78

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_b

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsKeys:[Ljava/lang/String;

    goto :goto_b

    :cond_b
    invoke-virtual {v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Ljava/lang/String;

    iput-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsKeys:[Ljava/lang/String;

    move v11, v4

    :goto_a
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_c

    iget-object v12, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsKeys:[Ljava/lang/String;

    const/16 v13, 0x8

    invoke-static {v11, v13, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_c
    :goto_b
    const/16 v7, 0x80

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v7, 0x88

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_d

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;

    goto :goto_d

    :cond_d
    invoke-virtual {v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/url/internal/mojom/Origin;

    iput-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;

    move v11, v4

    :goto_c
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_e

    const/16 v12, 0x8

    invoke-static {v11, v12, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v12

    iget-object v13, v3, Lorg/chromium/blink/mojom/InterestGroup;->viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;

    invoke-static {v12}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v12

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_e
    :goto_d
    const/16 v7, 0x90

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->userBiddingSignals:Ljava/lang/String;

    const/16 v7, 0x98

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_f

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

    goto :goto_f

    :cond_f
    invoke-virtual {v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/blink/mojom/InterestGroupAd;

    iput-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

    move v11, v4

    :goto_e
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_10

    const/16 v12, 0x8

    invoke-static {v11, v12, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v12

    iget-object v13, v3, Lorg/chromium/blink/mojom/InterestGroup;->ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

    invoke-static {v12}, Lorg/chromium/blink/mojom/InterestGroupAd;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/InterestGroupAd;

    move-result-object v12

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    :goto_f
    const/16 v7, 0xa0

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_11

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

    goto :goto_11

    :cond_11
    invoke-virtual {v7, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/blink/mojom/InterestGroupAd;

    iput-object v11, v3, Lorg/chromium/blink/mojom/InterestGroup;->adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

    move v11, v4

    :goto_10
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_12

    const/16 v12, 0x8

    invoke-static {v11, v12, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v12

    iget-object v13, v3, Lorg/chromium/blink/mojom/InterestGroup;->adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

    invoke-static {v12}, Lorg/chromium/blink/mojom/InterestGroupAd;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/InterestGroupAd;

    move-result-object v12

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_12
    :goto_11
    const/16 v7, 0xa8

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_13

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    goto :goto_15

    :cond_13
    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v7, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v13, v12, [Ljava/lang/String;

    move v14, v4

    :goto_12
    iget v15, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_14

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v10, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_14
    invoke-virtual {v7, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    invoke-virtual {v7, v12}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/blink/mojom/AdSize;

    move v14, v4

    :goto_13
    iget v15, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v14, v15, :cond_15

    const/16 v15, 0x8

    invoke-static {v14, v15, v2, v7, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v15

    invoke-static {v15}, Lorg/chromium/blink/mojom/AdSize;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdSize;

    move-result-object v15

    aput-object v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_15
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v3, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    move v7, v4

    :goto_14
    if-ge v7, v12, :cond_16

    iget-object v10, v3, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    aget-object v14, v13, v7

    aget-object v15, v11, v7

    invoke-interface {v10, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_16
    :goto_15
    const/16 v7, 0xb0

    invoke-virtual {v1, v7, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v7

    if-nez v7, :cond_17

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    goto/16 :goto_1a

    :cond_17
    invoke-virtual {v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v7, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v11, [Ljava/lang/String;

    move v13, v4

    :goto_16
    iget v14, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_18

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_16

    :cond_18
    invoke-virtual {v7, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [[Ljava/lang/String;

    move v10, v4

    :goto_17
    iget v13, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v13, :cond_1a

    const/16 v13, 0x8

    invoke-static {v10, v13, v2, v0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v13

    invoke-virtual {v13, v9}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v14

    iget v15, v14, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v15, v15, [Ljava/lang/String;

    aput-object v15, v7, v10

    move v15, v4

    :goto_18
    iget v9, v14, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v15, v9, :cond_19

    aget-object v9, v7, v10

    const/16 v6, 0x8

    invoke-static {v15, v6, v2, v13, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x20

    goto :goto_18

    :cond_19
    add-int/lit8 v10, v10, 0x1

    const/16 v6, 0x20

    const/4 v9, -0x1

    goto :goto_17

    :cond_1a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    move v0, v4

    :goto_19
    if-ge v0, v11, :cond_1b

    iget-object v2, v3, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    aget-object v5, v12, v0

    aget-object v6, v7, v0

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_1b
    :goto_1a
    const/16 v0, 0xb8

    invoke-virtual {v1, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuctionServerRequestFlags;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionServerRequestFlags;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->auctionServerRequestFlags:Lorg/chromium/blink/mojom/AuctionServerRequestFlags;

    const/16 v0, 0xc0

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v8, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->additionalBidKey:[B

    const/16 v0, 0xc8

    invoke-virtual {v1, v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/InterestGroup;->aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v3

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/InterestGroup;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->expiry:Lorg/chromium/mojo_base/mojom/Time;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->owner:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v12, 0x10

    invoke-virtual {v1, v2, v12, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->name:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->priority:D

    const/16 v13, 0x20

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-boolean v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->enableBiddingSignalsPrioritization:Z

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->executionMode:I

    const/16 v3, 0x2c

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    const/16 v3, 0x30

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v9

    new-array v8, v9, [Ljava/lang/String;

    new-array v7, v9, [D

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->priorityVector:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v8, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v7, v4

    add-int/2addr v4, v15

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v9, v10, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v6, v11

    :goto_1
    if-ge v6, v9, :cond_2

    aget-object v17, v8, v6

    mul-int/lit8 v3, v6, 0x8

    const/16 v18, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move/from16 v19, v6

    move-object/from16 v6, v17

    move-object v13, v7

    move v7, v11

    move-object/from16 v17, v8

    move/from16 v8, v19

    move/from16 v19, v9

    move/from16 v9, v18

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    move-object v7, v13

    move-object/from16 v8, v17

    move/from16 v9, v19

    const/16 v13, 0x20

    goto :goto_1

    :cond_2
    move-object v13, v7

    invoke-virtual {v2, v13, v12, v11, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([DIII)V

    :goto_2
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    const/16 v3, 0x38

    if-nez v2, :cond_3

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v13

    new-array v9, v13, [Ljava/lang/String;

    new-array v8, v13, [D

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->prioritySignalsOverrides:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v9, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v8, v4

    add-int/2addr v4, v15

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v13, v10, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v7, v11

    :goto_4
    if-ge v7, v13, :cond_5

    aget-object v6, v9, v7

    mul-int/lit8 v3, v7, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move/from16 v18, v7

    move v7, v11

    move-object v10, v8

    move/from16 v8, v18

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    move-object v8, v10

    move-object/from16 v9, v18

    const/16 v10, 0x8

    goto :goto_4

    :cond_5
    move-object v10, v8

    invoke-virtual {v2, v10, v12, v11, v14}, Lorg/chromium/mojo/bindings/Encoder;->encode([DIII)V

    :goto_5
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

    const/16 v3, 0x40

    if-nez v2, :cond_6

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_9

    :cond_6
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v10

    new-array v13, v10, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v9, v10, [Lorg/chromium/blink/mojom/SellerCapabilities;

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->sellerCapabilities:Ljava/util/Map;

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

    aput-object v6, v13, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/blink/mojom/SellerCapabilities;

    aput-object v5, v9, v4

    add-int/2addr v4, v15

    goto :goto_6

    :cond_7
    const/16 v5, 0x8

    invoke-virtual {v2, v10, v5, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_7
    if-ge v8, v10, :cond_8

    aget-object v6, v13, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v5

    move-object/from16 v5, v16

    move v7, v11

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v8

    move-object/from16 v9, v18

    const/16 v5, 0x8

    goto :goto_7

    :cond_8
    move-object/from16 v18, v9

    invoke-virtual {v2, v10, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_8
    if-ge v3, v10, :cond_9

    aget-object v4, v18, v3

    mul-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->allSellersCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

    const/16 v3, 0x48

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsSlotSizeMode:I

    const/16 v3, 0x50

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->maxTrustedBiddingSignalsUrlLength:I

    const/16 v3, 0x54

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->biddingUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x58

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->biddingWasmHelperUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x60

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->updateUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsUrl:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x70

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsKeys:[Ljava/lang/String;

    const/16 v3, 0x78

    if-nez v2, :cond_a

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_b

    :cond_a
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v11

    :goto_a
    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsKeys:[Ljava/lang/String;

    array-length v4, v3

    if-ge v8, v4, :cond_b

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    const/16 v5, 0x8

    move v4, v5

    move-object v5, v2

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_a

    :cond_b
    :goto_b
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->trustedBiddingSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;

    const/16 v3, 0x88

    if-nez v2, :cond_c

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_d

    :cond_c
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v8, v11

    :goto_c
    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->viewAndClickCountsProviders:[Lorg/chromium/url/internal/mojom/Origin;

    array-length v4, v3

    if-ge v8, v4, :cond_d

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    const/16 v5, 0x8

    move v4, v5

    move-object v5, v2

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v8

    goto :goto_c

    :cond_d
    :goto_d
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->userBiddingSignals:Ljava/lang/String;

    const/16 v3, 0x90

    invoke-virtual {v1, v2, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

    const/16 v3, 0x98

    if-nez v2, :cond_e

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_f

    :cond_e
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_e
    iget-object v4, v0, Lorg/chromium/blink/mojom/InterestGroup;->ads:[Lorg/chromium/blink/mojom/InterestGroupAd;

    array-length v5, v4

    if-ge v3, v5, :cond_f

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

    const/16 v3, 0xa0

    if-nez v2, :cond_10

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_11

    :cond_10
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_10
    iget-object v4, v0, Lorg/chromium/blink/mojom/InterestGroup;->adComponents:[Lorg/chromium/blink/mojom/InterestGroupAd;

    array-length v5, v4

    if-ge v3, v5, :cond_11

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    const/16 v3, 0xa8

    if-nez v2, :cond_12

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_15

    :cond_12
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v10

    new-array v13, v10, [Ljava/lang/String;

    new-array v9, v10, [Lorg/chromium/blink/mojom/AdSize;

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->adSizes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v13, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/chromium/blink/mojom/AdSize;

    aput-object v5, v9, v4

    add-int/2addr v4, v15

    goto :goto_12

    :cond_13
    const/16 v5, 0x8

    invoke-virtual {v2, v10, v5, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_13
    if-ge v8, v10, :cond_14

    aget-object v6, v13, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v5

    move-object/from16 v5, v16

    move v7, v11

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v9, v18

    const/16 v5, 0x8

    goto :goto_13

    :cond_14
    move-object/from16 v18, v9

    invoke-virtual {v2, v10, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_14
    if-ge v3, v10, :cond_15

    aget-object v4, v18, v3

    mul-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_15
    :goto_15
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    const/16 v3, 0xb0

    if-nez v2, :cond_16

    invoke-virtual {v1, v3, v15}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_1b

    :cond_16
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v10

    new-array v13, v10, [Ljava/lang/String;

    new-array v9, v10, [[Ljava/lang/String;

    iget-object v3, v0, Lorg/chromium/blink/mojom/InterestGroup;->sizeGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v13, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aput-object v5, v9, v4

    add-int/2addr v4, v15

    goto :goto_16

    :cond_17
    const/16 v5, 0x8

    invoke-virtual {v2, v10, v5, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_17
    if-ge v8, v10, :cond_18

    aget-object v6, v13, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v5

    move-object/from16 v5, v16

    move v7, v11

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object/from16 v9, v18

    const/16 v5, 0x8

    goto :goto_17

    :cond_18
    move-object/from16 v18, v9

    invoke-virtual {v2, v10, v12, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v12, v11

    :goto_18
    if-ge v12, v10, :cond_1b

    aget-object v3, v18, v12

    if-nez v3, :cond_19

    mul-int/lit8 v3, v12, 0x8

    const/16 v13, 0x8

    add-int/2addr v3, v13

    invoke-virtual {v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1a

    :cond_19
    const/16 v13, 0x8

    array-length v3, v3

    mul-int/lit8 v4, v12, 0x8

    add-int/2addr v4, v13

    invoke-virtual {v2, v3, v4, v14}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_19
    aget-object v3, v18, v12

    array-length v4, v3

    if-ge v8, v4, :cond_1a

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v13

    move-object/from16 v5, v16

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_19

    :cond_1a
    :goto_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    :cond_1b
    :goto_1b
    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->auctionServerRequestFlags:Lorg/chromium/blink/mojom/AuctionServerRequestFlags;

    const/16 v3, 0xb8

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/InterestGroup;->additionalBidKey:[B

    const/16 v3, 0xc0

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v15, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    iget-object v0, v0, Lorg/chromium/blink/mojom/InterestGroup;->aggregationCoordinatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v15}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
