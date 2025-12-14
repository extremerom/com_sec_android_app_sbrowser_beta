.class public final Lorg/chromium/blink/mojom/DownloadUrlParams;
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

.field public crossOriginRedirects:I

.field public dataUrlBlob:Lorg/chromium/blink/mojom/Blob;

.field public hasUserGesture:Z

.field public initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

.field public isContextMenuSave:Z

.field public referrer:Lorg/chromium/blink/mojom/Referrer;

.field public suggestedName:Lorg/chromium/mojo_base/mojom/String16;

.field public url:Lorg/chromium/url/mojom/Url;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/DownloadUrlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/DownloadUrlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->isContextMenuSave:Z

    iput-boolean p1, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->hasUserGesture:Z

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DownloadUrlParams;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/DownloadUrlParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/DownloadUrlParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/DownloadUrlParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/mojom/Url;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/mojom/Url;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v0, 0x10

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/Referrer;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/Referrer;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/url/internal/mojom/Origin;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/url/internal/mojom/Origin;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->suggestedName:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->crossOriginRedirects:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RedirectMode;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->crossOriginRedirects:I

    invoke-static {v0}, Lorg/chromium/network/mojom/RedirectMode;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->crossOriginRedirects:I

    sget-object v0, Lorg/chromium/blink/mojom/BlobUrlToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/BlobUrlToken;

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    sget-object v0, Lorg/chromium/blink/mojom/Blob;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v4, 0x34

    invoke-virtual {p0, v4, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/Blob;

    iput-object v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->dataUrlBlob:Lorg/chromium/blink/mojom/Blob;

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->isContextMenuSave:Z

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lorg/chromium/blink/mojom/DownloadUrlParams;->hasUserGesture:Z
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

    sget-object v0, Lorg/chromium/blink/mojom/DownloadUrlParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->url:Lorg/chromium/url/mojom/Url;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->referrer:Lorg/chromium/blink/mojom/Referrer;

    const/16 v1, 0x10

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->suggestedName:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->crossOriginRedirects:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->blobUrlToken:Lorg/chromium/blink/mojom/BlobUrlToken;

    const/16 v1, 0x2c

    sget-object v4, Lorg/chromium/blink/mojom/BlobUrlToken;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->dataUrlBlob:Lorg/chromium/blink/mojom/Blob;

    const/16 v1, 0x34

    sget-object v4, Lorg/chromium/blink/mojom/Blob;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->isContextMenuSave:Z

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/blink/mojom/DownloadUrlParams;->hasUserGesture:Z

    invoke-virtual {p1, p0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
