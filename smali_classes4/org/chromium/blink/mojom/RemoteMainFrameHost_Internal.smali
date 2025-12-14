.class Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostRouteCloseEventParams;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostUpdateTargetUrlResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostUpdateTargetUrlResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostUpdateTargetUrlResponseParams;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostUpdateTargetUrlParams;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostTakeFocusParams;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$RemoteMainFrameHostFocusPageParams;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$Stub;,
        Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RemoteMainFrameHost;",
            "Lorg/chromium/blink/mojom/RemoteMainFrameHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/RemoteMainFrameHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
