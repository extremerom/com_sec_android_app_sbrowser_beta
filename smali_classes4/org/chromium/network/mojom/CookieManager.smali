.class public interface abstract Lorg/chromium/network/mojom/CookieManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/CookieManager$SetContentSettings_Response;,
        Lorg/chromium/network/mojom/CookieManager$AllowFileSchemeCookies_Response;,
        Lorg/chromium/network/mojom/CookieManager$FlushCookieStore_Response;,
        Lorg/chromium/network/mojom/CookieManager$DeleteStaleSessionOnlyCookies_Response;,
        Lorg/chromium/network/mojom/CookieManager$DeleteSessionOnlyCookies_Response;,
        Lorg/chromium/network/mojom/CookieManager$DeleteCookies_Response;,
        Lorg/chromium/network/mojom/CookieManager$SiteHasCookieInOtherPartition_Response;,
        Lorg/chromium/network/mojom/CookieManager$DeleteCanonicalCookie_Response;,
        Lorg/chromium/network/mojom/CookieManager$SetCanonicalCookie_Response;,
        Lorg/chromium/network/mojom/CookieManager$GetCookieList_Response;,
        Lorg/chromium/network/mojom/CookieManager$GetAllCookiesWithAccessSemantics_Response;,
        Lorg/chromium/network/mojom/CookieManager$GetAllCookies_Response;,
        Lorg/chromium/network/mojom/CookieManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addCookieChangeListener(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/network/mojom/CookieChangeListener;)V
.end method

.method public abstract addGlobalChangeListener(Lorg/chromium/network/mojom/CookieChangeListener;)V
.end method

.method public abstract allowFileSchemeCookies(ZLorg/chromium/network/mojom/CookieManager$AllowFileSchemeCookies_Response;)V
.end method

.method public abstract blockThirdPartyCookies(Z)V
.end method

.method public abstract cloneInterface(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/network/mojom/CookieManager;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract deleteCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/network/mojom/CookieManager$DeleteCanonicalCookie_Response;)V
.end method

.method public abstract deleteCookies(Lorg/chromium/network/mojom/CookieDeletionFilter;Lorg/chromium/network/mojom/CookieManager$DeleteCookies_Response;)V
.end method

.method public abstract deleteSessionOnlyCookies(Lorg/chromium/network/mojom/CookieManager$DeleteSessionOnlyCookies_Response;)V
.end method

.method public abstract deleteStaleSessionOnlyCookies(Lorg/chromium/network/mojom/CookieManager$DeleteStaleSessionOnlyCookies_Response;)V
.end method

.method public abstract enableAntiTracking(Z)V
.end method

.method public abstract enableThirdPartyCookieBlockingByAntiTracking(Z)V
.end method

.method public abstract flushCookieStore(Lorg/chromium/network/mojom/CookieManager$FlushCookieStore_Response;)V
.end method

.method public abstract getAllCookies(Lorg/chromium/network/mojom/CookieManager$GetAllCookies_Response;)V
.end method

.method public abstract getAllCookiesWithAccessSemantics(Lorg/chromium/network/mojom/CookieManager$GetAllCookiesWithAccessSemantics_Response;)V
.end method

.method public abstract getCookieList(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CookieOptions;Lorg/chromium/network/mojom/CookiePartitionKeyCollection;Lorg/chromium/network/mojom/CookieManager$GetCookieList_Response;)V
.end method

.method public abstract setCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CookieOptions;Lorg/chromium/network/mojom/CookieManager$SetCanonicalCookie_Response;)V
.end method

.method public abstract setContentSettings(I[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;Lorg/chromium/network/mojom/CookieManager$SetContentSettings_Response;)V
.end method

.method public abstract setContentSettingsForTrackerDomainCookieAccess([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V
.end method

.method public abstract setForceKeepSessionState()V
.end method

.method public abstract setMitigationsEnabledFor3pcd(Z)V
.end method

.method public abstract setPreCommitCallbackDelayForTesting(Lorg/chromium/mojo_base/mojom/TimeDelta;)V
.end method

.method public abstract setTrackingProtectionEnabledFor3pcd(Z)V
.end method

.method public abstract siteHasCookieInOtherPartition(Lorg/chromium/network/mojom/SchemefulSite;Lorg/chromium/network/mojom/CookiePartitionKey;Lorg/chromium/network/mojom/CookieManager$SiteHasCookieInOtherPartition_Response;)V
.end method
