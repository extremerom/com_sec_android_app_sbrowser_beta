.class public Lorg/chromium/mojo/system/impl/CoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/Core;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;,
        Lorg/chromium/mojo/system/impl/CoreImpl$Natives;,
        Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final INVALID_HANDLE:J


# instance fields
.field private final mByteBufferOffset:I

.field private final mCurrentRunLoop:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lorg/chromium/mojo/system/impl/BaseRunLoop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mCurrentRunLoop:Ljava/lang/ThreadLocal;

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, p0, v2, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->getNativeBufferOffset(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/CoreImpl;-><init>()V

    return-void
.end method

.method private allocateDirectBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget p0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mByteBufferOffset:I

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lorg/chromium/mojo/system/Core;
    .locals 1

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl$LazyHolder;->a()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    return-object v0
.end method

.method private static newNativeCreationResult(IJJ)Lorg/chromium/mojo/system/ResultAnd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    new-instance v1, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v0, p0, v1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static newReadMessageResult(I[B[J)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B[J)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    invoke-direct {v0}, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;-><init>()V

    if-nez p0, :cond_0

    iput-object p1, v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mData:[B

    iput-object p2, v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mRawHandles:[J

    :cond_0
    new-instance p1, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {p1, p0, v0}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method

.method private static newResultAndBuffer(ILjava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static newResultAndInteger(II)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static newResultAndLong(IJ)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/mojo/system/ResultAnd;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/chromium/mojo/system/ResultAnd;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    return-object v0
.end method

.method public clearCurrentRunLoop()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/system/impl/CoreImpl;->mCurrentRunLoop:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public close(J)V
    .locals 1

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->close(Lorg/chromium/mojo/system/impl/CoreImpl;J)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {p1, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p1
.end method

.method public closeWithResult(J)I
    .locals 1

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->close(Lorg/chromium/mojo/system/impl/CoreImpl;J)I

    move-result p0

    return p0
.end method

.method public createDataPipe(Lorg/chromium/mojo/system/DataPipe$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/DataPipe$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair<",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getFlags()Lorg/chromium/mojo/system/DataPipe$CreateFlags;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0x8

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getElementNumBytes()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/16 v0, 0xc

    invoke-virtual {p1}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->getCapacityNumBytes()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->createDataPipe(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;

    iget-object v1, v1, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/mojo/system/impl/DataPipeProducerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    new-instance v1, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;

    iget-object p1, p1, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    invoke-static {v0, v1}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;",
            ")",
            "Lorg/chromium/mojo/system/Pair<",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            "Lorg/chromium/mojo/system/MessagePipeHandle;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;->getFlags()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result p1

    const/4 v0, 0x4

    invoke-virtual {v1, v0, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object p1

    invoke-interface {p1, p0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->createMessagePipe(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;

    iget-object v1, v1, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    new-instance v1, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;

    iget-object p1, p1, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    invoke-static {v0, v1}, Lorg/chromium/mojo/system/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/chromium/mojo/system/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0
.end method

.method public getWatcher()Lorg/chromium/mojo/system/Watcher;
    .locals 0

    new-instance p0, Lorg/chromium/mojo/system/impl/WatcherImpl;

    invoke-direct {p0}, Lorg/chromium/mojo/system/impl/WatcherImpl;-><init>()V

    return-object p0
.end method

.method public map(Lorg/chromium/mojo/system/impl/SharedBufferHandleImpl;JJLorg/chromium/mojo/system/SharedBufferHandle$MapFlags;)Ljava/nio/ByteBuffer;
    .locals 9

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()J

    move-result-wide v2

    invoke-virtual {p6}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result v8

    move-object v1, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v8}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->map(Lorg/chromium/mojo/system/impl/CoreImpl;JJJI)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    new-instance p1, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p0

    invoke-direct {p1, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p1
.end method

.method public readData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;",
            "Ljava/nio/ByteBuffer;",
            "Lorg/chromium/mojo/system/DataPipe$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()J

    move-result-wide v2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :goto_0
    move v5, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    goto :goto_0

    :goto_1
    invoke-virtual {p3}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result v6

    move-object v1, p0

    move-object v4, p2

    invoke-interface/range {v0 .. v6}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->readData(Lorg/chromium/mojo/system/impl/CoreImpl;JLjava/nio/ByteBuffer;II)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    const/16 p3, 0x11

    if-ne p1, p3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p0

    invoke-direct {p1, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_3
    return-object p0
.end method

.method public readMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()J

    move-result-wide v1

    invoke-virtual {p2}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result p1

    invoke-interface {v0, p0, v1, v2, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->readMessage(Lorg/chromium/mojo/system/impl/CoreImpl;JI)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p2

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/chromium/mojo/system/MojoException;

    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;

    iget-object v0, p2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mRawHandles:[J

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandles:Ljava/util/List;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-wide v3, v0, v1

    iget-object v5, p2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandles:Ljava/util/List;

    new-instance v6, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;

    invoke-direct {v6, p0, v3, v4}, Lorg/chromium/mojo/system/impl/UntypedHandleImpl;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p0, p2, Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;->mHandles:Ljava/util/List;

    :cond_3
    return-object p1
.end method

.method public unmap(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->unmap(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {p1, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p1
.end method

.method public wrapFileDescriptor(Landroid/os/ParcelFileDescriptor;)Lorg/chromium/mojo/system/UntypedHandle;
    .locals 2

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->createPlatformHandle(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->acquireNativeHandle(J)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object p0

    return-object p0
.end method

.method public writeMessage(Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/MessagePipeHandleImpl;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;",
            "Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {p0, v1}, Lorg/chromium/mojo/system/impl/CoreImpl;->allocateDirectBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojo/system/Handle;

    invoke-interface {v2}, Lorg/chromium/mojo/system/Handle;->releaseNativeHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    move-object v8, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImplJni;->get()Lorg/chromium/mojo/system/impl/CoreImpl$Natives;

    move-result-object v2

    invoke-virtual {p1}, Lorg/chromium/mojo/system/impl/HandleBase;->getMojoHandle()J

    move-result-wide v4

    if-nez p2, :cond_2

    :goto_3
    move v7, v0

    goto :goto_4

    :cond_2
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v0

    goto :goto_3

    :goto_4
    invoke-virtual {p4}, Lorg/chromium/mojo/system/Flags;->getFlags()I

    move-result v9

    move-object v3, p0

    move-object v6, p2

    invoke-interface/range {v2 .. v9}, Lorg/chromium/mojo/system/impl/CoreImpl$Natives;->writeMessage(Lorg/chromium/mojo/system/impl/CoreImpl;JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I

    move-result p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/chromium/mojo/system/MojoException;

    invoke-direct {p1, p0}, Lorg/chromium/mojo/system/MojoException;-><init>(I)V

    throw p1
.end method
