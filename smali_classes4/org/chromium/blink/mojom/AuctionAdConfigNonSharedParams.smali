.class public final Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$BuyerReportType;,
        Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$RealTimeReportingType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allBuyersGroupLimit:S

.field public allBuyersMultiBidLimit:S

.field public allBuyersPrioritySignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

.field public auctionNonce:Lorg/chromium/mojo_base/mojom/Uuid;

.field public auctionReportBuyerDebugModeConfig:Lorg/chromium/blink/mojom/AuctionReportBuyerDebugModeConfig;

.field public auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

.field public auctionReportBuyers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;",
            ">;"
        }
    .end annotation
.end field

.field public auctionSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

.field public buyerCumulativeTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

.field public buyerCurrencies:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerCurrencies;

.field public buyerTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

.field public componentAuctions:[Lorg/chromium/blink/mojom/AuctionAdConfig;

.field public deprecatedRenderUrlReplacements:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDeprecatedRenderUrlReplacements;

.field public interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

.field public maxTrustedScoringSignalsUrlLength:I

.field public perBuyerGroupLimits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public perBuyerMultiBidLimits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public perBuyerPrioritySignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field public perBuyerRealTimeReportingTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public perBuyerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;

.field public perBuyerTkvSignals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reportingTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public requestedSize:Lorg/chromium/blink/mojom/AdSize;

.field public requiredSellerCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

.field public sellerCurrency:Lorg/chromium/blink/mojom/AdCurrency;

.field public sellerRealTimeReportingType:Ljava/lang/Integer;

.field public sellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

.field public sellerTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

.field public sellerTkvSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

.field public trustedScoringSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x130

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x130

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, -0x1

    iput-short p1, p0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersGroupLimit:S

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->maxTrustedScoringSignalsUrlLength:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v2, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    iget v2, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;

    invoke-direct {v3, v2}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;-><init>(I)V

    const/16 v2, 0x8

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_20

    :cond_1
    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v9, [Lorg/chromium/url/internal/mojom/Origin;

    iput-object v9, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

    move v9, v7

    :goto_0
    iget v10, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    invoke-static {v9, v10, v2, v5, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    iget-object v11, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

    invoke-static {v10}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v10

    aput-object v10, v11, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v5, 0x10

    invoke-static {v1, v5}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v8, 0x20

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v8, 0x30

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerTkvSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v8, 0x40

    invoke-virtual {v1, v8, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v8, 0x48

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;

    const/16 v8, 0x58

    invoke-virtual {v1, v8, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v8, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v11, [Lorg/chromium/url/internal/mojom/Origin;

    move v13, v7

    :goto_2
    iget v14, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_3

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v9, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v14

    invoke-static {v14}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v8, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    iget v10, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v10, v10, [Ljava/lang/String;

    move v13, v7

    :goto_3
    iget v14, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_4

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v8, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerTkvSignals:Ljava/util/Map;

    move v8, v7

    :goto_4
    if-ge v8, v11, :cond_5

    iget-object v9, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerTkvSignals:Ljava/util/Map;

    aget-object v13, v12, v8

    aget-object v14, v10, v8

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    const/16 v8, 0x60

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    const/16 v8, 0x70

    invoke-virtual {v1, v8, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->reportingTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v8, 0x78

    invoke-virtual {v1, v8, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/blink/mojom/AdCurrency;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdCurrency;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerCurrency:Lorg/chromium/blink/mojom/AdCurrency;

    const/16 v8, 0x80

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerCurrencies;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerCurrencies;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerCurrencies:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerCurrencies;

    const/16 v8, 0x90

    invoke-static {v1, v8}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    move-result-object v8

    iput-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerCumulativeTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    const/16 v8, 0xa0

    invoke-virtual {v1, v8, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v8, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v11, [Lorg/chromium/url/internal/mojom/Origin;

    move v13, v7

    :goto_5
    iget v14, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_6

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v9, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v14

    invoke-static {v14}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v8, v5, v7, v11}, Lorg/chromium/mojo/bindings/Decoder;->readShorts(III)[S

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerGroupLimits:Ljava/util/Map;

    move v9, v7

    :goto_6
    if-ge v9, v11, :cond_7

    iget-object v10, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerGroupLimits:Ljava/util/Map;

    aget-object v13, v12, v9

    aget-short v14, v8, v9

    invoke-static {v14}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v14

    invoke-interface {v10, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_7
    const/16 v8, 0xa8

    invoke-virtual {v1, v8, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    if-nez v8, :cond_8

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v8, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v11, [Lorg/chromium/url/internal/mojom/Origin;

    move v13, v7

    :goto_7
    iget v14, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_9

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v9, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v14

    invoke-static {v14}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v14

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v8, v5, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v9

    iget v10, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v10, v10, [Ljava/util/Map;

    move v13, v7

    :goto_8
    iget v14, v9, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v13, v14, :cond_c

    const/16 v14, 0x8

    invoke-static {v13, v14, v2, v8, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v14

    invoke-virtual {v14}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v14, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v15

    invoke-virtual {v15, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v6, [Ljava/lang/String;

    move v5, v7

    :goto_9
    iget v2, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v2, :cond_a

    const/16 v2, 0x8

    move-object/from16 v16, v0

    const/16 v0, 0x8

    invoke-static {v5, v2, v0, v15, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_9

    :cond_a
    const/16 v0, 0x10

    invoke-virtual {v14, v0, v7, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDoubles(III)[D

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    aput-object v0, v10, v13

    move v0, v7

    :goto_a
    if-ge v0, v6, :cond_b

    aget-object v5, v10, v13

    aget-object v14, v4, v0

    aget-wide v16, v2, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/4 v0, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/16 v5, 0x10

    const/4 v6, -0x1

    goto :goto_8

    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    move v0, v7

    :goto_b
    if-ge v0, v11, :cond_d

    iget-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    aget-object v4, v12, v0

    aget-object v5, v10, v0

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_d
    :goto_c
    const/16 v0, 0xb0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v2, 0x0

    iput-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    goto :goto_f

    :cond_e
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v2, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v2, [Ljava/lang/String;

    move v8, v7

    :goto_d
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_f

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static {v8, v9, v10, v4, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_f
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDoubles(III)[D

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    move v4, v7

    :goto_e
    if-ge v4, v2, :cond_10

    iget-object v5, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    aget-object v8, v6, v4

    aget-wide v9, v0, v4

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_10
    :goto_f
    const/16 v0, 0xb8

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v0

    iput-short v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersGroupLimit:S

    const/16 v0, 0xba

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readShort(I)S

    move-result v0

    iput-short v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersMultiBidLimit:S

    const/16 v0, 0xbc

    invoke-virtual {v1, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/Integer;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerRealTimeReportingType:Ljava/lang/Integer;

    const/4 v0, 0x0

    goto :goto_10

    :cond_11
    const/4 v0, 0x0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerRealTimeReportingType:Ljava/lang/Integer;

    :goto_10
    const/16 v2, 0xc0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    if-nez v2, :cond_12

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

    goto :goto_12

    :cond_12
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v0, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/mojo_base/mojom/Uint128;

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

    move v0, v7

    :goto_11
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v0, v5, :cond_13

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-static {v0, v5, v6, v2, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

    invoke-static {v5}, Lorg/chromium/mojo_base/mojom/Uint128;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Uint128;

    move-result-object v5

    aput-object v5, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_13
    :goto_12
    const/16 v0, 0xc8

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v2, 0x0

    iput-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    goto :goto_16

    :cond_14
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/16 v2, 0x8

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v7, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v5

    move v2, v7

    :goto_13
    array-length v4, v5

    if-ge v2, v4, :cond_15

    aget v4, v5, v2

    invoke-static {v4}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$BuyerReportType;->validate(I)V

    aget v4, v5, v2

    invoke-static {v4}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$BuyerReportType;->toKnownValue(I)I

    move-result v4

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_15
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    array-length v2, v5

    invoke-virtual {v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    iget v4, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v4, [Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;

    move v6, v7

    :goto_14
    iget v8, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v8, :cond_16

    const/16 v8, 0x8

    const/16 v9, 0x8

    invoke-static {v6, v8, v9, v0, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    invoke-static {v8}, Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;

    move-result-object v8

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    move v0, v7

    :goto_15
    array-length v2, v5

    if-ge v0, v2, :cond_17

    iget-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    aget v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget-object v8, v4, v0

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_17
    :goto_16
    const/16 v0, 0xd0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuctionReportBuyerDebugModeConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionReportBuyerDebugModeConfig;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerDebugModeConfig:Lorg/chromium/blink/mojom/AuctionReportBuyerDebugModeConfig;

    const/16 v0, 0xd8

    invoke-virtual {v1, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SellerCapabilities;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SellerCapabilities;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->requiredSellerCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

    const/16 v0, 0xe0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AdSize;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdSize;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->requestedSize:Lorg/chromium/blink/mojom/AdSize;

    const/16 v0, 0xe8

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v2, 0x0

    iput-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

    goto :goto_18

    :cond_18
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v2, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v2, v2, [Lorg/chromium/blink/mojom/AdSize;

    iput-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

    move v2, v7

    :goto_17
    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v5, :cond_19

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-static {v2, v5, v6, v0, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

    invoke-static {v5}, Lorg/chromium/blink/mojom/AdSize;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdSize;

    move-result-object v5

    aput-object v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_19
    :goto_18
    const/16 v0, 0xf0

    invoke-virtual {v1, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v2, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v2, [Lorg/chromium/url/internal/mojom/Origin;

    move v8, v7

    :goto_19
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1a

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static {v8, v9, v10, v4, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_1a
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7, v2}, Lorg/chromium/mojo/bindings/Decoder;->readShorts(III)[S

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerMultiBidLimits:Ljava/util/Map;

    move v4, v7

    :goto_1a
    if-ge v4, v2, :cond_1b

    iget-object v5, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerMultiBidLimits:Ljava/util/Map;

    aget-object v8, v6, v4

    aget-short v9, v0, v4

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_1b
    const/16 v0, 0xf8

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Uuid;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Uuid;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionNonce:Lorg/chromium/mojo_base/mojom/Uuid;

    const/16 v0, 0x104

    invoke-virtual {v1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->maxTrustedScoringSignalsUrlLength:I

    const/16 v0, 0x108

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v2, 0x0

    iput-object v2, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    goto :goto_1e

    :cond_1c
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v2, -0x1

    invoke-virtual {v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v2, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v2, [Lorg/chromium/url/internal/mojom/Origin;

    move v8, v7

    :goto_1b
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1d

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static {v8, v9, v10, v4, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v9

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_1d
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    move v4, v7

    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_1e

    aget v5, v0, v4

    invoke-static {v5}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$RealTimeReportingType;->validate(I)V

    aget v5, v0, v4

    invoke-static {v5}, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams$RealTimeReportingType;->toKnownValue(I)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_1e
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    move v4, v7

    :goto_1d
    if-ge v4, v2, :cond_1f

    iget-object v5, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    aget-object v8, v6, v4

    aget v9, v0, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_1f
    :goto_1e
    const/16 v0, 0x110

    invoke-virtual {v1, v0, v7}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v2

    iget v4, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v4, v4, [Lorg/chromium/blink/mojom/AuctionAdConfig;

    iput-object v4, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->componentAuctions:[Lorg/chromium/blink/mojom/AuctionAdConfig;

    move v4, v7

    :goto_1f
    iget v5, v2, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v4, v5, :cond_20

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-static {v4, v5, v6, v0, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    iget-object v8, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->componentAuctions:[Lorg/chromium/blink/mojom/AuctionAdConfig;

    invoke-static {v5}, Lorg/chromium/blink/mojom/AuctionAdConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionAdConfig;

    move-result-object v5

    aput-object v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_20
    const/16 v0, 0x118

    invoke-static {v1, v0}, Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDeprecatedRenderUrlReplacements;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDeprecatedRenderUrlReplacements;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->deprecatedRenderUrlReplacements:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDeprecatedRenderUrlReplacements;

    const/16 v0, 0x128

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v3, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->trustedScoringSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v3

    :goto_20
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v12, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v13

    :goto_0
    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->interestGroupBuyers:[Lorg/chromium/url/internal/mojom/Origin;

    array-length v6, v5

    if-ge v10, v6, :cond_1

    aget-object v8, v5, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v10

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v14, 0x10

    invoke-virtual {v1, v2, v14, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v5, 0x20

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerTkvSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseJson;

    const/16 v5, 0x30

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v5, 0x40

    invoke-virtual {v1, v2, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerSignals:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromisePerBuyerSignals;

    const/16 v5, 0x48

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerTkvSignals:Ljava/util/Map;

    const/16 v5, 0x58

    if-nez v2, :cond_2

    invoke-virtual {v1, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerTkvSignals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v10, v15, [Ljava/lang/String;

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerTkvSignals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v10, v6

    add-int/2addr v6, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v15, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v13

    :goto_3
    if-ge v9, v15, :cond_4

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v13

    move-object/from16 v19, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    move-object/from16 v11, v18

    move-object/from16 v10, v19

    goto :goto_3

    :cond_4
    move-object/from16 v19, v10

    invoke-virtual {v2, v15, v14, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v10, v13

    :goto_4
    if-ge v10, v15, :cond_5

    aget-object v8, v19, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v12

    move-object v7, v2

    move v9, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v10

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    const/16 v5, 0x60

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->reportingTimeout:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v5, 0x70

    invoke-virtual {v1, v2, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerCurrency:Lorg/chromium/blink/mojom/AdCurrency;

    const/16 v5, 0x78

    invoke-virtual {v1, v2, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerCurrencies:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerCurrencies;

    const/16 v5, 0x80

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->buyerCumulativeTimeouts:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseBuyerTimeouts;

    const/16 v5, 0x90

    invoke-virtual {v1, v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerGroupLimits:Ljava/util/Map;

    const/16 v5, 0xa0

    if-nez v2, :cond_6

    invoke-virtual {v1, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerGroupLimits:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v15

    new-array v11, v15, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v10, v15, [S

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerGroupLimits:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v11, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    aput-short v7, v10, v6

    add-int/2addr v6, v4

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v15, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v13

    :goto_7
    if-ge v9, v15, :cond_8

    aget-object v8, v11, v9

    mul-int/lit8 v5, v9, 0x8

    const/16 v17, 0x1

    move v6, v12

    move-object/from16 v7, v16

    move/from16 v18, v9

    move v9, v13

    move-object v12, v10

    move/from16 v10, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    move-object v10, v12

    move-object/from16 v11, v18

    const/16 v12, 0x8

    goto :goto_7

    :cond_8
    move-object v12, v10

    invoke-virtual {v2, v12, v14, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([SIII)V

    :goto_8
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    const/16 v5, 0xa8

    if-nez v2, :cond_9

    invoke-virtual {v1, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_f

    :cond_9
    invoke-virtual {v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v12

    new-array v15, v12, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v11, v12, [Ljava/util/Map;

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerPrioritySignals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v15, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    aput-object v7, v11, v6

    add-int/2addr v6, v4

    goto :goto_9

    :cond_a
    const/16 v7, 0x8

    invoke-virtual {v2, v12, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v10, v13

    :goto_a
    if-ge v10, v12, :cond_b

    aget-object v8, v15, v10

    mul-int/lit8 v5, v10, 0x8

    const/16 v17, 0x1

    move v6, v7

    move-object/from16 v7, v16

    move v9, v13

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v10

    move-object/from16 v11, v18

    const/16 v7, 0x8

    goto :goto_a

    :cond_b
    move-object/from16 v18, v11

    invoke-virtual {v2, v12, v14, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v15, v13

    :goto_b
    if-ge v15, v12, :cond_f

    aget-object v5, v18, v15

    if-nez v5, :cond_c

    mul-int/lit8 v5, v15, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    move-object/from16 v20, v2

    goto/16 :goto_e

    :cond_c
    const/16 v6, 0x8

    mul-int/lit8 v5, v15, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v11

    aget-object v5, v18, v15

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    new-array v8, v10, [D

    aget-object v5, v18, v15

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    aput-object v16, v9, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    aput-wide v16, v8, v6

    add-int/2addr v6, v4

    goto :goto_c

    :cond_d
    const/16 v7, 0x8

    invoke-virtual {v11, v10, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v6, v13

    :goto_d
    if-ge v6, v10, :cond_e

    aget-object v17, v9, v6

    mul-int/lit8 v5, v6, 0x8

    const/16 v19, 0x1

    move/from16 v20, v6

    move v6, v7

    move-object/from16 v7, v16

    move-object v4, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move v9, v13

    move/from16 v21, v10

    move/from16 v10, v20

    move-object/from16 v20, v2

    move-object v2, v11

    move/from16 v11, v19

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    move-object v11, v2

    move-object v8, v4

    move-object/from16 v9, v17

    move-object/from16 v2, v20

    move/from16 v10, v21

    const/4 v4, 0x1

    const/16 v7, 0x8

    goto :goto_d

    :cond_e
    move-object/from16 v20, v2

    move-object v4, v8

    move-object v2, v11

    invoke-virtual {v2, v4, v14, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([DIII)V

    :goto_e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v20

    const/4 v4, 0x1

    goto/16 :goto_b

    :cond_f
    :goto_f
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    const/16 v4, 0xb0

    if-nez v2, :cond_10

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_12

    :cond_10
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Ljava/lang/String;

    new-array v15, v4, [D

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersPrioritySignals:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v12, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, v15, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_10

    :cond_11
    const/16 v7, 0x8

    invoke-virtual {v2, v4, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v10, v13

    :goto_11
    if-ge v10, v4, :cond_12

    aget-object v8, v12, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v7

    move-object/from16 v7, v16

    move v9, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v10

    const/16 v7, 0x8

    goto :goto_11

    :cond_12
    invoke-virtual {v2, v15, v14, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([DIII)V

    :goto_12
    iget-short v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersGroupLimit:S

    const/16 v4, 0xb8

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-short v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allBuyersMultiBidLimit:S

    const/16 v4, 0xba

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(SI)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->sellerRealTimeReportingType:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    const/4 v4, 0x1

    goto :goto_13

    :cond_13
    move v4, v13

    :goto_13
    if-eqz v4, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_14

    :cond_14
    move v2, v13

    :goto_14
    const/16 v5, 0xbc

    invoke-virtual {v1, v4, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 v4, 0x100

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

    const/16 v4, 0xc0

    if-nez v2, :cond_15

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_16

    :cond_15
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v13

    :goto_15
    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerKeys:[Lorg/chromium/mojo_base/mojom/Uint128;

    array-length v6, v5

    if-ge v4, v6, :cond_16

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    const/16 v7, 0x8

    add-int/2addr v6, v7

    invoke-virtual {v2, v5, v6, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_16
    :goto_16
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    const/16 v4, 0xc8

    if-nez v2, :cond_17

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_19

    :cond_17
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v5, v4, [I

    new-array v6, v4, [Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;

    iget-object v7, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v13

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v5, v8

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/chromium/blink/mojom/AuctionReportBuyersConfig;

    aput-object v9, v6, v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_17

    :cond_18
    const/16 v8, 0x8

    invoke-virtual {v2, v5, v8, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v2, v4, v14, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v5, v13

    :goto_18
    if-ge v5, v4, :cond_19

    aget-object v7, v6, v5

    mul-int/lit8 v9, v5, 0x8

    add-int/2addr v9, v8

    invoke-virtual {v2, v7, v9, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v5, v5, 0x1

    const/16 v8, 0x8

    goto :goto_18

    :cond_19
    :goto_19
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionReportBuyerDebugModeConfig:Lorg/chromium/blink/mojom/AuctionReportBuyerDebugModeConfig;

    const/16 v4, 0xd0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->requiredSellerCapabilities:Lorg/chromium/blink/mojom/SellerCapabilities;

    const/16 v4, 0xd8

    invoke-virtual {v1, v2, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->requestedSize:Lorg/chromium/blink/mojom/AdSize;

    const/16 v4, 0xe0

    invoke-virtual {v1, v2, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

    const/16 v4, 0xe8

    if-nez v2, :cond_1a

    invoke-virtual {v1, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1b

    :cond_1a
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v4, v13

    :goto_1a
    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->allSlotsRequestedSizes:[Lorg/chromium/blink/mojom/AdSize;

    array-length v6, v5

    if-ge v4, v6, :cond_1b

    aget-object v5, v5, v4

    mul-int/lit8 v6, v4, 0x8

    const/16 v7, 0x8

    add-int/2addr v6, v7

    invoke-virtual {v2, v5, v6, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_1b
    :goto_1b
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerMultiBidLimits:Ljava/util/Map;

    const/16 v4, 0xf0

    if-nez v2, :cond_1c

    invoke-virtual {v1, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1e

    :cond_1c
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerMultiBidLimits:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v15, v4, [S

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerMultiBidLimits:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v12, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v7}, Ljava/lang/Short;->shortValue()S

    move-result v7

    aput-short v7, v15, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_1c

    :cond_1d
    const/16 v7, 0x8

    invoke-virtual {v2, v4, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v10, v13

    :goto_1d
    if-ge v10, v4, :cond_1e

    aget-object v8, v12, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v7

    move-object/from16 v7, v16

    move v9, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v10

    const/16 v7, 0x8

    goto :goto_1d

    :cond_1e
    invoke-virtual {v2, v15, v14, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([SIII)V

    :goto_1e
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->auctionNonce:Lorg/chromium/mojo_base/mojom/Uuid;

    const/16 v4, 0xf8

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->maxTrustedScoringSignalsUrlLength:I

    const/16 v4, 0x104

    invoke-virtual {v1, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    const/16 v4, 0x108

    if-nez v2, :cond_1f

    invoke-virtual {v1, v4, v5}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_21

    :cond_1f
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v12, v4, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v15, v4, [I

    iget-object v5, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->perBuyerRealTimeReportingTypes:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v13

    :goto_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v8, v12, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v15, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_1f

    :cond_20
    const/16 v7, 0x8

    invoke-virtual {v2, v4, v7, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v10, v13

    :goto_20
    if-ge v10, v4, :cond_21

    aget-object v8, v12, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v7

    move-object/from16 v7, v16

    move v9, v13

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v10

    const/16 v7, 0x8

    goto :goto_20

    :cond_21
    invoke-virtual {v2, v15, v14, v13, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    :goto_21
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->componentAuctions:[Lorg/chromium/blink/mojom/AuctionAdConfig;

    const/16 v4, 0x110

    if-nez v2, :cond_22

    invoke-virtual {v1, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_23

    :cond_22
    array-length v2, v2

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v13

    :goto_22
    iget-object v4, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->componentAuctions:[Lorg/chromium/blink/mojom/AuctionAdConfig;

    array-length v5, v4

    if-ge v3, v5, :cond_23

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    const/16 v6, 0x8

    add-int/2addr v5, v6

    invoke-virtual {v2, v4, v5, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_23
    :goto_23
    iget-object v2, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->deprecatedRenderUrlReplacements:Lorg/chromium/blink/mojom/AuctionAdConfigMaybePromiseDeprecatedRenderUrlReplacements;

    const/16 v3, 0x118

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, v0, Lorg/chromium/blink/mojom/AuctionAdConfigNonSharedParams;->trustedScoringSignalsCoordinator:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v2, 0x128

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
