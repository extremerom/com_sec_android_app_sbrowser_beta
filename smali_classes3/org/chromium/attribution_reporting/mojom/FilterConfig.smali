.class public final Lorg/chromium/attribution_reporting/mojom/FilterConfig;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public filterValues:Ljava/util/Map;
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

.field public lookbackWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/attribution_reporting/mojom/FilterConfig;
    .locals 15

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/attribution_reporting/mojom/FilterConfig;

    invoke-direct {v1, v0}, Lorg/chromium/attribution_reporting/mojom/FilterConfig;-><init>(I)V

    const/4 v0, 0x1

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/TimeDelta;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/TimeDelta;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->lookbackWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v0, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Ljava/lang/String;

    move v10, v3

    :goto_0
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_1

    const/16 v11, 0x8

    invoke-static {v10, v11, v2, v5, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-virtual {v4, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [[Ljava/lang/String;

    move v7, v3

    :goto_1
    iget v10, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v7, v10, :cond_3

    const/16 v10, 0x8

    invoke-static {v7, v10, v2, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v11

    iget v12, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v12, v12, [Ljava/lang/String;

    aput-object v12, v5, v7

    move v12, v3

    :goto_2
    iget v13, v11, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v12, v13, :cond_2

    aget-object v13, v5, v7

    const/16 v14, 0x8

    invoke-static {v12, v14, v2, v10, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->filterValues:Ljava/util/Map;

    :goto_3
    if-ge v3, v8, :cond_4

    iget-object v0, v1, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->filterValues:Ljava/util/Map;

    aget-object v2, v9, v3

    aget-object v4, v5, v3

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
    .locals 14

    sget-object v0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->lookbackWindow:Lorg/chromium/mojo_base/mojom/TimeDelta;

    const/16 v8, 0x8

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v8, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->filterValues:Ljava/util/Map;

    const/16 v9, 0x10

    const/4 v10, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v9, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1, v9}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->filterValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    new-array v12, v0, [[Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/attribution_reporting/mojom/FilterConfig;->filterValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v10

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v11, v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v12, v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {p1, v0, v8, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v13

    move v6, v10

    :goto_1
    if-ge v6, v0, :cond_2

    aget-object v4, v11, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v13

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v9, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v9, v10

    :goto_2
    if-ge v9, v0, :cond_5

    aget-object v1, v12, v9

    if-nez v1, :cond_3

    mul-int/lit8 v1, v9, 0x8

    add-int/2addr v1, v8

    invoke-virtual {p1, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_3
    array-length v1, v1

    mul-int/lit8 v2, v9, 0x8

    add-int/2addr v2, v8

    invoke-virtual {p1, v1, v2, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v11

    move v6, v10

    :goto_3
    aget-object v1, v12, v9

    array-length v2, v1

    if-ge v6, v2, :cond_4

    aget-object v4, v1, v6

    mul-int/lit8 v1, v6, 0x8

    const/4 v7, 0x1

    move v2, v8

    move-object v3, v11

    move v5, v10

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v6

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    return-void
.end method
