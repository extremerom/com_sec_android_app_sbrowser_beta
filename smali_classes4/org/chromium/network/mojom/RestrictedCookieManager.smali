.class public interface abstract Lorg/chromium/network/mojom/RestrictedCookieManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/RestrictedCookieManager$CookiesEnabledFor_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$GetCookiesString_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$SetCookieFromString_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$AddChangeListener_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$SetCanonicalCookie_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$GetAllForUrl_Response;,
        Lorg/chromium/network/mojom/RestrictedCookieManager$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addChangeListener(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieChangeListener;Lorg/chromium/network/mojom/RestrictedCookieManager$AddChangeListener_Response;)V
.end method

.method public abstract cookiesEnabledFor(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZLorg/chromium/network/mojom/RestrictedCookieManager$CookiesEnabledFor_Response;)V
.end method

.method public abstract getAllForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieManagerGetOptions;ZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetAllForUrl_Response;)V
.end method

.method public abstract getCookiesString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetCookiesString_Response;)V
.end method

.method public abstract setCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieInclusionStatus;ZZLorg/chromium/network/mojom/RestrictedCookieManager$SetCanonicalCookie_Response;)V
.end method

.method public abstract setCookieFromString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZLjava/lang/String;Lorg/chromium/network/mojom/RestrictedCookieManager$SetCookieFromString_Response;)V
.end method

.method public abstract setInputEventHandlingInProgress()V
.end method
