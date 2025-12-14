.class public interface abstract Lorg/chromium/network/mojom/UdpSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/UdpSocket$Send_Response;,
        Lorg/chromium/network/mojom/UdpSocket$SendTo_Response;,
        Lorg/chromium/network/mojom/UdpSocket$LeaveGroup_Response;,
        Lorg/chromium/network/mojom/UdpSocket$JoinGroup_Response;,
        Lorg/chromium/network/mojom/UdpSocket$SetReceiveBufferSize_Response;,
        Lorg/chromium/network/mojom/UdpSocket$SetSendBufferSize_Response;,
        Lorg/chromium/network/mojom/UdpSocket$SetBroadcast_Response;,
        Lorg/chromium/network/mojom/UdpSocket$Connect_Response;,
        Lorg/chromium/network/mojom/UdpSocket$Bind_Response;,
        Lorg/chromium/network/mojom/UdpSocket$Proxy;
    }
.end annotation


# virtual methods
.method public abstract bind(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/UdpSocketOptions;Lorg/chromium/network/mojom/UdpSocket$Bind_Response;)V
.end method

.method public abstract close()V
.end method

.method public abstract connect(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/network/mojom/UdpSocketOptions;Lorg/chromium/network/mojom/UdpSocket$Connect_Response;)V
.end method

.method public abstract joinGroup(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/UdpSocket$JoinGroup_Response;)V
.end method

.method public abstract leaveGroup(Lorg/chromium/network/mojom/IpAddress;Lorg/chromium/network/mojom/UdpSocket$LeaveGroup_Response;)V
.end method

.method public abstract receiveMore(I)V
.end method

.method public abstract receiveMoreWithBufferSize(II)V
.end method

.method public abstract send(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/UdpSocket$Send_Response;)V
.end method

.method public abstract sendTo(Lorg/chromium/network/mojom/IpEndPoint;Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/MutableNetworkTrafficAnnotationTag;Lorg/chromium/network/mojom/UdpSocket$SendTo_Response;)V
.end method

.method public abstract setBroadcast(ZLorg/chromium/network/mojom/UdpSocket$SetBroadcast_Response;)V
.end method

.method public abstract setReceiveBufferSize(ILorg/chromium/network/mojom/UdpSocket$SetReceiveBufferSize_Response;)V
.end method

.method public abstract setSendBufferSize(ILorg/chromium/network/mojom/UdpSocket$SetSendBufferSize_Response;)V
.end method
