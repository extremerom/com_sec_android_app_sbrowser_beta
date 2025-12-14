.class final Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/SerialPortManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerialPortManagerOpenPortParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/device/mojom/SerialPortClient;

.field public options:Lorg/chromium/device/mojom/SerialConnectionOptions;

.field public token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public useAlternatePath:Z

.field public watcher:Lorg/chromium/device/mojom/SerialPortConnectionWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->useAlternatePath:Z

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialConnectionOptions;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/SerialConnectionOptions;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->options:Lorg/chromium/device/mojom/SerialConnectionOptions;

    sget-object v0, Lorg/chromium/device/mojom/SerialPortClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/mojom/SerialPortClient;

    iput-object v0, v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->client:Lorg/chromium/device/mojom/SerialPortClient;

    sget-object v0, Lorg/chromium/device/mojom/SerialPortConnectionWatcher;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x28

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/mojom/SerialPortConnectionWatcher;

    iput-object v0, v1, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->watcher:Lorg/chromium/device/mojom/SerialPortConnectionWatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->token:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->useAlternatePath:Z

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->options:Lorg/chromium/device/mojom/SerialConnectionOptions;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->client:Lorg/chromium/device/mojom/SerialPortClient;

    const/16 v1, 0x20

    sget-object v3, Lorg/chromium/device/mojom/SerialPortClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object p0, p0, Lorg/chromium/device/mojom/SerialPortManager_Internal$SerialPortManagerOpenPortParams;->watcher:Lorg/chromium/device/mojom/SerialPortConnectionWatcher;

    const/4 v0, 0x1

    sget-object v1, Lorg/chromium/device/mojom/SerialPortConnectionWatcher;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x28

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
