.class final Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProxyResolvingSocketUpgradeToTlsResponseParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public netError:I

.field public receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field public sendStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    sget-object p1, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    iput-object p1, p0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object p1, p0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->netError:I

    const/16 v0, 0xc

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readConsumerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readProducerHandle(IZ)Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->netError:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/ProxyResolvingSocket_Internal$ProxyResolvingSocketUpgradeToTlsResponseParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/system/Handle;IZ)V

    return-void
.end method
