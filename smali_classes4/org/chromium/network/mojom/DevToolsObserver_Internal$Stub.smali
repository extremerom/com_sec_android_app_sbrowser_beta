.class final Lorg/chromium/network/mojom/DevToolsObserver_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/DevToolsObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/DevToolsObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/DevToolsObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;->listener:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->clone(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;->issues:[Lorg/chromium/network/mojom/SriMessageSignatureIssue;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSriMessageSignatureIssue(Ljava/lang/String;Lorg/chromium/url/mojom/Url;[Lorg/chromium/network/mojom/SriMessageSignatureIssue;)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iget p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;->error:I

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSharedDictionaryError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;I)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->innerRequestDevtoolsId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->errorMessage:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;->bundleRequestDevtoolsId:Ljava/lang/String;

    invoke-interface {p0, v1, v3, v4, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSubresourceWebBundleInnerResponseError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->innerRequestDevtoolsId:Ljava/lang/String;

    iget-object v3, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;->bundleRequestDevtoolsId:Ljava/lang/String;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSubresourceWebBundleInnerResponse(Ljava/lang/String;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;->devtoolRequestId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;->errorMessage:Ljava/lang/String;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSubresourceWebBundleMetadataError(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;->devtoolRequestId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;->urls:[Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onSubresourceWebBundleMetadata(Ljava/lang/String;[Lorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;->devtoolsRequestId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;->url:Lorg/chromium/url/mojom/Url;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onOrbError(Ljava/lang/String;Lorg/chromium/url/mojom/Url;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->initiatorOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget-object v6, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    iget-object v7, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v8, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->status:Lorg/chromium/network/mojom/CorsErrorStatus;

    iget-boolean v9, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;->isWarning:Z

    invoke-interface/range {v3 .. v9}, Lorg/chromium/network/mojom/DevToolsObserver;->onCorsError(Ljava/lang/String;Lorg/chromium/url/internal/mojom/Origin;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CorsErrorStatus;Z)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;->devtoolRequestId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;->result:Lorg/chromium/network/mojom/TrustTokenOperationResult;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onTrustTokenOperationDone(Ljava/lang/String;Lorg/chromium/network/mojom/TrustTokenOperationResult;)V

    return v2

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;->status:Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onCorsPreflightRequestCompleted(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/UrlLoaderCompletionStatus;)V

    return v2

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v3, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;->head:Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onCorsPreflightResponse(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/UrlResponseHeadDevToolsInfo;)V

    return v2

    :pswitch_d
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->devtoolRequestId:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v5, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->requestHeaders:Lorg/chromium/network/mojom/HttpRequestHeaders;

    iget-object v6, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->requestInfo:Lorg/chromium/network/mojom/UrlRequestDevToolsInfo;

    iget-object v7, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->initiatorUrl:Lorg/chromium/url/mojom/Url;

    iget-object v8, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;->initiatorDevtoolRequestId:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/network/mojom/DevToolsObserver;->onCorsPreflightRequest(Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/HttpRequestHeaders;Lorg/chromium/network/mojom/UrlRequestDevToolsInfo;Lorg/chromium/url/mojom/Url;Ljava/lang/String;)V

    return v2

    :pswitch_e
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->url:Lorg/chromium/url/mojom/Url;

    iget-boolean v6, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->isWarning:Z

    iget v7, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->resourceAddressSpace:I

    iget-object v8, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    invoke-interface/range {v3 .. v8}, Lorg/chromium/network/mojom/DevToolsObserver;->onPrivateNetworkRequest(Ljava/lang/String;Lorg/chromium/url/mojom/Url;ZILorg/chromium/network/mojom/ClientSecurityState;)V

    return v2

    :pswitch_f
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;->devtoolRequestId:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    invoke-interface {p0, v1, p1}, Lorg/chromium/network/mojom/DevToolsObserver;->onEarlyHintsResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/HttpRawHeaderPair;)V

    return v2

    :pswitch_10
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;

    iget-object v6, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    iget-object v7, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->rawResponseHeaders:Ljava/lang/String;

    iget v8, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->resourceAddressSpace:I

    iget v9, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->httpStatusCode:I

    iget-object v10, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;->cookiePartitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    invoke-interface/range {v3 .. v10}, Lorg/chromium/network/mojom/DevToolsObserver;->onRawResponse(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieAndLineWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Ljava/lang/String;IILorg/chromium/network/mojom/CookiePartitionKey;)V

    return v2

    :pswitch_11
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/DevToolsObserver;

    iget-object v4, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->devtoolRequestId:Ljava/lang/String;

    iget-object v5, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->cookiesWithAccessResult:[Lorg/chromium/network/mojom/CookieWithAccessResult;

    iget-object v6, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->headers:[Lorg/chromium/network/mojom/HttpRawHeaderPair;

    iget-object v7, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->timestamp:Lorg/chromium/mojo_base/mojom/TimeTicks;

    iget-object v8, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->clientSecurityState:Lorg/chromium/network/mojom/ClientSecurityState;

    iget-object v9, p1, Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;->otherPartitionInfo:Lorg/chromium/network/mojom/OtherPartitionInfo;

    invoke-interface/range {v3 .. v9}, Lorg/chromium/network/mojom/DevToolsObserver;->onRawRequest(Ljava/lang/String;[Lorg/chromium/network/mojom/CookieWithAccessResult;[Lorg/chromium/network/mojom/HttpRawHeaderPair;Lorg/chromium/mojo_base/mojom/TimeTicks;Lorg/chromium/network/mojom/ClientSecurityState;Lorg/chromium/network/mojom/OtherPartitionInfo;)V

    return v2

    :pswitch_12
    sget-object p0, Lorg/chromium/network/mojom/DevToolsObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/DevToolsObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
