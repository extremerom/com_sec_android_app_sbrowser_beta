.class interface abstract Lorg/chromium/mojo/system/impl/CoreImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/system/impl/CoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract close(Lorg/chromium/mojo/system/impl/CoreImpl;J)I
.end method

.method public abstract createDataPipe(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/CoreImpl;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createMessagePipe(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/CoreImpl;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/impl/CoreImpl$RawHandlePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPlatformHandle(I)J
.end method

.method public abstract getNativeBufferOffset(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;I)I
.end method

.method public abstract map(Lorg/chromium/mojo/system/impl/CoreImpl;JJJI)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/CoreImpl;",
            "JJJI)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readData(Lorg/chromium/mojo/system/impl/CoreImpl;JLjava/nio/ByteBuffer;II)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/CoreImpl;",
            "J",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readMessage(Lorg/chromium/mojo/system/impl/CoreImpl;JI)Lorg/chromium/mojo/system/ResultAnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/system/impl/CoreImpl;",
            "JI)",
            "Lorg/chromium/mojo/system/ResultAnd<",
            "Lorg/chromium/mojo/system/MessagePipeHandle$ReadMessageResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract unmap(Lorg/chromium/mojo/system/impl/CoreImpl;Ljava/nio/ByteBuffer;)I
.end method

.method public abstract writeMessage(Lorg/chromium/mojo/system/impl/CoreImpl;JLjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)I
.end method
