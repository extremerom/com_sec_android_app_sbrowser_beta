.class final Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/AudioStreamFactory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioStreamFactoryCreateSwitchableOutputStreamParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public deviceId:Ljava/lang/String;

.field public deviceSwitchReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/DeviceSwitchInterface;",
            ">;"
        }
    .end annotation
.end field

.field public groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public log:Lorg/chromium/media/mojom/AudioLog;

.field public observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

.field public params:Lorg/chromium/media/mojom/AudioParameters;

.field public stream:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/media/mojom/AudioOutputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x38

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x38

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;

    invoke-direct {v1, v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceSwitchReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x10

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readAssociatedServiceInterfaceNotSupported(IZ)Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    sget-object v0, Lorg/chromium/media/mojom/AudioLog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x18

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/media/mojom/AudioLog;

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceId:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioParameters;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioParameters;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->stream:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceSwitchReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->observer:Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;

    const/16 v1, 0x10

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/AssociatedInterfaceNotSupported;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->log:Lorg/chromium/media/mojom/AudioLog;

    const/16 v1, 0x18

    sget-object v4, Lorg/chromium/media/mojom/AudioLog;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->deviceId:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->params:Lorg/chromium/media/mojom/AudioParameters;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object p0, p0, Lorg/chromium/media/mojom/AudioStreamFactory_Internal$AudioStreamFactoryCreateSwitchableOutputStreamParams;->groupId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v0, 0x30

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
