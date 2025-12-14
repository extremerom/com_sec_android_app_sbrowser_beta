.class final Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/blink/mojom/SharedWorkerFactory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/blink/mojom/SharedWorkerFactory;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 29

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/chromium/blink/mojom/SharedWorkerFactory;

    iget-object v4, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->info:Lorg/chromium/blink/mojom/SharedWorkerInfo;

    iget-object v5, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->token:Lorg/chromium/blink/mojom/SharedWorkerToken;

    iget-object v6, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->constructorKey:Lorg/chromium/blink/mojom/StorageKey;

    iget-object v7, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->origin:Lorg/chromium/url/internal/mojom/Origin;

    iget-boolean v8, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->isConstructorSecureContext:Z

    iget-object v9, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->userAgent:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->uaMetadata:Lorg/chromium/blink/mojom/UserAgentMetadata;

    iget-boolean v11, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->pauseOnStart:Z

    iget-object v12, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->devtoolsWorkerToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v13, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->rendererPreferences:Lorg/chromium/blink/mojom/RendererPreferences;

    iget-object v14, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->preferenceWatcherReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v15, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->contentSettings:Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;

    iget-object v2, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->serviceWorkerContainerInfo:Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->mainScriptLoadParams:Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;

    move-object/from16 v17, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->subresourceLoaderFactories:Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;

    move-object/from16 v18, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->controllerInfo:Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;

    move-object/from16 v19, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->policyContainer:Lorg/chromium/blink/mojom/PolicyContainer;

    move-object/from16 v20, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->host:Lorg/chromium/blink/mojom/SharedWorkerHost;

    move-object/from16 v21, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->sharedWorker:Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-object/from16 v22, v1

    iget-object v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->browserInterfaceBroker:Lorg/chromium/blink/mojom/BrowserInterfaceBroker;

    move-object/from16 v23, v1

    move-object/from16 v16, v2

    iget-wide v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->ukmSourceId:J

    move-wide/from16 v24, v1

    iget-boolean v1, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->requireCrossSiteRequestForCookies:Z

    iget-object v2, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->coepReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v0, v0, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal$SharedWorkerFactoryCreateSharedWorkerParams;->dipReportingObserverReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    move/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, v0

    invoke-interface/range {v3 .. v28}, Lorg/chromium/blink/mojom/SharedWorkerFactory;->createSharedWorker(Lorg/chromium/blink/mojom/SharedWorkerInfo;Lorg/chromium/blink/mojom/SharedWorkerToken;Lorg/chromium/blink/mojom/StorageKey;Lorg/chromium/url/internal/mojom/Origin;ZLjava/lang/String;Lorg/chromium/blink/mojom/UserAgentMetadata;ZLorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/blink/mojom/RendererPreferences;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/WorkerContentSettingsProxy;Lorg/chromium/blink/mojom/ServiceWorkerContainerInfoForClient;Lorg/chromium/blink/mojom/WorkerMainScriptLoadParams;Lorg/chromium/blink/mojom/UrlLoaderFactoryBundle;Lorg/chromium/blink/mojom/ControllerServiceWorkerInfo;Lorg/chromium/blink/mojom/PolicyContainer;Lorg/chromium/blink/mojom/SharedWorkerHost;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/blink/mojom/BrowserInterfaceBroker;JZLorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v1, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

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

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->hasFlag(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/blink/mojom/SharedWorkerFactory_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {p0, v1, p1, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method
