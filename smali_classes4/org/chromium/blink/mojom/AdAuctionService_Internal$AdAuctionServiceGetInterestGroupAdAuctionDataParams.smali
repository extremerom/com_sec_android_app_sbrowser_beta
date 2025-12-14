.class final Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AdAuctionService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdAuctionServiceGetInterestGroupAdAuctionDataParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public config:Lorg/chromium/blink/mojom/AuctionDataConfig;

.field public sellers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/url/internal/mojom/Origin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v3, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v6, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v6, [Lorg/chromium/url/internal/mojom/Origin;

    move v8, v2

    :goto_0
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    const/16 v4, 0x10

    invoke-virtual {v3, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v8, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v8, [Lorg/chromium/url/internal/mojom/Origin;

    move v9, v2

    :goto_1
    iget v10, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_2

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-static {v9, v10, v0, v3, v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_3

    iget-object v3, v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    aget-object v5, v7, v0

    aget-object v9, v8, v0

    invoke-interface {v3, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/AuctionDataConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AuctionDataConfig;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->config:Lorg/chromium/blink/mojom/AuctionDataConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    const/16 v3, 0x10

    const/4 v11, 0x0

    const/16 v12, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v1, v12, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1, v12}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v13

    new-array v14, v13, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v15, v13, [Lorg/chromium/url/internal/mojom/Origin;

    iget-object v4, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v11

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v16, 0x1

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v7, v14, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v6, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, -0x1

    invoke-virtual {v2, v13, v12, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v17

    move v9, v11

    :goto_1
    if-ge v9, v13, :cond_2

    aget-object v7, v14, v9

    mul-int/lit8 v4, v9, 0x8

    const/16 v18, 0x1

    move v5, v12

    move-object/from16 v6, v17

    move v8, v11

    move v11, v10

    move/from16 v10, v18

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    move v10, v11

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move v11, v10

    invoke-virtual {v2, v13, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v13, :cond_3

    aget-object v7, v15, v9

    mul-int/lit8 v4, v9, 0x8

    const/4 v10, 0x1

    move v5, v12

    move-object v6, v2

    move/from16 v8, v16

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->config:Lorg/chromium/blink/mojom/AuctionDataConfig;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
