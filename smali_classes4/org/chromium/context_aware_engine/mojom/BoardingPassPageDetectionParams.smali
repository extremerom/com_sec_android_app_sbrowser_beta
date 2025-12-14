.class public final Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public boardingPassImageQrSubstrings:[Ljava/lang/String;

.field public flightRegex:Ljava/lang/String;

.field public flightRegexWeight:D

.field public relatedWordsWeightsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public seatRegex:Ljava/lang/String;

.field public seatRegexWeight:D

.field public threshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->seatRegex:Ljava/lang/String;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->seatRegexWeight:D

    const/16 v12, 0x10

    invoke-virtual {v1, v2, v3, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->flightRegex:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-virtual {v1, v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-wide v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->flightRegexWeight:D

    const/16 v4, 0x20

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->relatedWordsWeightsMap:Ljava/util/Map;

    const/16 v3, 0x28

    const/4 v13, -0x1

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->relatedWordsWeightsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/String;

    new-array v9, v14, [D

    iget-object v3, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->relatedWordsWeightsMap:Ljava/util/Map;

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

    aput-object v6, v15, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v14, v10, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_1
    if-ge v8, v14, :cond_2

    aget-object v6, v15, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move v7, v11

    move-object v10, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    move-object v9, v10

    const/16 v10, 0x8

    goto :goto_1

    :cond_2
    move-object v10, v9

    invoke-virtual {v2, v10, v12, v11, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode([DIII)V

    :goto_2
    iget-wide v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->threshold:D

    const/16 v4, 0x30

    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    iget-object v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->boardingPassImageQrSubstrings:[Ljava/lang/String;

    const/16 v3, 0x38

    if-nez v2, :cond_3

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_3
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    move v8, v11

    :goto_3
    iget-object v2, v0, Lorg/chromium/context_aware_engine/mojom/BoardingPassPageDetectionParams;->boardingPassImageQrSubstrings:[Ljava/lang/String;

    array-length v3, v2

    if-ge v8, v3, :cond_4

    aget-object v6, v2, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    const/16 v2, 0x8

    move v4, v2

    move-object v5, v1

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v8

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
