.class final Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSessionObserverMediaSessionImagesChangedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/chromium/media_session/mojom/MediaImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;
    .locals 14

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;

    invoke-direct {v1, v0}, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v5

    move v6, v2

    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_1

    aget v7, v5, v6

    invoke-static {v7}, Lorg/chromium/media_session/mojom/MediaSessionImageType;->validate(I)V

    aget v7, v5, v6

    invoke-static {v7}, Lorg/chromium/media_session/mojom/MediaSessionImageType;->toKnownValue(I)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    const/16 v6, 0x10

    invoke-virtual {v3, v6, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v6, v5

    invoke-virtual {v3, v6}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v6

    iget v7, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [[Lorg/chromium/media_session/mojom/MediaImage;

    move v8, v2

    :goto_1
    iget v9, v6, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_3

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v10

    iget v11, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v11, v11, [Lorg/chromium/media_session/mojom/MediaImage;

    aput-object v11, v7, v8

    move v11, v2

    :goto_2
    iget v12, v10, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v11, v12, :cond_2

    const/16 v12, 0x8

    invoke-static {v11, v12, v0, v9, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v12

    aget-object v13, v7, v8

    invoke-static {v12}, Lorg/chromium/media_session/mojom/MediaImage;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/MediaImage;

    move-result-object v12

    aput-object v12, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->images:Ljava/util/Map;

    :goto_3
    array-length v0, v5

    if-ge v2, v0, :cond_4

    iget-object v0, v1, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->images:Ljava/util/Map;

    aget v3, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v7, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 9

    sget-object v0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->images:Ljava/util/Map;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->images:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v3, v0, [I

    new-array v4, v0, [[Lorg/chromium/media_session/mojom/MediaImage;

    iget-object p0, p0, Lorg/chromium/media_session/mojom/MediaSessionObserver_Internal$MediaSessionObserverMediaSessionImagesChangedParams;->images:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v5

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/chromium/media_session/mojom/MediaImage;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-virtual {p1, v3, v2, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode([IIII)V

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_4

    aget-object v5, v4, v3

    if-nez v5, :cond_2

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v2

    invoke-virtual {p1, v5, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v5, v5

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v2

    invoke-virtual {p1, v5, v6, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v5

    move v6, v1

    :goto_2
    aget-object v7, v4, v3

    array-length v8, v7

    if-ge v6, v8, :cond_3

    aget-object v7, v7, v6

    mul-int/lit8 v8, v6, 0x8

    add-int/2addr v8, v2

    invoke-virtual {v5, v7, v8, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    return-void
.end method
