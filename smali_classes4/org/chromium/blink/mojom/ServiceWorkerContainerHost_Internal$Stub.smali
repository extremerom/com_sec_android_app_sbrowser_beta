.class final Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 5

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

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v3, -0x2

    if-eq v1, v3, :cond_6

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostHintToUpdateServiceWorkerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostHintToUpdateServiceWorkerParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->hintToUpdateServiceWorker()V

    return v4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostCloneContainerHostParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostCloneContainerHostParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostCloneContainerHostParams;->containerHost:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {p0, p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->cloneContainerHost(Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v4

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureControllerServiceWorkerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureControllerServiceWorkerParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    iget-object v1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureControllerServiceWorkerParams;->receiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureControllerServiceWorkerParams;->purpose:I

    invoke-interface {p0, v1, p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->ensureControllerServiceWorker(Lorg/chromium/mojo/bindings/InterfaceRequest;I)V

    return v4

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostOnExecutionReadyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostOnExecutionReadyParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    invoke-interface {p0}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->onExecutionReady()V

    return v4

    :cond_6
    sget-object p0, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    const/4 v4, 0x7

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessParams;->files:[Lorg/chromium/mojo_base/mojom/FilePath;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostEnsureFileAccessResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->ensureFileAccess([Lorg/chromium/mojo_base/mojom/FilePath;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$EnsureFileAccess_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    new-instance v2, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationForReadyResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->getRegistrationForReady(Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrationForReady_Response;)V

    return v3

    :cond_4
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsParams;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p1

    check-cast p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    new-instance v2, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v4

    invoke-direct {v2, p0, p2, v4, v5}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationsResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {p1, v2}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->getRegistrations(Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistrations_Response;)V

    return v3

    :cond_5
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationParams;->clientUrl:Lorg/chromium/url/mojom/Url;

    new-instance v4, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v5

    invoke-direct {v4, p0, p2, v5, v6}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostGetRegistrationResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, p1, v4}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->getRegistration(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$GetRegistration_Response;)V

    return v3

    :cond_6
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;

    iget-object v4, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;->scriptUrl:Lorg/chromium/url/mojom/Url;

    iget-object v5, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;->options:Lorg/chromium/blink/mojom/ServiceWorkerRegistrationOptions;

    iget-object p1, p1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterParams;->outsideFetchClientSettingsObject:Lorg/chromium/blink/mojom/FetchClientSettingsObject;

    new-instance v6, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal$ServiceWorkerContainerHostRegisterResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost;->register(Lorg/chromium/url/mojom/Url;Lorg/chromium/blink/mojom/ServiceWorkerRegistrationOptions;Lorg/chromium/blink/mojom/FetchClientSettingsObject;Lorg/chromium/blink/mojom/ServiceWorkerContainerHost$Register_Response;)V

    return v3

    :cond_7
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/ServiceWorkerContainerHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
.end method
