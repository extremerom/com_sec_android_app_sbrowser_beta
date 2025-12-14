.class final Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/network/mojom/RestrictedCookieManager$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    return-void
.end method


# virtual methods
.method public addChangeListener(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieChangeListener;Lorg/chromium/network/mojom/RestrictedCookieManager$AddChangeListener_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->storageAccessApiStatus:I

    iput-object p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->listener:Lorg/chromium/network/mojom/CookieChangeListener;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$AddChangeListener_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public cookiesEnabledFor(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZLorg/chromium/network/mojom/RestrictedCookieManager$CookiesEnabledFor_Response;)V
    .locals 2

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->storageAccessApiStatus:I

    iput-boolean p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->applyDevtoolsOverrides:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 v1, 0x6

    invoke-direct {p2, v1, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsForwardToCallback;

    invoke-direct {p2, p6}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$CookiesEnabledFor_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getAllForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieManagerGetOptions;ZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetAllForUrl_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->storageAccessApiStatus:I

    iput-object p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->options:Lorg/chromium/network/mojom/CookieManagerGetOptions;

    iput-boolean p6, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->isAdTagged:Z

    iput-boolean p7, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->applyDevtoolsOverrides:Z

    iput-boolean p8, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->forceDisableThirdPartyCookies:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 p6, 0x0

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsForwardToCallback;

    invoke-direct {p2, p9}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$GetAllForUrl_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public getCookiesString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetCookiesString_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->storageAccessApiStatus:I

    iput-boolean p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->getVersionSharedMemory:Z

    iput-boolean p6, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->isAdTagged:Z

    iput-boolean p7, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->applyDevtoolsOverrides:Z

    iput-boolean p8, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->forceDisableThirdPartyCookies:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 p6, 0x5

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsForwardToCallback;

    invoke-direct {p2, p9}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$GetCookiesString_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieInclusionStatus;ZZLorg/chromium/network/mojom/RestrictedCookieManager$SetCanonicalCookie_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->cookie:Lorg/chromium/network/mojom/CanonicalCookie;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->storageAccessApiStatus:I

    iput-object p6, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->status:Lorg/chromium/network/mojom/CookieInclusionStatus;

    iput-boolean p7, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->isAdTagged:Z

    iput-boolean p8, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->applyDevtoolsOverrides:Z

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    invoke-direct {p2, p3, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsForwardToCallback;

    invoke-direct {p2, p9}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$SetCanonicalCookie_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setCookieFromString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZLjava/lang/String;Lorg/chromium/network/mojom/RestrictedCookieManager$SetCookieFromString_Response;)V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;-><init>()V

    iput-object p1, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->url:Lorg/chromium/url/mojom/Url;

    iput-object p2, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iput-object p3, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iput p4, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->storageAccessApiStatus:I

    iput-boolean p5, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->getVersionSharedMemory:Z

    iput-boolean p6, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->isAdTagged:Z

    iput-boolean p7, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->applyDevtoolsOverrides:Z

    iput-object p8, v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->cookie:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance p2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 p3, 0x1

    const-wide/16 p4, 0x0

    const/4 p6, 0x4

    invoke-direct {p2, p6, p3, p4, p5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, p0, p2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    new-instance p2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsForwardToCallback;

    invoke-direct {p2, p9}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsForwardToCallback;-><init>(Lorg/chromium/network/mojom/RestrictedCookieManager$SetCookieFromString_Response;)V

    invoke-interface {p1, p0, p2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    return-void
.end method

.method public setInputEventHandlingInProgress()V
    .locals 4

    new-instance v0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetInputEventHandlingInProgressParams;

    invoke-direct {v0}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetInputEventHandlingInProgressParams;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    new-instance v2, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, p0, v2}, Lorg/chromium/mojo/bindings/Struct;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    return-void
.end method
