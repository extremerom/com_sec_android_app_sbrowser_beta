.class public abstract Lorg/chromium/mojo/bindings/Struct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mEncodedBaseSize:I

.field private final mVersion:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    iput p2, p0, Lorg/chromium/mojo/bindings/Struct;->mVersion:I

    return-void
.end method


# virtual methods
.method public abstract encode(Lorg/chromium/mojo/bindings/Encoder;)V
.end method

.method public serialize()Ljava/nio/ByteBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->serialize(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/bindings/Message;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Message;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Handles are discarded."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public serialize(Lorg/chromium/mojo/system/Core;)Lorg/chromium/mojo/bindings/Message;
    .locals 2

    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget v1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    invoke-direct {v0, p1, v1}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object p0

    return-object p0
.end method

.method public serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/Encoder;

    iget v1, p0, Lorg/chromium/mojo/bindings/Struct;->mEncodedBaseSize:I

    invoke-virtual {p2}, Lorg/chromium/mojo/bindings/MessageHeader;->getSize()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, p1, v2}, Lorg/chromium/mojo/bindings/Encoder;-><init>(Lorg/chromium/mojo/system/Core;I)V

    invoke-virtual {p2, v0}, Lorg/chromium/mojo/bindings/MessageHeader;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Struct;->encode(Lorg/chromium/mojo/bindings/Encoder;)V

    new-instance p0, Lorg/chromium/mojo/bindings/ServiceMessage;

    invoke-virtual {v0}, Lorg/chromium/mojo/bindings/Encoder;->getMessage()Lorg/chromium/mojo/bindings/Message;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/ServiceMessage;-><init>(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageHeader;)V

    return-object p0
.end method
