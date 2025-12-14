.class public final Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public bypassRedirectChecks:Z

.field public defaultFactory:Lorg/chromium/network/mojom/UrlLoaderFactory;

.field public isolatedWorldFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
            ">;"
        }
    .end annotation
.end field

.field public localResourceLoaderConfig:Lorg/chromium/blink/mojom/LocalResourceLoaderConfig;

.field public schemeSpecificFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/network/mojom/UrlLoaderFactory;",
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

    sput-object v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->bypassRedirectChecks:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;
    .locals 13

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;-><init>(I)V

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/UrlLoaderFactory;

    iput-object v0, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->defaultFactory:Lorg/chromium/network/mojom/UrlLoaderFactory;

    const/16 v0, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v8

    iget v9, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v10, v9, [Ljava/lang/String;

    move v11, v4

    :goto_0
    iget v12, v8, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_1

    const/16 v12, 0x8

    invoke-static {v11, v12, v3, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    sget-object v6, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v5, v0, v4, v9, v6}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v5

    check-cast v5, [Lorg/chromium/network/mojom/UrlLoaderFactory;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->schemeSpecificFactories:Ljava/util/Map;

    move v6, v4

    :goto_1
    if-ge v6, v9, :cond_2

    iget-object v8, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->schemeSpecificFactories:Ljava/util/Map;

    aget-object v11, v10, v6

    aget-object v12, v5, v6

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x18

    invoke-virtual {p0, v5, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v5, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Lorg/chromium/url/internal/mojom/Origin;

    move v10, v4

    :goto_2
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_3

    const/16 v11, 0x8

    invoke-static {v10, v11, v3, v6, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {v5, v0, v4, v8, v3}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterfaces(IIILorg/chromium/mojo/bindings/Interface$Manager;)[Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, [Lorg/chromium/network/mojom/UrlLoaderFactory;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->isolatedWorldFactories:Ljava/util/Map;

    move v3, v4

    :goto_3
    if-ge v3, v8, :cond_4

    iget-object v5, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->isolatedWorldFactories:Ljava/util/Map;

    aget-object v6, v9, v3

    aget-object v7, v0, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->bypassRedirectChecks:Z

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalResourceLoaderConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalResourceLoaderConfig;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->localResourceLoaderConfig:Lorg/chromium/blink/mojom/LocalResourceLoaderConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->defaultFactory:Lorg/chromium/network/mojom/UrlLoaderFactory;

    sget-object v3, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v11, 0x8

    const/4 v12, 0x1

    invoke-virtual {v1, v2, v11, v12, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v2, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->schemeSpecificFactories:Ljava/util/Map;

    const/4 v3, -0x1

    const/16 v4, 0x10

    const/4 v13, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->schemeSpecificFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/String;

    new-array v10, v14, [Lorg/chromium/network/mojom/UrlLoaderFactory;

    iget-object v4, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->schemeSpecificFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v13

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v15, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/network/mojom/UrlLoaderFactory;

    aput-object v6, v10, v5

    add-int/2addr v5, v12

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v14, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v9, v13

    :goto_1
    if-ge v9, v14, :cond_2

    aget-object v7, v15, v9

    mul-int/lit8 v4, v9, 0x8

    const/16 v17, 0x1

    move v5, v11

    move-object/from16 v6, v16

    move v8, v13

    move-object/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v9

    move-object/from16 v10, v18

    goto :goto_1

    :cond_2
    move-object/from16 v18, v10

    const/4 v9, -0x1

    sget-object v10, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v5, v2

    move-object/from16 v6, v18

    invoke-virtual/range {v5 .. v10}, Lorg/chromium/mojo/bindings/Encoder;->encode([Lorg/chromium/mojo/bindings/Interface;IIILorg/chromium/mojo/bindings/Interface$Manager;)V

    :goto_2
    iget-object v2, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->isolatedWorldFactories:Ljava/util/Map;

    const/16 v4, 0x18

    if-nez v2, :cond_3

    invoke-virtual {v1, v4, v13}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_3
    invoke-virtual {v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v4, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->isolatedWorldFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Lorg/chromium/url/internal/mojom/Origin;

    new-array v10, v14, [Lorg/chromium/network/mojom/UrlLoaderFactory;

    iget-object v4, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->isolatedWorldFactories:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v13

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/url/internal/mojom/Origin;

    aput-object v7, v15, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/network/mojom/UrlLoaderFactory;

    aput-object v6, v10, v5

    add-int/2addr v5, v12

    goto :goto_3

    :cond_4
    invoke-virtual {v2, v14, v11, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v3

    move v9, v13

    :goto_4
    if-ge v9, v14, :cond_5

    aget-object v7, v15, v9

    mul-int/lit8 v4, v9, 0x8

    const/16 v16, 0x1

    move v5, v11

    move-object v6, v3

    move v8, v13

    move-object/from16 v17, v10

    move/from16 v10, v16

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->d(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/url/internal/mojom/Origin;ZII)I

    move-result v9

    move-object/from16 v10, v17

    goto :goto_4

    :cond_5
    move-object/from16 v17, v10

    const/4 v9, -0x1

    sget-object v10, Lorg/chromium/network/mojom/UrlLoaderFactory;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v5, v2

    move-object/from16 v6, v17

    invoke-virtual/range {v5 .. v10}, Lorg/chromium/mojo/bindings/Encoder;->encode([Lorg/chromium/mojo/bindings/Interface;IIILorg/chromium/mojo/bindings/Interface$Manager;)V

    :goto_5
    iget-boolean v2, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->bypassRedirectChecks:Z

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3, v13}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, v0, Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;->localResourceLoaderConfig:Lorg/chromium/blink/mojom/LocalResourceLoaderConfig;

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
