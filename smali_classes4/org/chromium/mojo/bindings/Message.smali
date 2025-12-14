.class public Lorg/chromium/mojo/bindings/Message;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;

.field private final mHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;"
        }
    .end annotation
.end field

.field private mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Message;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lorg/chromium/mojo/bindings/Message;->mHandles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;
    .locals 1

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/mojo/bindings/ServiceMessage;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/ServiceMessage;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    :cond_0
    iget-object p0, p0, Lorg/chromium/mojo/bindings/Message;->mWithHeader:Lorg/chromium/mojo/bindings/ServiceMessage;

    return-object p0
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Message;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getHandles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/chromium/mojo/system/Handle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/mojo/bindings/Message;->mHandles:Ljava/util/List;

    return-object p0
.end method
