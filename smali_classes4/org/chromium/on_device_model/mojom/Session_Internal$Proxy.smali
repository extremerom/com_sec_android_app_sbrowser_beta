.class final Lorg/chromium/on_device_model/mojom/Session_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/on_device_model/mojom/Session$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/on_device_model/mojom/Session_Internal;
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
.method public append(Lorg/chromium/on_device_model/mojom/AppendOptions;Lorg/chromium/on_device_model/mojom/ContextClient;)V
    .locals 2

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;->options:Lorg/chromium/on_device_model/mojom/AppendOptions;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;->client:Lorg/chromium/on_device_model/mojom/ContextClient;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x6

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/on_device_model/mojom/Session;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;->session:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public generate(Lorg/chromium/on_device_model/mojom/GenerateOptions;Lorg/chromium/on_device_model/mojom/StreamingResponder;)V
    .locals 2

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;->options:Lorg/chromium/on_device_model/mojom/GenerateOptions;

    iput-object p2, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;->response:Lorg/chromium/on_device_model/mojom/StreamingResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v1, 0x7

    invoke-direct {p2, v1}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public getSizeInTokens(Lorg/chromium/on_device_model/mojom/Input;Lorg/chromium/on_device_model/mojom/Session$GetSizeInTokens_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;->input:Lorg/chromium/on_device_model/mojom/Input;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/Session$GetSizeInTokens_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public score(Ljava/lang/String;Lorg/chromium/on_device_model/mojom/Session$Score_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v1, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsForwardToCallback;-><init>(Lorg/chromium/on_device_model/mojom/Session$Score_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
