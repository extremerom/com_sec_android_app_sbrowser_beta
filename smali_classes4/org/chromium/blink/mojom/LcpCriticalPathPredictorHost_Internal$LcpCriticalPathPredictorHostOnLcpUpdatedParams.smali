.class final Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LcpCriticalPathPredictorHostOnLcpUpdatedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public isImageElement:Z

.field public lcpElementLocator:Lorg/chromium/mojo_base/mojom/ByteString;

.field public predictedLcpIndex:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;-><init>(I)V

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/mojo_base/mojom/ByteString;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/ByteString;

    move-result-object v1

    iput-object v1, v2, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->lcpElementLocator:Lorg/chromium/mojo_base/mojom/ByteString;

    const/4 v1, 0x0

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v1}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    iput-boolean v1, v2, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->isImageElement:Z

    invoke-virtual {p0, v4, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, v2, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->predictedLcpIndex:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    iput-object v0, v2, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->predictedLcpIndex:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->lcpElementLocator:Lorg/chromium/mojo_base/mojom/ByteString;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->isImageElement:Z

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/LcpCriticalPathPredictorHost_Internal$LcpCriticalPathPredictorHostOnLcpUpdatedParams;->predictedLcpIndex:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    const/16 p0, 0x14

    invoke-virtual {p1, v3, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
