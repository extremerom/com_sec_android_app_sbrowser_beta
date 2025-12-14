.class Lorg/chromium/mojo/bindings/Encoder$EncoderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EncoderState"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public byteBuffer:Ljava/nio/ByteBuffer;

.field public final core:Lorg/chromium/mojo/system/Core;

.field public dataEnd:I

.field public final handles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/mojo/system/Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/system/Core;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->handles:Ljava/util/List;

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->core:Lorg/chromium/mojo/system/Core;

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x400

    :goto_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/mojo/system/Core;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;-><init>(Lorg/chromium/mojo/system/Core;I)V

    return-void
.end method

.method private growIfNeeded()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public claimMemory(I)V
    .locals 1

    iget v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->dataEnd:I

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Encoder$EncoderState;->growIfNeeded()V

    return-void
.end method
