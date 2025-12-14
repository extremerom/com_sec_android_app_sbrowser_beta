.class final Lorg/chromium/network/mojom/CookieManager_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/CookieManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/CookieManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/CookieManager;)V
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

    if-eq v1, v2, :cond_2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsForTrackerDomainCookieAccessParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsForTrackerDomainCookieAccessParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsForTrackerDomainCookieAccessParams;->settings:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->setContentSettingsForTrackerDomainCookieAccess([Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;)V

    return v2

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableThirdPartyCookieBlockingByAntiTrackingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableThirdPartyCookieBlockingByAntiTrackingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableThirdPartyCookieBlockingByAntiTrackingParams;->enable:Z

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->enableThirdPartyCookieBlockingByAntiTracking(Z)V

    return v2

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableAntiTrackingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableAntiTrackingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerEnableAntiTrackingParams;->enable:Z

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->enableAntiTracking(Z)V

    return v2

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetPreCommitCallbackDelayForTestingParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetPreCommitCallbackDelayForTestingParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetPreCommitCallbackDelayForTestingParams;->delay:Lorg/chromium/mojo_base/mojom/TimeDelta;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->setPreCommitCallbackDelayForTesting(Lorg/chromium/mojo_base/mojom/TimeDelta;)V

    return v2

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetTrackingProtectionEnabledFor3pcdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetTrackingProtectionEnabledFor3pcdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetTrackingProtectionEnabledFor3pcdParams;->enable:Z

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->setTrackingProtectionEnabledFor3pcd(Z)V

    return v2

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetMitigationsEnabledFor3pcdParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetMitigationsEnabledFor3pcdParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetMitigationsEnabledFor3pcdParams;->enable:Z

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->setMitigationsEnabledFor3pcd(Z)V

    return v2

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerBlockThirdPartyCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerBlockThirdPartyCookiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerBlockThirdPartyCookiesParams;->block:Z

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->blockThirdPartyCookies(Z)V

    return v2

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetForceKeepSessionStateParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetForceKeepSessionStateParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    invoke-interface {p0}, Lorg/chromium/network/mojom/CookieManager;->setForceKeepSessionState()V

    return v2

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerCloneInterfaceParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerCloneInterfaceParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerCloneInterfaceParams;->newInterface:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->cloneInterface(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddGlobalChangeListenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddGlobalChangeListenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddGlobalChangeListenerParams;->notificationPointer:Lorg/chromium/network/mojom/CookieChangeListener;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/CookieManager;->addGlobalChangeListener(Lorg/chromium/network/mojom/CookieChangeListener;)V

    return v2

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/CookieManager;

    iget-object v1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v3, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAddCookieChangeListenerParams;->listener:Lorg/chromium/network/mojom/CookieChangeListener;

    invoke-interface {p0, v1, v3, p1}, Lorg/chromium/network/mojom/CookieManager;->addCookieChangeListener(Lorg/chromium/url/mojom/Url;Ljava/lang/String;Lorg/chromium/network/mojom/CookieChangeListener;)V

    return v2

    :cond_2
    sget-object p0, Lorg/chromium/network/mojom/CookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget v4, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsParams;->contentSettingsType:I

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsParams;->settings:[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;

    new-instance v5, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetContentSettingsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/CookieManager;->setContentSettings(I[Lorg/chromium/content_settings/mojom/ContentSettingPatternSource;Lorg/chromium/network/mojom/CookieManager$SetContentSettings_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesParams;->allow:Z

    new-instance v4, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerAllowFileSchemeCookiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/CookieManager;->allowFileSchemeCookies(ZLorg/chromium/network/mojom/CookieManager$AllowFileSchemeCookies_Response;)V

    return v3

    :pswitch_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/CookieManager;

    new-instance v2, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerFlushCookieStoreResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/CookieManager;->flushCookieStore(Lorg/chromium/network/mojom/CookieManager$FlushCookieStore_Response;)V

    return v3

    :pswitch_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/CookieManager;

    new-instance v2, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteStaleSessionOnlyCookiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/CookieManager;->deleteStaleSessionOnlyCookies(Lorg/chromium/network/mojom/CookieManager$DeleteStaleSessionOnlyCookies_Response;)V

    return v3

    :pswitch_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/CookieManager;

    new-instance v2, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteSessionOnlyCookiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/CookieManager;->deleteSessionOnlyCookies(Lorg/chromium/network/mojom/CookieManager$DeleteSessionOnlyCookies_Response;)V

    return v3

    :pswitch_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesParams;->filter:Lorg/chromium/network/mojom/CookieDeletionFilter;

    new-instance v4, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCookiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/CookieManager;->deleteCookies(Lorg/chromium/network/mojom/CookieDeletionFilter;Lorg/chromium/network/mojom/CookieManager$DeleteCookies_Response;)V

    return v3

    :pswitch_7
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-object v4, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionParams;->schemefulSite:Lorg/chromium/network/mojom/SchemefulSite;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionParams;->partitionKey:Lorg/chromium/network/mojom/CookiePartitionKey;

    new-instance v5, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSiteHasCookieInOtherPartitionResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/CookieManager;->siteHasCookieInOtherPartition(Lorg/chromium/network/mojom/SchemefulSite;Lorg/chromium/network/mojom/CookiePartitionKey;Lorg/chromium/network/mojom/CookieManager$SiteHasCookieInOtherPartition_Response;)V

    return v3

    :pswitch_8
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieParams;->cookie:Lorg/chromium/network/mojom/CanonicalCookie;

    new-instance v4, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerDeleteCanonicalCookieResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/network/mojom/CookieManager;->deleteCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/network/mojom/CookieManager$DeleteCanonicalCookie_Response;)V

    return v3

    :pswitch_9
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-object v4, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;->cookie:Lorg/chromium/network/mojom/CanonicalCookie;

    iget-object v5, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;->sourceUrl:Lorg/chromium/url/mojom/Url;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieParams;->cookieOptions:Lorg/chromium/network/mojom/CookieOptions;

    new-instance v6, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerSetCanonicalCookieResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/CookieManager;->setCanonicalCookie(Lorg/chromium/network/mojom/CanonicalCookie;Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CookieOptions;Lorg/chromium/network/mojom/CookieManager$SetCanonicalCookie_Response;)V

    return v3

    :pswitch_a
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/CookieManager;

    iget-object v4, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;->url:Lorg/chromium/url/mojom/Url;

    iget-object v5, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;->cookieOptions:Lorg/chromium/network/mojom/CookieOptions;

    iget-object p1, p1, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListParams;->cookiePartitionKeyCollection:Lorg/chromium/network/mojom/CookiePartitionKeyCollection;

    new-instance v6, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetCookieListResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/CookieManager;->getCookieList(Lorg/chromium/url/mojom/Url;Lorg/chromium/network/mojom/CookieOptions;Lorg/chromium/network/mojom/CookiePartitionKeyCollection;Lorg/chromium/network/mojom/CookieManager$GetCookieList_Response;)V

    return v3

    :pswitch_b
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/CookieManager;

    new-instance v2, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesWithAccessSemanticsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/CookieManager;->getAllCookiesWithAccessSemantics(Lorg/chromium/network/mojom/CookieManager$GetAllCookiesWithAccessSemantics_Response;)V

    return v3

    :pswitch_c
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/network/mojom/CookieManager;

    new-instance v2, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/network/mojom/CookieManager_Internal$CookieManagerGetAllCookiesResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/network/mojom/CookieManager;->getAllCookies(Lorg/chromium/network/mojom/CookieManager$GetAllCookies_Response;)V

    return v3

    :pswitch_d
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/CookieManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

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

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
