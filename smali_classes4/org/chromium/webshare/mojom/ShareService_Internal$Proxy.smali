.class final Lorg/chromium/webshare/mojom/ShareService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/webshare/mojom/ShareService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/webshare/mojom/ShareService_Internal;
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
.method public share(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/webshare/mojom/SharedFile;Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V
    .locals 3

    new-instance v0, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;

    invoke-direct {v0}, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;->title:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;->text:Ljava/lang/String;

    iput-object p3, v0, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p4, v0, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareParams;->files:[Lorg/chromium/webshare/mojom/SharedFile;

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

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3, v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareResponseParamsForwardToCallback;

    invoke-direct {p2, p5}, Lorg/chromium/webshare/mojom/ShareService_Internal$ShareServiceShareResponseParamsForwardToCallback;-><init>(Lorg/chromium/webshare/mojom/ShareService$Share_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
