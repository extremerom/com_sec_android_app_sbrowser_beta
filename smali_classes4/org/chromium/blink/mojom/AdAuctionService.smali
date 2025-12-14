.class public interface abstract Lorg/chromium/blink/mojom/AdAuctionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedReplaceInUrn_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedGetUrlFromUrn_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$ClearOriginJoinedInterestGroups_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$LeaveInterestGroup_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$JoinInterestGroup_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$FinalizeAd_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$CreateAdRequest_Response;,
        Lorg/chromium/blink/mojom/AdAuctionService$Proxy;
    }
.end annotation


# virtual methods
.method public abstract clearOriginJoinedInterestGroups(Lorg/chromium/url/internal/mojom/Origin;[Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$ClearOriginJoinedInterestGroups_Response;)V
.end method

.method public abstract createAdRequest(Lorg/chromium/blink/mojom/AdRequestConfig;Lorg/chromium/blink/mojom/AdAuctionService$CreateAdRequest_Response;)V
.end method

.method public abstract deprecatedGetUrlFromUrn(Lorg/chromium/url/mojom/Url;ZLorg/chromium/blink/mojom/AdAuctionService$DeprecatedGetUrlFromUrn_Response;)V
.end method

.method public abstract deprecatedReplaceInUrn(Lorg/chromium/url/mojom/Url;[Lorg/chromium/blink/mojom/AdKeywordReplacement;Lorg/chromium/blink/mojom/AdAuctionService$DeprecatedReplaceInUrn_Response;)V
.end method

.method public abstract finalizeAd(Ljava/lang/String;Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/blink/mojom/AdAuctionService$FinalizeAd_Response;)V
.end method

.method public abstract getInterestGroupAdAuctionData(Ljava/util/Map;Lorg/chromium/blink/mojom/AuctionDataConfig;Lorg/chromium/blink/mojom/AdAuctionService$GetInterestGroupAdAuctionData_Response;)V
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
.end method

.method public abstract joinInterestGroup(Lorg/chromium/blink/mojom/InterestGroup;Lorg/chromium/blink/mojom/AdAuctionService$JoinInterestGroup_Response;)V
.end method

.method public abstract leaveInterestGroup(Lorg/chromium/url/internal/mojom/Origin;Ljava/lang/String;Lorg/chromium/blink/mojom/AdAuctionService$LeaveInterestGroup_Response;)V
.end method

.method public abstract leaveInterestGroupForDocument()V
.end method

.method public abstract runAdAuction(Lorg/chromium/blink/mojom/AuctionAdConfig;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/AdAuctionService$RunAdAuction_Response;)V
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
.end method

.method public abstract updateAdInterestGroups()V
.end method
