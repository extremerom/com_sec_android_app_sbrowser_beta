.class public final Lorg/chromium/blink/mojom/OpenUrlParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

.field public disposition:I

.field public downloadPolicy:Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

.field public extraHeaders:Ljava/lang/String;

.field public hasRelOpener:Z

.field public hrefTranslate:Ljava/lang/String;

.field public impression:Lorg/chromium/blink/mojom/Impression;

.field public initiatorActivationAndAdStatus:I

.field public initiatorBaseUrl:Lorg/chromium/url/mojom/Url;

.field public initiatorFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

.field public initiatorNavigationStateKeepAliveHandle:Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;

.field public initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public isContainerInitiated:Z

.field public isFormSubmission:Z

.field public isUnfencedTopNavigation:Z

.field public postBody:Lorg/chromium/network/mojom/UrlRequestBody;

.field public referrer:Lorg/chromium/blink/mojom/Referrer;

.field public shouldReplaceCurrentEntry:Z

.field public sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

.field public storageAccessApiStatus:I

.field public triggeringEventInfo:I

.field public url:Lorg/chromium/url/mojom/Url;

.field public userGesture:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/OpenUrlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/OpenUrlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x88

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->isUnfencedTopNavigation:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->isContainerInitiated:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->hasRelOpener:Z

    iput p1, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->storageAccessApiStatus:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/OpenUrlParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/OpenUrlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/OpenUrlParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/OpenUrlParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x18

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorBaseUrl:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/LocalFrameToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameToken;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/UrlRequestBody;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/UrlRequestBody;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->postBody:Lorg/chromium/network/mojom/UrlRequestBody;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->extraHeaders:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/Referrer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Referrer;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->isFormSubmission:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->shouldReplaceCurrentEntry:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->userGesture:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->isUnfencedTopNavigation:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->isContainerInitiated:Z

    const/4 v4, 0x5

    invoke-virtual {p0, v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->hasRelOpener:Z

    const/16 v0, 0x44

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->disposition:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/WindowOpenDisposition;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->disposition:I

    invoke-static {v0}, Lorg/chromium/ui/mojom/WindowOpenDisposition;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->disposition:I

    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->triggeringEventInfo:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/TriggeringEventInfo;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->triggeringEventInfo:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/TriggeringEventInfo;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->triggeringEventInfo:I

    sget-object v0, Lorg/chromium/blink/mojom/BlobUrlToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x4c

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/BlobUrlToken;

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    const/16 v0, 0x54

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorActivationAndAdStatus:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/NavigationInitiatorActivationAndAdStatus;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorActivationAndAdStatus:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/NavigationInitiatorActivationAndAdStatus;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorActivationAndAdStatus:I

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->hrefTranslate:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/Impression;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Impression;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->impression:Lorg/chromium/blink/mojom/Impression;

    const/16 v0, 0x68

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/NavigationDownloadPolicy;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->downloadPolicy:Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

    const/16 v0, 0x70

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/network/mojom/SourceLocation;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/network/mojom/SourceLocation;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

    sget-object v0, Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x78

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;

    iput-object v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorNavigationStateKeepAliveHandle:Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->storageAccessApiStatus:I

    invoke-static {v0}, Lorg/chromium/network/mojom/StorageAccessApiStatus;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/OpenUrlParams;->storageAccessApiStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/OpenUrlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorBaseUrl:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x18

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->postBody:Lorg/chromium/network/mojom/UrlRequestBody;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->extraHeaders:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->isFormSubmission:Z

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->shouldReplaceCurrentEntry:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->userGesture:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->isUnfencedTopNavigation:Z

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->isContainerInitiated:Z

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->hasRelOpener:Z

    const/4 v4, 0x5

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->disposition:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->triggeringEventInfo:I

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    const/16 v1, 0x4c

    sget-object v4, Lorg/chromium/blink/mojom/BlobUrlToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorActivationAndAdStatus:I

    const/16 v1, 0x54

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->hrefTranslate:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->impression:Lorg/chromium/blink/mojom/Impression;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->downloadPolicy:Lorg/chromium/blink/mojom/NavigationDownloadPolicy;

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->sourceLocation:Lorg/chromium/network/mojom/SourceLocation;

    const/16 v1, 0x70

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->initiatorNavigationStateKeepAliveHandle:Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;

    const/16 v1, 0x78

    sget-object v2, Lorg/chromium/blink/mojom/NavigationStateKeepAliveHandle;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget p0, p0, Lorg/chromium/blink/mojom/OpenUrlParams;->storageAccessApiStatus:I

    const/16 v0, 0x80

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
