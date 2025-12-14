.class final Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/P2pSocketManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2pSocketManagerStartNetworkNotificationsParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public client:Lorg/chromium/network/mojom/P2pNetworkNotificationClient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;-><init>(I)V

    sget-object v0, Lorg/chromium/network/mojom/P2pNetworkNotificationClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/network/mojom/P2pNetworkNotificationClient;

    iput-object v0, v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->client:Lorg/chromium/network/mojom/P2pNetworkNotificationClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->client:Lorg/chromium/network/mojom/P2pNetworkNotificationClient;

    const/4 v0, 0x0

    sget-object v1, Lorg/chromium/network/mojom/P2pNetworkNotificationClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x8

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
