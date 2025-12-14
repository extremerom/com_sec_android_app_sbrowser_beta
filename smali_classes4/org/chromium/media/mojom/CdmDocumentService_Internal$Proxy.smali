.class final Lorg/chromium/media/mojom/CdmDocumentService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/mojom/CdmDocumentService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/mojom/CdmDocumentService_Internal;
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
.method public challengePlatform(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/media/mojom/CdmDocumentService$ChallengePlatform_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformParams;->serviceId:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformParams;->challenge:Ljava/lang/String;

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

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceChallengePlatformResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/CdmDocumentService$ChallengePlatform_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getStorageId(ILorg/chromium/media/mojom/CdmDocumentService$GetStorageId_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdParams;

    invoke-direct {v0}, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdParams;-><init>()V

    iput p1, v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdParams;->version:I

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

    invoke-direct {v1, v2, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/media/mojom/CdmDocumentService_Internal$CdmDocumentServiceGetStorageIdResponseParamsForwardToCallback;-><init>(Lorg/chromium/media/mojom/CdmDocumentService$GetStorageId_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method
