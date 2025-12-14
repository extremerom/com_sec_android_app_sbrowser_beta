.class Lorg/chromium/net/AndroidNetworkLibrary$SocketFd$SocketImplFd;
.super Ljava/net/SocketImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/AndroidNetworkLibrary$SocketFd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketImplFd"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/SocketImpl;-><init>()V

    iput-object p1, p0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public accept(Ljava/net/SocketImpl;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "accept not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public available()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "accept not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bind(Ljava/net/InetAddress;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "accept not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public connect(Ljava/lang/String;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "connect not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "connect not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "connect not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create(Z)V
    .locals 0

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getInputStream not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "getOption not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "getOutputStream not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public listen(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "listen not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public sendUrgentData(I)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "sendUrgentData not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "setOption not implemented"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
