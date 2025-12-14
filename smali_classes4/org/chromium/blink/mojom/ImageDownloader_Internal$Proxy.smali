.class final Lorg/chromium/blink/mojom/ImageDownloader_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/ImageDownloader$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ImageDownloader_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public downloadImage(Lorg/chromium/url/mojom/Url;ZLorg/chromium/gfx/mojom/Size;IZLorg/chromium/blink/mojom/ImageDownloader$DownloadImage_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;->url:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;->isFavicon:Z

    iput-object p3, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;->preferredSize:Lorg/chromium/gfx/mojom/Size;

    iput p4, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;->maxBitmapSize:I

    iput-boolean p5, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageParams;->bypassCache:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ImageDownloader$DownloadImage_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public downloadImageFromAxNode(ILorg/chromium/gfx/mojom/Size;IZLorg/chromium/blink/mojom/ImageDownloader$DownloadImageFromAxNode_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;-><init>()V

    iput p1, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;->axNodeId:I

    iput-object p2, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;->preferredSize:Lorg/chromium/gfx/mojom/Size;

    iput p3, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;->maxBitmapSize:I

    iput-boolean p4, v0, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeParams;->bypassCache:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p2, p3, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/blink/mojom/ImageDownloader_Internal$ImageDownloaderDownloadImageFromAxNodeResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/ImageDownloader$DownloadImageFromAxNode_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
