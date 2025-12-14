.class public final Lorg/chromium/media/mojom/CdmCapability;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public audioCodecs:[I

.field public encryptionSchemes:[I

.field public sessionTypes:[I

.field public version:Lorg/chromium/mojo_base/mojom/Version;

.field public videoCodecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/media/mojom/VideoCodecInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/CdmCapability;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/CdmCapability;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/CdmCapability;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/CdmCapability;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/CdmCapability;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/CdmCapability;-><init>(I)V

    const/4 v0, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/media/mojom/CdmCapability;->audioCodecs:[I

    move v4, v3

    :goto_0
    iget-object v5, v1, Lorg/chromium/media/mojom/CdmCapability;->audioCodecs:[I

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget v5, v5, v4

    invoke-static {v5}, Lorg/chromium/media/mojom/AudioCodec;->validate(I)V

    iget-object v5, v1, Lorg/chromium/media/mojom/CdmCapability;->audioCodecs:[I

    aget v6, v5, v4

    invoke-static {v6}, Lorg/chromium/media/mojom/AudioCodec;->toKnownValue(I)I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    const/16 v4, 0x10

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    move v7, v3

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/media/mojom/VideoCodec;->validate(I)V

    aget v8, v6, v7

    invoke-static {v8}, Lorg/chromium/media/mojom/VideoCodec;->toKnownValue(I)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    array-length v5, v6

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/media/mojom/VideoCodecInfo;

    move v8, v3

    :goto_2
    iget v9, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v2, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/media/mojom/VideoCodecInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/VideoCodecInfo;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lorg/chromium/media/mojom/CdmCapability;->videoCodecs:Ljava/util/Map;

    move v2, v3

    :goto_3
    array-length v4, v6

    if-ge v2, v4, :cond_4

    iget-object v4, v1, Lorg/chromium/media/mojom/CdmCapability;->videoCodecs:Ljava/util/Map;

    aget v5, v6, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget-object v8, v7, v2

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    const/16 v2, 0x18

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/media/mojom/CdmCapability;->encryptionSchemes:[I

    move v2, v3

    :goto_4
    iget-object v4, v1, Lorg/chromium/media/mojom/CdmCapability;->encryptionSchemes:[I

    array-length v5, v4

    if-ge v2, v5, :cond_5

    aget v4, v4, v2

    invoke-static {v4}, Lorg/chromium/media/mojom/EncryptionScheme;->validate(I)V

    iget-object v4, v1, Lorg/chromium/media/mojom/CdmCapability;->encryptionSchemes:[I

    aget v5, v4, v2

    invoke-static {v5}, Lorg/chromium/media/mojom/EncryptionScheme;->toKnownValue(I)I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const/16 v2, 0x20

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/CdmCapability;->sessionTypes:[I

    move v0, v3

    :goto_5
    iget-object v2, v1, Lorg/chromium/media/mojom/CdmCapability;->sessionTypes:[I

    array-length v4, v2

    if-ge v0, v4, :cond_6

    aget v2, v2, v0

    invoke-static {v2}, Lorg/chromium/media/mojom/CdmSessionType;->validate(I)V

    iget-object v2, v1, Lorg/chromium/media/mojom/CdmCapability;->sessionTypes:[I

    aget v4, v2, v0

    invoke-static {v4}, Lorg/chromium/media/mojom/CdmSessionType;->toKnownValue(I)I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/Version;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Version;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/CdmCapability;->version:Lorg/chromium/mojo_base/mojom/Version;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_6
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/media/mojom/CdmCapability;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/CdmCapability;->audioCodecs:[I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/CdmCapability;->videoCodecs:Ljava/util/Map;

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/media/mojom/CdmCapability;->videoCodecs:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v5, [I

    new-array v7, v5, [Lorg/chromium/media/mojom/VideoCodecInfo;

    iget-object v8, p0, Lorg/chromium/media/mojom/CdmCapability;->videoCodecs:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v2

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v6, v9

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/media/mojom/VideoCodecInfo;

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {v0, v5, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v4, v2

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v6, v7, v4

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v1

    invoke-virtual {v0, v6, v8, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/chromium/media/mojom/CdmCapability;->encryptionSchemes:[I

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object v0, p0, Lorg/chromium/media/mojom/CdmCapability;->sessionTypes:[I

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    iget-object p0, p0, Lorg/chromium/media/mojom/CdmCapability;->version:Lorg/chromium/mojo_base/mojom/Version;

    const/16 v0, 0x28

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
