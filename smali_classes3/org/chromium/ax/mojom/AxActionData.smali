.class public final Lorg/chromium/ax/mojom/AxActionData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public action:I

.field public anchorNodeId:I

.field public anchorOffset:I

.field public childTreeId:Lorg/chromium/ax/mojom/AxTreeId;

.field public customActionId:I

.field public flags:I

.field public focusNodeId:I

.field public focusOffset:I

.field public hitTestEventToFire:I

.field public horizontalScrollAlignment:I

.field public requestId:I

.field public scrollBehavior:I

.field public sourceExtensionId:Ljava/lang/String;

.field public targetNodeId:I

.field public targetPoint:Lorg/chromium/gfx/mojom/Point;

.field public targetRect:Lorg/chromium/gfx/mojom/Rect;

.field public targetRole:I

.field public targetTreeId:Lorg/chromium/ax/mojom/AxTreeId;

.field public value:Ljava/lang/String;

.field public verticalScrollAlignment:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v1, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v2, 0x1

    const/16 v3, 0x80

    invoke-direct {v1, v3, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    new-instance v2, Lorg/chromium/mojo/bindings/DataHeader;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0, v1, v2}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ax/mojom/AxActionData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v4

    sput-object v0, Lorg/chromium/ax/mojom/AxActionData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/16 p1, 0xb5

    iput p1, p0, Lorg/chromium/ax/mojom/AxActionData;->targetRole:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ax/mojom/AxActionData;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/ax/mojom/AxActionData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/ax/mojom/AxActionData;

    invoke-direct {v1, v0}, Lorg/chromium/ax/mojom/AxActionData;-><init>(I)V

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->action:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Action;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->action:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Action;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->action:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetNodeId:I

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lorg/chromium/ax/mojom/AxTreeId;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/ax/mojom/AxTreeId;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetTreeId:Lorg/chromium/ax/mojom/AxTreeId;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ax/mojom/AxActionData;->sourceExtensionId:Ljava/lang/String;

    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->requestId:I

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->flags:I

    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->anchorNodeId:I

    const/16 v2, 0x34

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->anchorOffset:I

    const/16 v2, 0x38

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->focusNodeId:I

    const/16 v2, 0x3c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->focusOffset:I

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->customActionId:I

    const/16 v2, 0x44

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->hitTestEventToFire:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Event;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->hitTestEventToFire:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Event;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->hitTestEventToFire:I

    const/16 v2, 0x48

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x50

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/gfx/mojom/Point;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Point;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetPoint:Lorg/chromium/gfx/mojom/Point;

    const/16 v2, 0x58

    invoke-virtual {p0, v2, v3}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/chromium/ax/mojom/AxActionData;->value:Ljava/lang/String;

    const/16 v2, 0x60

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->horizontalScrollAlignment:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollAlignment;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->horizontalScrollAlignment:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollAlignment;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->horizontalScrollAlignment:I

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->verticalScrollAlignment:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollAlignment;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->verticalScrollAlignment:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollAlignment;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->verticalScrollAlignment:I

    const/16 v2, 0x68

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->scrollBehavior:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollBehavior;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->scrollBehavior:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/ScrollBehavior;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->scrollBehavior:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/16 v2, 0x6c

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetRole:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Role;->validate(I)V

    iget v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetRole:I

    invoke-static {v2}, Lorg/chromium/ax/mojom/Role;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ax/mojom/AxActionData;->targetRole:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const/16 v0, 0x70

    invoke-static {p0, v0}, Lorg/chromium/ax/mojom/AxTreeId;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/ax/mojom/AxTreeId;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/ax/mojom/AxActionData;->childTreeId:Lorg/chromium/ax/mojom/AxTreeId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/ax/mojom/AxActionData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->action:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->targetNodeId:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxActionData;->targetTreeId:Lorg/chromium/ax/mojom/AxTreeId;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxActionData;->sourceExtensionId:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->requestId:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->flags:I

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->anchorNodeId:I

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->anchorOffset:I

    const/16 v1, 0x34

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->focusNodeId:I

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->focusOffset:I

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->customActionId:I

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->hitTestEventToFire:I

    const/16 v1, 0x44

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxActionData;->targetRect:Lorg/chromium/gfx/mojom/Rect;

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxActionData;->targetPoint:Lorg/chromium/gfx/mojom/Point;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ax/mojom/AxActionData;->value:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->horizontalScrollAlignment:I

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->verticalScrollAlignment:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->scrollBehavior:I

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ax/mojom/AxActionData;->targetRole:I

    const/16 v1, 0x6c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/ax/mojom/AxActionData;->childTreeId:Lorg/chromium/ax/mojom/AxTreeId;

    const/16 v0, 0x70

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    return-void
.end method
