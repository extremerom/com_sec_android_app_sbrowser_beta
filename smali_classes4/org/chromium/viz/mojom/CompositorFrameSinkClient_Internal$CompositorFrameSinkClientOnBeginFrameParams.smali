.class final Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositorFrameSinkClientOnBeginFrameParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public args:Lorg/chromium/viz/mojom/BeginFrameArgs;

.field public details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/viz/mojom/FrameTimingDetails;",
            ">;"
        }
    .end annotation
.end field

.field public frameAck:Z

.field public resources:[Lorg/chromium/viz/mojom/ReturnedResource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;
    .locals 10

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;

    invoke-direct {v1, v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/viz/mojom/BeginFrameArgs;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/BeginFrameArgs;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->args:Lorg/chromium/viz/mojom/BeginFrameArgs;

    const/16 v3, 0x10

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForMap()V

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v2, v5}, Lorg/chromium/mojo/bindings/Decoder;->readInts(III)[I

    move-result-object v6

    invoke-virtual {v4, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    array-length v4, v6

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v7, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v7, v7, [Lorg/chromium/viz/mojom/FrameTimingDetails;

    move v8, v2

    :goto_0
    iget v9, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v8, v9, :cond_1

    const/16 v9, 0x8

    invoke-static {v8, v9, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/viz/mojom/FrameTimingDetails;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/FrameTimingDetails;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

    move v3, v2

    :goto_1
    array-length v4, v6

    if-ge v3, v4, :cond_2

    iget-object v4, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

    aget v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget-object v9, v7, v3

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0x18

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->frameAck:Z

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/viz/mojom/ReturnedResource;

    iput-object v5, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    move v5, v2

    :goto_2
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_3

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    invoke-static {v6}, Lorg/chromium/viz/mojom/ReturnedResource;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/ReturnedResource;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_3
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 12

    sget-object v0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->args:Lorg/chromium/viz/mojom/BeginFrameArgs;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

    const/4 v3, -0x1

    const/16 v4, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encoderForMap(I)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    iget-object v5, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    new-array v6, v5, [I

    new-array v7, v5, [Lorg/chromium/viz/mojom/FrameTimingDetails;

    iget-object v8, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->details:Ljava/util/Map;

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

    check-cast v10, Lorg/chromium/viz/mojom/FrameTimingDetails;

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
    iget-boolean v0, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->frameAck:Z

    const/16 v4, 0x18

    invoke-virtual {p1, v0, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    const/16 v4, 0x20

    if-nez v0, :cond_3

    invoke-virtual {p1, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_4

    :cond_3
    array-length v0, v0

    invoke-virtual {p1, v0, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_3
    iget-object v3, p0, Lorg/chromium/viz/mojom/CompositorFrameSinkClient_Internal$CompositorFrameSinkClientOnBeginFrameParams;->resources:[Lorg/chromium/viz/mojom/ReturnedResource;

    array-length v4, v3

    if-ge v0, v4, :cond_4

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    return-void
.end method
