.class final Lorg/chromium/blink/mojom/AdAuctionService_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/AdAuctionService$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AdAuctionService_Internal;
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
.method public clearOriginJoinedInterestGroups(Lorg/chromium/url/internal/mojom/Origin;[Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$ClearOriginJoinedInterestGroups_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;->owner:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;->interestGroupsToKeep:[Ljava/lang/String;

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

    const/4 v4, 0x6

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$ClearOriginJoinedInterestGroups_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public createAdRequest(Lorg/chromium/blink/mojom/AdRequestConfig;Lorg/chromium/blink/mojom/AdAuctionService$CreateAdRequest_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;->config:Lorg/chromium/blink/mojom/AdRequestConfig;

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

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, v1}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$CreateAdRequest_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public deprecatedGetUrlFromUrn(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/AdAuctionService$DeprecatedGetUrlFromUrn_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;->uuidUrl:Lorg/chromium/url/mojom/Url;

    iput-boolean p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;->sendReports:Z

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

    const/16 v4, 0x8

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedGetUrlFromUrn_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public deprecatedReplaceInUrn(Lorg/chromium/url/mojom/Url;[Lorg/chromium/blink/mojom/AdKeywordReplacement;Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedReplaceInUrn_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;->uuidUrl:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;->replacements:[Lorg/chromium/blink/mojom/AdKeywordReplacement;

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

    const/16 v4, 0x9

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedReplaceInUrn_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public finalizeAd(Ljava/lang/String;Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/blink/mojom/AdAuctionService$FinalizeAd_Response;)V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;->adsGuid:Ljava/lang/String;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;->config:Lorg/chromium/blink/mojom/AuctionAdConfig;

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

    invoke-direct {p2, v1, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$FinalizeAd_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getInterestGroupAdAuctionData(Ljava/util/Map;Lorg/chromium/blink/mojom/AuctionDataConfig;Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/chromium/url/internal/mojom/Origin;",
            "Lorg/chromium/url/internal/mojom/Origin;",
            ">;",
            "Lorg/chromium/blink/mojom/AuctionDataConfig;",
            "Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->config:Lorg/chromium/blink/mojom/AuctionDataConfig;

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

    const/16 v4, 0xa

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public joinInterestGroup(Lorg/chromium/blink/mojom/InterestGroup;Lorg/chromium/blink/mojom/AdAuctionService$JoinInterestGroup_Response;)V
    .locals 6

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;->group:Lorg/chromium/blink/mojom/InterestGroup;

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

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupResponseParamsForwardToCallback;

    invoke-direct {v0, p2}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$JoinInterestGroup_Response;)V

    invoke-interface {p1, p0, v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public leaveInterestGroup(Lorg/chromium/url/internal/mojom/Origin;Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$LeaveInterestGroup_Response;)V
    .locals 5

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;->owner:Lorg/chromium/url/internal/mojom/Origin;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;->name:Ljava/lang/String;

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

    const/4 v4, 0x4

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$LeaveInterestGroup_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public leaveInterestGroupForDocument()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupForDocumentParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupForDocumentParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method

.method public runAdAuction(Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/AuctionAdConfig;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AbortableAdAuction;",
            ">;",
            "Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;->config:Lorg/chromium/blink/mojom/AuctionAdConfig;

    iput-object p2, v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;->abortReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

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

    const/4 v4, 0x2

    invoke-direct {p2, v4, v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionResponseParamsForwardToCallback;

    invoke-direct {p2, p3}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionResponseParamsForwardToCallback;-><init>(Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public updateAdInterestGroups()V
    .locals 4

    new-instance v0, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceUpdateAdInterestGroupsParams;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceUpdateAdInterestGroupsParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
