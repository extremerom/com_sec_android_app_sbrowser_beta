.class public final Lorg/chromium/network/mojom/GlobalFirstPartySets;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public aliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/network/mojom/SchemefulSite;",
            "Lorg/chromium/network/mojom/SchemefulSite;",
            ">;"
        }
    .end annotation
.end field

.field public manualConfig:Lorg/chromium/network/mojom/FirstPartySetsContextConfig;

.field public publicSetsVersion:Lorg/chromium/mojo_base/mojom/Version;

.field public sets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/network/mojom/SchemefulSite;",
            "Lorg/chromium/network/mojom/FirstPartySetEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/GlobalFirstPartySets;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/GlobalFirstPartySets;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/Version;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/Version;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->publicSetsVersion:Lorg/chromium/mojo_base/mojom/Version;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v7

    iget v8, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v9, v8, [Lorg/chromium/network/mojom/SchemefulSite;

    move v10, v2

    :goto_0
    iget v11, v7, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_1

    const/16 v11, 0x8

    invoke-static {v10, v11, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/network/mojom/SchemefulSite;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SchemefulSite;

    move-result-object v11

    aput-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v5

    iget v7, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/network/mojom/FirstPartySetEntry;

    move v10, v2

    :goto_1
    iget v11, v5, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v10, v11, :cond_2

    const/16 v11, 0x8

    invoke-static {v10, v11, v0, v4, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v11

    invoke-static {v11}, Lorg/chromium/network/mojom/FirstPartySetEntry;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/FirstPartySetEntry;

    move-result-object v11

    aput-object v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->sets:Ljava/util/Map;

    move v4, v2

    :goto_2
    if-ge v4, v8, :cond_3

    iget-object v5, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->sets:Ljava/util/Map;

    aget-object v10, v9, v4

    aget-object v11, v7, v4

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/16 v4, 0x18

    invoke-virtual {p0, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    invoke-virtual {v4, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v5

    invoke-virtual {v5, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v8, v7, [Lorg/chromium/network/mojom/SchemefulSite;

    move v9, v2

    :goto_3
    iget v10, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v9, v10, :cond_4

    const/16 v10, 0x8

    invoke-static {v9, v10, v0, v5, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v10

    invoke-static {v10}, Lorg/chromium/network/mojom/SchemefulSite;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SchemefulSite;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/network/mojom/SchemefulSite;

    move v6, v2

    :goto_4
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v6, v9, :cond_5

    const/16 v9, 0x8

    invoke-static {v6, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/network/mojom/SchemefulSite;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SchemefulSite;

    move-result-object v9

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->aliases:Ljava/util/Map;

    move v0, v2

    :goto_5
    if-ge v0, v7, :cond_6

    iget-object v3, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->aliases:Ljava/util/Map;

    aget-object v4, v8, v0

    aget-object v6, v5, v0

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/FirstPartySetsContextConfig;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/FirstPartySetsContextConfig;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/GlobalFirstPartySets;->manualConfig:Lorg/chromium/network/mojom/FirstPartySetsContextConfig;
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

    sget-object v0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->publicSetsVersion:Lorg/chromium/mojo_base/mojom/Version;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->sets:Ljava/util/Map;

    const/4 v3, -0x1

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_0
    invoke-virtual {p1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->sets:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v5, [Lorg/chromium/network/mojom/SchemefulSite;

    new-array v7, v5, [Lorg/chromium/network/mojom/FirstPartySetEntry;

    iget-object v8, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->sets:Ljava/util/Map;

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

    check-cast v11, Lorg/chromium/network/mojom/SchemefulSite;

    aput-object v11, v6, v9

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/network/mojom/FirstPartySetEntry;

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v8

    move v9, v2

    :goto_1
    if-ge v9, v5, :cond_2

    aget-object v10, v6, v9

    mul-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v1

    invoke-virtual {v8, v10, v11, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v8, v7, v6

    mul-int/lit8 v9, v6, 0x8

    add-int/2addr v9, v1

    invoke-virtual {v0, v8, v9, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->aliases:Ljava/util/Map;

    const/16 v5, 0x18

    if-nez v0, :cond_4

    invoke-virtual {p1, v5, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_4
    invoke-virtual {p1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->aliases:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v5, [Lorg/chromium/network/mojom/SchemefulSite;

    new-array v7, v5, [Lorg/chromium/network/mojom/SchemefulSite;

    iget-object v8, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->aliases:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v2

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/chromium/network/mojom/SchemefulSite;

    aput-object v11, v6, v9

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/network/mojom/SchemefulSite;

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v5, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v8

    move v9, v2

    :goto_5
    if-ge v9, v5, :cond_6

    aget-object v10, v6, v9

    mul-int/lit8 v11, v9, 0x8

    add-int/2addr v11, v1

    invoke-virtual {v8, v10, v11, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v5, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_7

    aget-object v4, v7, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v4, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    iget-object p0, p0, Lorg/chromium/network/mojom/GlobalFirstPartySets;->manualConfig:Lorg/chromium/network/mojom/FirstPartySetsContextConfig;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
