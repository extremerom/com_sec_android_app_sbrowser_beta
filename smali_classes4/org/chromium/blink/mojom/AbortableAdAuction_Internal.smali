.class Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionAbortParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAdditionalBidsParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedAuctionAdResponsePromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDeprecatedRenderUrlReplacementsPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsHeaderAdSlotPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedDirectFromSellerSignalsPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerCurrenciesPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedBuyerTimeoutsPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPerBuyerSignalsPromiseParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$AbortableAdAuctionResolvedPromiseParamParams;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$Stub;,
        Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/AbortableAdAuction;",
            "Lorg/chromium/blink/mojom/AbortableAdAuction$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/AbortableAdAuction_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
