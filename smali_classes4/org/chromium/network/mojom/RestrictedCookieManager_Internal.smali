.class Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetInputEventHandlingInProgressParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$Stub;,
        Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/RestrictedCookieManager;",
            "Lorg/chromium/network/mojom/RestrictedCookieManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
