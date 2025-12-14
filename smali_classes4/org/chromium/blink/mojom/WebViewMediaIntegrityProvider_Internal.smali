.class Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$WebViewMediaIntegrityProviderRequestTokenResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$WebViewMediaIntegrityProviderRequestTokenResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$WebViewMediaIntegrityProviderRequestTokenResponseParams;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$WebViewMediaIntegrityProviderRequestTokenParams;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$Stub;,
        Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider;",
            "Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/WebViewMediaIntegrityProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
