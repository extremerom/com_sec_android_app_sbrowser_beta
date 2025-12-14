.class Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordResponseParams;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasRedemptionRecordParams;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensResponseParams;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$TrustTokenQueryAnswererHasTrustTokensParams;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$Stub;,
        Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TrustTokenQueryAnswerer;",
            "Lorg/chromium/network/mojom/TrustTokenQueryAnswerer$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/TrustTokenQueryAnswerer_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
