.class final Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public ipAddress:Lorg/chromium/network/mojom/IpAddress;

.field public privateNetworkDeviceId:Ljava/lang/String;

.field public privateNetworkDeviceName:Ljava/lang/String;

.field public url:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x28

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;

    invoke-direct {v1, v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/IpAddress;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/IpAddress;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->ipAddress:Lorg/chromium/network/mojom/IpAddress;

    const/16 v0, 0x18

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceId:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->ipAddress:Lorg/chromium/network/mojom/IpAddress;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceId:Ljava/lang/String;

    const/16 v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object p0, p0, Lorg/chromium/network/mojom/UrlLoaderNetworkServiceObserver_Internal$UrlLoaderNetworkServiceObserverOnPrivateNetworkAccessPermissionRequiredParams;->privateNetworkDeviceName:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p1, p0, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
