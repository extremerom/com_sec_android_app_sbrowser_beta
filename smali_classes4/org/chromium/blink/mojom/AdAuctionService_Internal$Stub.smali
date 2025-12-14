.class final Lorg/chromium/blink/mojom/AdAuctionService_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AdAuctionService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/AdAuctionService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/AdAuctionService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

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

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceUpdateAdInterestGroupsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceUpdateAdInterestGroupsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AdAuctionService;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/AdAuctionService;->updateAdInterestGroups()V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupForDocumentParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupForDocumentParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/AdAuctionService;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/AdAuctionService;->leaveInterestGroupForDocument()V

    return v3

    :cond_4
    sget-object p0, Lorg/chromium/blink/mojom/AdAuctionService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->sellers:Ljava/util/Map;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataParams;->config:Lorg/chromium/blink/mojom/AuctionDataConfig;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceGetInterestGroupAdAuctionDataResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->getInterestGroupAdAuctionData(Ljava/util/Map;Lorg/chromium/blink/mojom/AuctionDataConfig;Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;->uuidUrl:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnParams;->replacements:[Lorg/chromium/blink/mojom/AdKeywordReplacement;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedReplaceInUrnResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->deprecatedReplaceInUrn(Lorg/chromium/url/mojom/Url;[Lorg/chromium/blink/mojom/AdKeywordReplacement;Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedReplaceInUrn_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;->uuidUrl:Lorg/chromium/url/mojom/Url;

    iget-boolean p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnParams;->sendReports:Z

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceDeprecatedGetUrlFromUrnResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->deprecatedGetUrlFromUrn(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/AdAuctionService$DeprecatedGetUrlFromUrn_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;->owner:Lorg/chromium/url/internal/mojom/Origin;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsParams;->interestGroupsToKeep:[Ljava/lang/String;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceClearOriginJoinedInterestGroupsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->clearOriginJoinedInterestGroups(Lorg/chromium/url/internal/mojom/Origin;[Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$ClearOriginJoinedInterestGroups_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;->owner:Lorg/chromium/url/internal/mojom/Origin;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupParams;->name:Ljava/lang/String;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceLeaveInterestGroupResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->leaveInterestGroup(Lorg/chromium/url/internal/mojom/Origin;Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$LeaveInterestGroup_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupParams;->group:Lorg/chromium/blink/mojom/InterestGroup;

    new-instance v4, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceJoinInterestGroupResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/AdAuctionService;->joinInterestGroup(Lorg/chromium/blink/mojom/InterestGroup;Lorg/chromium/blink/mojom/AdAuctionService$JoinInterestGroup_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;->config:Lorg/chromium/blink/mojom/AuctionAdConfig;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionParams;->abortReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceRunAdAuctionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->runAdAuction(Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object v4, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;->adsGuid:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdParams;->config:Lorg/chromium/blink/mojom/AuctionAdConfig;

    new-instance v5, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceFinalizeAdResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/blink/mojom/AdAuctionService;->finalizeAd(Ljava/lang/String;Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/blink/mojom/AdAuctionService$FinalizeAd_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/AdAuctionService;

    iget-object p1, p1, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestParams;->config:Lorg/chromium/blink/mojom/AdRequestConfig;

    new-instance v4, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/AdAuctionService_Internal$AdAuctionServiceCreateAdRequestResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/AdAuctionService;->createAdRequest(Lorg/chromium/blink/mojom/AdRequestConfig;Lorg/chromium/blink/mojom/AdAuctionService$CreateAdRequest_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/AdAuctionService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

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

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
