.class final Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/RestrictedCookieManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/RestrictedCookieManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetInputEventHandlingInProgressParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetInputEventHandlingInProgressParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/RestrictedCookieManager;

    invoke-interface {p0}, Lorg/chromium/network/mojom/RestrictedCookieManager;->setInputEventHandlingInProgress()V

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object p0, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, p1}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 18

    move-object/from16 v0, p2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual {v3, v5}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v5

    if-nez v5, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_8

    if-eqz v5, :cond_7

    if-eq v5, v7, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    if-eq v5, v4, :cond_4

    if-eq v5, v6, :cond_3

    const/4 v4, 0x6

    if-eq v5, v4, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v9, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v10, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v11, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v12, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->storageAccessApiStatus:I

    iget-boolean v13, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForParams;->applyDevtoolsOverrides:Z

    new-instance v14, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v3

    invoke-direct {v14, v2, v0, v3, v4}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerCookiesEnabledForResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v8 .. v14}, Lorg/chromium/network/mojom/RestrictedCookieManager;->cookiesEnabledFor(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZLorg/chromium/network/mojom/RestrictedCookieManager$CookiesEnabledFor_Response;)V

    return v7

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v9, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v10, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v11, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v12, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->storageAccessApiStatus:I

    iget-boolean v13, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->getVersionSharedMemory:Z

    iget-boolean v14, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->isAdTagged:Z

    iget-boolean v15, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->applyDevtoolsOverrides:Z

    iget-boolean v2, v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringParams;->forceDisableThirdPartyCookies:Z

    new-instance v4, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v5

    move/from16 v16, v2

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v1

    invoke-direct {v4, v5, v0, v1, v2}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetCookiesStringResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    move-object/from16 v17, v4

    invoke-interface/range {v8 .. v17}, Lorg/chromium/network/mojom/RestrictedCookieManager;->getCookiesString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetCookiesString_Response;)V

    return v7

    :cond_4
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v9, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v10, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v11, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v12, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->storageAccessApiStatus:I

    iget-boolean v13, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->getVersionSharedMemory:Z

    iget-boolean v14, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->isAdTagged:Z

    iget-boolean v15, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->applyDevtoolsOverrides:Z

    iget-object v1, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringParams;->cookie:Ljava/lang/String;

    new-instance v2, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v4

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v2, v4, v0, v6, v7}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCookieFromStringResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface/range {v8 .. v17}, Lorg/chromium/network/mojom/RestrictedCookieManager;->setCookieFromString(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;IZZZLjava/lang/String;Lorg/chromium/network/mojom/RestrictedCookieManager$SetCookieFromString_Response;)V

    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v7, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v8, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v9, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v10, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->storageAccessApiStatus:I

    iget-object v11, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerParams;->listener:Lorg/chromium/network/mojom/CookieChangeListener;

    new-instance v12, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    invoke-direct {v12, v1, v0, v2, v3}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerAddChangeListenerResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v12}, Lorg/chromium/network/mojom/RestrictedCookieManager;->addChangeListener(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieChangeListener;Lorg/chromium/network/mojom/RestrictedCookieManager$AddChangeListener_Response;)V

    const/4 v0, 0x1

    return v0

    :cond_6
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v7, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->cookie:Lorg/chromium/network/mojom/CanonicalCookie;

    iget-object v8, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v9, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v10, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v11, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->storageAccessApiStatus:I

    iget-object v12, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->status:Lorg/chromium/network/mojom/CookieInclusionStatus;

    iget-boolean v13, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->isAdTagged:Z

    iget-boolean v14, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieParams;->applyDevtoolsOverrides:Z

    new-instance v15, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    invoke-direct {v15, v1, v0, v2, v3}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerSetCanonicalCookieResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v15}, Lorg/chromium/network/mojom/RestrictedCookieManager;->setCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieInclusionStatus;ZZLorg/chromium/network/mojom/RestrictedCookieManager$SetCanonicalCookie_Response;)V

    const/4 v0, 0x1

    return v0

    :cond_7
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/chromium/network/mojom/RestrictedCookieManager;

    iget-object v7, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v8, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->siteForCookies:Lorg/chromium/network/mojom/SiteForCookies;

    iget-object v9, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->topFrameOrigin:Lorg/chromium/url/internal/mojom/Origin;

    iget v10, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->storageAccessApiStatus:I

    iget-object v11, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->options:Lorg/chromium/network/mojom/CookieManagerGetOptions;

    iget-boolean v12, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->isAdTagged:Z

    iget-boolean v13, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->applyDevtoolsOverrides:Z

    iget-boolean v14, v1, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlParams;->forceDisableThirdPartyCookies:Z

    new-instance v15, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v2

    invoke-direct {v15, v1, v0, v2, v3}, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal$RestrictedCookieManagerGetAllForUrlResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v6 .. v15}, Lorg/chromium/network/mojom/RestrictedCookieManager;->getAllForUrl(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/SiteForCookies;Lorg/chromium/url/internal/mojom/Origin;ILorg/chromium/network/mojom/CookieManagerGetOptions;ZZZLorg/chromium/network/mojom/RestrictedCookieManager$GetAllForUrl_Response;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    sget-object v3, Lorg/chromium/network/mojom/RestrictedCookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v3, v2, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1
.end method
