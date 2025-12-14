.class Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;
.super Lorg/chromium/mojo/system/impl/HandleBase;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/CoreImpl;J)V

    return-void
.end method

.method public constructor <init>(Lorg/chromium/mojo/system/impl/HandleBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/mojo/system/impl/HandleBase;-><init>(Lorg/chromium/mojo/system/impl/HandleBase;)V

    return-void
.end method


# virtual methods
.method public readData(Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;
    .locals 1
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

    iget-object v0, p0, Lorg/chromium/mojo/system/impl/HandleBase;->mCore:Lorg/chromium/mojo/system/impl/CoreImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/mojo/system/impl/CoreImpl;->readData(Lorg/chromium/mojo/system/impl/DataPipeConsumerHandleImpl;Ljava/nio/ByteBuffer;Lorg/chromium/mojo/system/DataPipe$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p0

    return-object p0
.end method
