.class Lorg/chromium/network/mojom/CookieManager_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsForTrackerDomainCookieAccessParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableThirdPartyCookieBlockingByAntiTrackingParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableAntiTrackingParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetPreCommitCallbackDelayForTestingParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetTrackingProtectionEnabledFor3pcdParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetMitigationsEnabledFor3pcdParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerBlockThirdPartyCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetForceKeepSessionStateParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerCloneInterfaceParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddGlobalChangeListenerParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesResponseParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesParams;,
        Lorg/chromium/network/mojom/CookieManager_Internal$Stub;,
        Lorg/chromium/network/mojom/CookieManager_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/CookieManager;",
            "Lorg/chromium/network/mojom/CookieManager$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/CookieManager_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/CookieManager_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/CookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
