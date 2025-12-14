.class Lorg/chromium/network/mojom/TrustedHeaderClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnHeadersReceivedResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnHeadersReceivedResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnHeadersReceivedResponseParams;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnHeadersReceivedParams;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnBeforeSendHeadersResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnBeforeSendHeadersResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnBeforeSendHeadersResponseParams;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$TrustedHeaderClientOnBeforeSendHeadersParams;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$Stub;,
        Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/TrustedHeaderClient;",
            "Lorg/chromium/network/mojom/TrustedHeaderClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/TrustedHeaderClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/TrustedHeaderClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
