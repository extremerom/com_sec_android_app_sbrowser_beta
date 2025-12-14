.class Lorg/chromium/network/mojom/DevToolsObserver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverCloneParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSriMessageSignatureIssueParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSharedDictionaryErrorParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseErrorParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleInnerResponseParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataErrorParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnSubresourceWebBundleMetadataParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnOrbErrorParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsErrorParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnTrustTokenOperationDoneParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestCompletedParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightResponseParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnCorsPreflightRequestParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnPrivateNetworkRequestParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnEarlyHintsResponseParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawResponseParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$DevToolsObserverOnRawRequestParams;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$Stub;,
        Lorg/chromium/network/mojom/DevToolsObserver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/DevToolsObserver;",
            "Lorg/chromium/network/mojom/DevToolsObserver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/DevToolsObserver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/DevToolsObserver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
