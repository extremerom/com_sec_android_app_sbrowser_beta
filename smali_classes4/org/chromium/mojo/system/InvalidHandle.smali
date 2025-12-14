.class public Lorg/chromium/mojo/system/InvalidHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/UntypedHandle;
.implements Lorg/chromium/mojo/system/MessagePipeHandle;
.implements Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
.implements Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
.implements Lorg/chromium/mojo/system/SharedBufferHandle;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/mojo/system/InvalidHandle;

    invoke-direct {v0}, Lorg/chromium/mojo/system/InvalidHandle;-><init>()V

    sput-object v0, Lorg/chromium/mojo/system/InvalidHandle;->INSTANCE:Lorg/chromium/mojo/system/InvalidHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public map(JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;
    .locals 0

    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public pass()Lorg/chromium/mojo/system/InvalidHandle;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic pass()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/mojo/system/InvalidHandle;->pass()Lorg/chromium/mojo/system/InvalidHandle;

    move-result-object p0

    return-object p0
.end method

.method public readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/mojo/system/DataPipe$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public readMessage(Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;",
            ">;"
        }
    .end annotation

    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public releaseNativeHandle()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toDataPipeConsumerHandle()Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;
    .locals 0

    return-object p0
.end method

.method public toDataPipeProducerHandle()Lorg/chromium/mojo/system/DataPipe$ProducerHandle;
    .locals 0

    return-object p0
.end method

.method public toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 0

    return-object p0
.end method

.method public toSharedBufferHandle()Lorg/chromium/mojo/system/SharedBufferHandle;
    .locals 0

    return-object p0
.end method

.method public toUntypedHandle()Lorg/chromium/mojo/system/UntypedHandle;
    .locals 0

    return-object p0
.end method

.method public unmap(Ljava/nio/ByteBuffer;)V
    .locals 0

    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation

    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method
