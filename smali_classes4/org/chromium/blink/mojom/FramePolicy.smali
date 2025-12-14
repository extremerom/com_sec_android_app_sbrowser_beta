.class public final Lorg/chromium/blink/mojom/FramePolicy;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public containerPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

.field public deferredFetchPolicy:I

.field public requiredDocumentPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/blink/mojom/PolicyValue;",
            ">;"
        }
    .end annotation
.end field

.field public sandboxFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/FramePolicy;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/FramePolicy;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FramePolicy;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/FramePolicy;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/FramePolicy;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/FramePolicy;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->sandboxFlags:I

    invoke-static {v2}, Lorg/chromium/network/mojom/WebSandboxFlags;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->sandboxFlags:I

    invoke-static {v2}, Lorg/chromium/network/mojom/WebSandboxFlags;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->sandboxFlags:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->deferredFetchPolicy:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/DeferredFetchPolicy;->validate(I)V

    iget v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->deferredFetchPolicy:I

    invoke-static {v2}, Lorg/chromium/blink/mojom/DeferredFetchPolicy;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/blink/mojom/FramePolicy;->deferredFetchPolicy:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    iput-object v7, v1, Lorg/chromium/blink/mojom/FramePolicy;->containerPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    move v7, v3

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v4, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/blink/mojom/FramePolicy;->containerPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    invoke-static {v8}, Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v5

    move v6, v3

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    aget v7, v5, v6

    invoke-static {v7}, Lorg/chromium/blink/mojom/DocumentPolicyFeature;->validate(I)V

    aget v7, v5, v6

    invoke-static {v7}, Lorg/chromium/blink/mojom/DocumentPolicyFeature;->toKnownValue(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    array-length v4, v5

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [Lorg/chromium/blink/mojom/PolicyValue;

    move v7, v3

    :goto_2
    iget v8, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_3

    mul-int/lit8 v8, v7, 0x10

    add-int/2addr v8, v0

    invoke-static {v2, v8}, Lorg/chromium/blink/mojom/PolicyValue;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/PolicyValue;

    move-result-object v8

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/FramePolicy;->requiredDocumentPolicy:Ljava/util/Map;

    :goto_3
    array-length v0, v5

    if-ge v3, v0, :cond_4

    iget-object v0, v1, Lorg/chromium/blink/mojom/FramePolicy;->requiredDocumentPolicy:Ljava/util/Map;

    aget v2, v5, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-object v4, v6, v3

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/blink/mojom/FramePolicy;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/blink/mojom/FramePolicy;->sandboxFlags:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/FramePolicy;->deferredFetchPolicy:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/FramePolicy;->containerPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    const/4 v2, -0x1

    const/16 v3, 0x10

    const/4 v4, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v5, v4

    :goto_0
    iget-object v6, p0, Lorg/chromium/blink/mojom/FramePolicy;->containerPolicy:[Lorg/chromium/network/mojom/ParsedPermissionsPolicyDeclaration;

    array-length v7, v6

    if-ge v5, v7, :cond_1

    aget-object v6, v6, v5

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v1

    invoke-virtual {v0, v6, v7, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/blink/mojom/FramePolicy;->requiredDocumentPolicy:Ljava/util/Map;

    const/16 v5, 0x18

    if-nez v0, :cond_2

    invoke-virtual {p1, v5, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_2
    invoke-virtual {p1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/FramePolicy;->requiredDocumentPolicy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v5, v0, [I

    new-array v6, v0, [Lorg/chromium/blink/mojom/PolicyValue;

    iget-object p0, p0, Lorg/chromium/blink/mojom/FramePolicy;->requiredDocumentPolicy:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v7, v4

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v5, v7

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/chromium/blink/mojom/PolicyValue;

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v5, v1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p0

    move p1, v4

    :goto_3
    if-ge p1, v0, :cond_4

    aget-object v2, v6, p1

    mul-int/lit8 v3, p1, 0x10

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
