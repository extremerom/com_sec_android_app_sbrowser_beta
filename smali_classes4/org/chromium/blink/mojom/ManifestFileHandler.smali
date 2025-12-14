.class public final Lorg/chromium/blink/mojom/ManifestFileHandler;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ManifestFileHandler$LaunchType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public accept:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/mojo_base/mojom/String16;",
            "[",
            "Lorg/chromium/mojo_base/mojom/String16;",
            ">;"
        }
    .end annotation
.end field

.field public action:Lorg/chromium/url/mojom/Url;

.field public icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

.field public launchType:I

.field public name:Lorg/chromium/mojo_base/mojom/String16;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestFileHandler;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/ManifestFileHandler;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/ManifestFileHandler;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->action:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v4

    iput-object v4, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->name:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/blink/mojom/ManifestImageResource;

    iput-object v7, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    move v7, v2

    :goto_0
    iget v8, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v8, :cond_1

    const/16 v8, 0x8

    invoke-static {v7, v8, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v8

    iget-object v9, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    invoke-static {v8}, Lorg/chromium/blink/mojom/ManifestImageResource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ManifestImageResource;

    move-result-object v8

    aput-object v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Lorg/chromium/mojo_base/mojom/String16;

    move v10, v2

    :goto_1
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_2

    const/16 v11, 0x8

    invoke-static {v10, v11, v0, v6, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v6, v6, [[Lorg/chromium/mojo_base/mojom/String16;

    move v7, v2

    :goto_2
    iget v10, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v10, :cond_4

    const/16 v10, 0x8

    invoke-static {v7, v10, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v12, [Lorg/chromium/mojo_base/mojom/String16;

    aput-object v12, v6, v7

    move v12, v2

    :goto_3
    iget v13, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v12, v13, :cond_3

    const/16 v13, 0x8

    invoke-static {v12, v13, v0, v10, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v13

    aget-object v14, v6, v7

    invoke-static {v13}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v13

    aput-object v13, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->accept:Ljava/util/Map;

    :goto_4
    if-ge v2, v8, :cond_5

    iget-object v0, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->accept:Ljava/util/Map;

    aget-object v3, v9, v2

    aget-object v4, v6, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->launchType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ManifestFileHandler$LaunchType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->launchType:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/ManifestFileHandler$LaunchType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->launchType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_5
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/ManifestFileHandler;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->action:Lorg/chromium/url/mojom/Url;

    const/16 v10, 0x8

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v10, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->name:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v12, 0x10

    invoke-virtual {v1, v2, v12, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    const/16 v3, 0x18

    const/4 v13, -0x1

    if-nez v2, :cond_0

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v2, v2

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v3, v11

    :goto_0
    iget-object v4, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->icons:[Lorg/chromium/blink/mojom/ManifestImageResource;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v10

    invoke-virtual {v2, v4, v5, v11}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->accept:Ljava/util/Map;

    const/16 v3, 0x20

    if-nez v2, :cond_2

    invoke-virtual {v1, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v3, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->accept:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Lorg/chromium/mojo_base/mojom/String16;

    new-array v9, v14, [[Lorg/chromium/mojo_base/mojom/String16;

    iget-object v3, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->accept:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v11

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/mojo_base/mojom/String16;

    aput-object v6, v15, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/chromium/mojo_base/mojom/String16;

    aput-object v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v14, v10, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v8, v11

    :goto_3
    if-ge v8, v14, :cond_4

    aget-object v6, v15, v8

    mul-int/lit8 v3, v8, 0x8

    const/16 v17, 0x1

    move v4, v10

    move-object/from16 v5, v16

    move v7, v11

    move-object/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v8

    move-object/from16 v9, v18

    goto :goto_3

    :cond_4
    move-object/from16 v18, v9

    invoke-virtual {v2, v14, v12, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v12, v11

    :goto_4
    if-ge v12, v14, :cond_7

    aget-object v3, v18, v12

    if-nez v3, :cond_5

    mul-int/lit8 v3, v12, 0x8

    add-int/2addr v3, v10

    invoke-virtual {v2, v3, v11}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_6

    :cond_5
    array-length v3, v3

    mul-int/lit8 v4, v12, 0x8

    add-int/2addr v4, v10

    invoke-virtual {v2, v3, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v15

    move v8, v11

    :goto_5
    aget-object v3, v18, v12

    array-length v4, v3

    if-ge v8, v4, :cond_6

    aget-object v6, v3, v8

    mul-int/lit8 v3, v8, 0x8

    const/4 v9, 0x1

    move v4, v10

    move-object v5, v15

    move v7, v11

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v8

    goto :goto_5

    :cond_6
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    :goto_7
    iget v0, v0, Lorg/chromium/blink/mojom/ManifestFileHandler;->launchType:I

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
