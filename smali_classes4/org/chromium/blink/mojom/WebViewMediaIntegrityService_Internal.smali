.class Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$WebViewMediaIntegrityServiceGetIntegrityProviderResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$WebViewMediaIntegrityServiceGetIntegrityProviderResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$WebViewMediaIntegrityServiceGetIntegrityProviderResponseParams;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$WebViewMediaIntegrityServiceGetIntegrityProviderParams;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$Stub;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityService;",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
