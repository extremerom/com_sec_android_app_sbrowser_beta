.class final Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/HidManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HidManagerConnectParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public allowFidoReports:Z

.field public allowProtectedReports:Z

.field public connectionClient:Lorg/chromium/device/mojom/HidConnectionClient;

.field public deviceGuid:Ljava/lang/String;

.field public watcher:Lorg/chromium/device/mojom/HidConnectionWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v2, 0x1

    const/16 v3, 0x28

    invoke-direct {v1, v3, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1, v2}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v4

    sput-object v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;-><init>(I)V

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->deviceGuid:Ljava/lang/String;

    sget-object v2, Lorg/chromium/device/mojom/HidConnectionClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v4, 0x1

    const/16 v5, 0x10

    invoke-virtual {p0, v5, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/device/mojom/HidConnectionClient;

    iput-object v2, v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->connectionClient:Lorg/chromium/device/mojom/HidConnectionClient;

    sget-object v2, Lorg/chromium/device/mojom/HidConnectionWatcher;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v5, 0x18

    invoke-virtual {p0, v5, v4, v2}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v2

    check-cast v2, Lorg/chromium/device/mojom/HidConnectionWatcher;

    iput-object v2, v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->watcher:Lorg/chromium/device/mojom/HidConnectionWatcher;

    const/16 v2, 0x20

    if-lt v0, v4, :cond_1

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowProtectedReports:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    invoke-virtual {p0, v2, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowFidoReports:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->deviceGuid:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->connectionClient:Lorg/chromium/device/mojom/HidConnectionClient;

    sget-object v1, Lorg/chromium/device/mojom/HidConnectionClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->watcher:Lorg/chromium/device/mojom/HidConnectionWatcher;

    const/16 v1, 0x18

    sget-object v3, Lorg/chromium/device/mojom/HidConnectionWatcher;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-boolean v0, p0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowProtectedReports:Z

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/device/mojom/HidManager_Internal$HidManagerConnectParams;->allowFidoReports:Z

    invoke-virtual {p1, p0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
