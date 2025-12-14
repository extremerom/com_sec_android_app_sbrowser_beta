.class final Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media_session/mojom/MediaControllerImageObserver$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal;
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
.method public mediaControllerChapterImageChanged(ILorg/chromium/media_session/mojom/MediaImageBitmap;)V
    .locals 2

    new-instance v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerChapterImageChangedParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerChapterImageChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerChapterImageChangedParams;->index:I

    iput-object p2, v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerChapterImageChangedParams;->bitmap:Lorg/chromium/media_session/mojom/MediaImageBitmap;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x1

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public mediaControllerImageChanged(ILorg/chromium/media_session/mojom/MediaImageBitmap;)V
    .locals 2

    new-instance v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerImageChangedParams;

    invoke-direct {v0}, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerImageChangedParams;-><init>()V

    iput p1, v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerImageChangedParams;->type:I

    iput-object p2, v0, Lorg/chromium/media_session/mojom/MediaControllerImageObserver_Internal$MediaControllerImageObserverMediaControllerImageChangedParams;->bitmap:Lorg/chromium/media_session/mojom/MediaImageBitmap;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
