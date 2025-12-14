.class public final Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public needs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/service_manager/mojom/CapabilitySet;",
            ">;"
        }
    .end annotation
.end field

.field public provides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/service_manager/mojom/InterfaceSet;",
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

    sput-object v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->provides:Ljava/util/Map;

    const/16 v3, 0x10

    const/4 v4, -0x1

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-nez v2, :cond_0

    invoke-virtual {v1, v13, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v1, v13}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    iget-object v5, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->provides:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v14

    new-array v15, v14, [Ljava/lang/String;

    new-array v11, v14, [Lorg/chromium/service_manager/mojom/InterfaceSet;

    iget-object v5, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->provides:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v12

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v15, v6

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/chromium/service_manager/mojom/InterfaceSet;

    aput-object v7, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v14, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v16

    move v10, v12

    :goto_1
    if-ge v10, v14, :cond_2

    aget-object v8, v15, v10

    mul-int/lit8 v5, v10, 0x8

    const/16 v17, 0x1

    move v6, v13

    move-object/from16 v7, v16

    move v9, v12

    move-object/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v10

    move-object/from16 v11, v18

    goto :goto_1

    :cond_2
    move-object/from16 v18, v11

    invoke-virtual {v2, v14, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v2

    move v5, v12

    :goto_2
    if-ge v5, v14, :cond_3

    aget-object v6, v18, v5

    mul-int/lit8 v7, v5, 0x8

    add-int/2addr v7, v13

    invoke-virtual {v2, v6, v7, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v2, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->needs:Ljava/util/Map;

    if-nez v2, :cond_4

    invoke-virtual {v1, v3, v12}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_4
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v1

    iget-object v2, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->needs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/String;

    new-array v15, v2, [Lorg/chromium/service_manager/mojom/CapabilitySet;

    iget-object v0, v0, Lorg/chromium/service_manager/mojom/InterfaceProviderSpec;->needs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v12

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v14, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/chromium/service_manager/mojom/CapabilitySet;

    aput-object v6, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v1, v2, v13, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v10, v12

    :goto_5
    if-ge v10, v2, :cond_6

    aget-object v8, v14, v10

    mul-int/lit8 v5, v10, 0x8

    const/4 v11, 0x1

    move v6, v13

    move-object v7, v0

    move v9, v12

    invoke-static/range {v5 .. v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v10

    goto :goto_5

    :cond_6
    invoke-virtual {v1, v2, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v1, v12

    :goto_6
    if-ge v1, v2, :cond_7

    aget-object v3, v15, v1

    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v13

    invoke-virtual {v0, v3, v4, v12}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method
