.class final Lorg/chromium/network/mojom/P2pSocketManager_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/network/mojom/P2pSocketManager_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub<",
        "Lorg/chromium/network/mojom/P2pSocketManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/network/mojom/P2pSocketManager;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 12

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

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lorg/chromium/network/mojom/P2pSocketManager;

    iget v4, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->type:I

    iget-object v5, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->localAddress:Lorg/chromium/network/mojom/IpEndPoint;

    iget-object v6, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->portRange:Lorg/chromium/network/mojom/P2pPortRange;

    iget-object v7, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->remoteAddress:Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;

    iget-object v8, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->trafficAnnotation:Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;

    iget-object v9, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->devtoolsToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    iget-object v10, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->client:Lorg/chromium/network/mojom/P2pSocketClient;

    iget-object v11, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerCreateSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface/range {v3 .. v11}, Lorg/chromium/network/mojom/P2pSocketManager;->createSocket(ILorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/P2pPortRange;Lorg/chromium/network/mojom/P2pHostAndIpEndPoint;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/mojo_base/mojom/UnguessableToken;Lorg/chromium/network/mojom/P2pSocketClient;Lorg/chromium/mojo/bindings/InterfaceRequest;)V

    return v2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object p0

    check-cast p0, Lorg/chromium/network/mojom/P2pSocketManager;

    iget-object p1, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerStartNetworkNotificationsParams;->client:Lorg/chromium/network/mojom/P2pNetworkNotificationClient;

    invoke-interface {p0, p1}, Lorg/chromium/network/mojom/P2pSocketManager;->startNetworkNotifications(Lorg/chromium/network/mojom/P2pNetworkNotificationClient;)V

    return v2

    :cond_4
    sget-object p0, Lorg/chromium/network/mojom/P2pSocketManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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

    if-eq v2, v4, :cond_4

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/P2pSocketManager;

    iget-object v4, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->hostName:Ljava/lang/String;

    iget v5, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->addressFamily:I

    iget-boolean p1, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyParams;->enableMdns:Z

    new-instance v6, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v7

    invoke-direct {v6, p0, p2, v7, v8}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressWithFamilyResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, v5, p1, v6}, Lorg/chromium/network/mojom/P2pSocketManager;->getHostAddressWithFamily(Ljava/lang/String;IZLorg/chromium/network/mojom/P2pSocketManager$GetHostAddressWithFamily_Response;)V

    return v3

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/network/mojom/P2pSocketManager;

    iget-object v4, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;->hostName:Ljava/lang/String;

    iget-boolean p1, p1, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressParams;->enableMdns:Z

    new-instance v5, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    invoke-direct {v5, p0, p2, v6, v7}, Lorg/chromium/network/mojom/P2pSocketManager_Internal$P2pSocketManagerGetHostAddressResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v4, p1, v5}, Lorg/chromium/network/mojom/P2pSocketManager;->getHostAddress(Ljava/lang/String;ZLorg/chromium/network/mojom/P2pSocketManager$GetHostAddress_Response;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Interface$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object p0

    sget-object v1, Lorg/chromium/network/mojom/P2pSocketManager_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
