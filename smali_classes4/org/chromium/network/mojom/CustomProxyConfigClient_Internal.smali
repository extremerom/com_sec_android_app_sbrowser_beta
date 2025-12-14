.class Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$CustomProxyConfigClientOnCustomProxyConfigUpdatedResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$CustomProxyConfigClientOnCustomProxyConfigUpdatedResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$CustomProxyConfigClientOnCustomProxyConfigUpdatedResponseParams;,
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$CustomProxyConfigClientOnCustomProxyConfigUpdatedParams;,
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$Stub;,
        Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/CustomProxyConfigClient;",
            "Lorg/chromium/network/mojom/CustomProxyConfigClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/CustomProxyConfigClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
