.class public Lcom/sec/terrace/browser/webshare/TinBlobReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/blink/mojom/BlobReaderClient;


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mConsumerHandle:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

.field private mExpectedContentSize:J

.field private mMaximumContentSize:J

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mReceivedContentSize:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mOutputStream:Ljava/io/OutputStream;

    iput-wide p2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mMaximumContentSize:J

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webshare/TinBlobReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->lambda$onCalculatedSize$0(I)V

    return-void
.end method

.method private complete()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    return-void

    :catch_0
    const/4 v0, 0x1

    const-string v1, "Failed to close stream."

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCalculatedSize$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->read()V

    goto :goto_0

    :cond_1
    const-string v0, "Watcher reported error."

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private read()V
    .locals 5

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mConsumerHandle:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mBuffer:Ljava/nio/ByteBuffer;

    sget-object v2, Lorg/chromium/mojo/system/DataPipe$ReadFlags;->NONE:Lorg/chromium/mojo/system/DataPipe$ReadFlags;

    invoke-interface {v0, v1, v2}, Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;->readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result v0

    const-string v1, "Failed to read from blob."

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/mojo/system/ResultAnd;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_3

    const-string v0, "No data available"

    invoke-direct {p0, v2, v0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-wide v1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mReceivedContentSize:J

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mReceivedContentSize:J

    iget-wide v3, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mExpectedContentSize:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    cmp-long v0, v1, v3

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->complete()V

    goto :goto_0

    :cond_4
    const-string v0, "Received more bytes than expected size."

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    :goto_0
    return-void

    :catch_1
    const-string v0, "Failed to write to stream."

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_1
    invoke-virtual {v0}, Lorg/chromium/mojo/system/MojoException;->getMojoResult()I

    move-result v0

    const-string v1, "Failed to receive blob."

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    return-void
.end method

.method private reportError(ILjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    :cond_0
    const-string v0, "share"

    invoke-static {v0, p2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {p2}, Lorg/chromium/base/StreamUtil;->closeQuietly(Ljava/io/Closeable;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public onCalculatedSize(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mMaximumContentSize:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    const/16 p1, 0x8

    const-string p2, "Stream exceeds permitted size"

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    return-void

    :cond_1
    iput-wide p3, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mExpectedContentSize:J

    iget-wide p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mReceivedContentSize:J

    cmp-long p1, p1, p3

    if-ltz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->complete()V

    return-void

    :cond_2
    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/mojo/system/Core;->getWatcher()Lorg/chromium/mojo/system/Watcher;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mConsumerHandle:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    sget-object p3, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    new-instance p4, Lcom/sec/terrace/browser/webshare/a;

    invoke-direct {p4, p0}, Lcom/sec/terrace/browser/webshare/a;-><init>(Lcom/sec/terrace/browser/webshare/TinBlobReceiver;)V

    invoke-interface {p1, p2, p3, p4}, Lorg/chromium/mojo/system/Watcher;->start(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Watcher$Callback;)I

    return-void
.end method

.method public onComplete(IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->read()V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/mojo/system/MojoException;->getMojoResult()I

    move-result p1

    const-string v0, "Connection error detected."

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->reportError(ILjava/lang/String;)V

    return-void
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setReceivedContentSize(I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mReceivedContentSize:J

    return-void
.end method

.method public start(Lorg/chromium/blink/mojom/Blob;Lorg/chromium/base/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/blink/mojom/Blob;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mCallback:Lorg/chromium/base/Callback;

    new-instance p2, Lorg/chromium/mojo/system/DataPipe$CreateOptions;

    invoke-direct {p2}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->setElementNumBytes(I)V

    const/high16 v0, 0x20000

    invoke-virtual {p2, v0}, Lorg/chromium/mojo/system/DataPipe$CreateOptions;->setCapacityNumBytes(I)V

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/chromium/mojo/system/Core;->createDataPipe(Lorg/chromium/mojo/system/DataPipe$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object p2

    iget-object v0, p2, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iput-object v0, p0, Lcom/sec/terrace/browser/webshare/TinBlobReceiver;->mConsumerHandle:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object p2, p2, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    invoke-interface {p1, p2, p0}, Lorg/chromium/blink/mojom/Blob;->readAll(Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/blink/mojom/BlobReaderClient;)V

    return-void
.end method
