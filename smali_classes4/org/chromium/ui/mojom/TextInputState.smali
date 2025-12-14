.class public final Lorg/chromium/ui/mojom/TextInputState;
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

.field public advancedImeOptions:Z

.field public alwaysHideIme:Z

.field public canComposeInline:Z

.field public composition:Lorg/chromium/gfx/mojom/Range;

.field public editContextControlBounds:Lorg/chromium/gfx/mojom/Rect;

.field public editContextSelectionBounds:Lorg/chromium/gfx/mojom/Rect;

.field public flags:I

.field public imeTextSpansInfo:[Lorg/chromium/ui/mojom/ImeTextSpanInfo;

.field public lastVkVisibilityRequest:I

.field public mode:I

.field public nodeId:I

.field public replyToRequest:Z

.field public selection:Lorg/chromium/gfx/mojom/Range;

.field public showImeIfNeeded:Z

.field public type:I

.field public value:Lorg/chromium/mojo_base/mojom/BigString16;

.field public vkPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/mojom/TextInputState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/ui/mojom/TextInputState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x58

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->nodeId:I

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->type:I

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->mode:I

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->action:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->canComposeInline:Z

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->vkPolicy:I

    iput p1, p0, Lorg/chromium/ui/mojom/TextInputState;->lastVkVisibilityRequest:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ui/mojom/TextInputState;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/ui/mojom/TextInputState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/ui/mojom/TextInputState;

    invoke-direct {v1, v0}, Lorg/chromium/ui/mojom/TextInputState;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->nodeId:I

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->type:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputType;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/TextInputState;->type:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputType;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->type:I

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->mode:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputMode;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/TextInputState;->mode:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputMode;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->mode:I

    const/16 v2, 0x14

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->action:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputAction;->validate(I)V

    iget v2, v1, Lorg/chromium/ui/mojom/TextInputState;->action:I

    invoke-static {v2}, Lorg/chromium/ui/mojom/TextInputAction;->toKnownValue(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->action:I

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v2

    iput v2, v1, Lorg/chromium/ui/mojom/TextInputState;->flags:I

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/ui/mojom/TextInputState;->canComposeInline:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/ui/mojom/TextInputState;->showImeIfNeeded:Z

    const/4 v5, 0x2

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/ui/mojom/TextInputState;->alwaysHideIme:Z

    const/4 v5, 0x3

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v5

    iput-boolean v5, v1, Lorg/chromium/ui/mojom/TextInputState;->replyToRequest:Z

    const/4 v5, 0x4

    invoke-virtual {p0, v3, v5}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/ui/mojom/TextInputState;->advancedImeOptions:Z

    const/16 v3, 0x20

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/BigString16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/BigString16;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/ui/mojom/TextInputState;->value:Lorg/chromium/mojo_base/mojom/BigString16;

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Range;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Range;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/ui/mojom/TextInputState;->selection:Lorg/chromium/gfx/mojom/Range;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Range;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Range;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/ui/mojom/TextInputState;->composition:Lorg/chromium/gfx/mojom/Range;

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/ui/mojom/TextInputState;->editContextControlBounds:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/ui/mojom/TextInputState;->editContextSelectionBounds:Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x48

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/ui/mojom/TextInputState;->vkPolicy:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/VirtualKeyboardPolicy;->validate(I)V

    iget v3, v1, Lorg/chromium/ui/mojom/TextInputState;->vkPolicy:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/VirtualKeyboardPolicy;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/ui/mojom/TextInputState;->vkPolicy:I

    const/16 v3, 0x4c

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/ui/mojom/TextInputState;->lastVkVisibilityRequest:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/VirtualKeyboardVisibilityRequest;->validate(I)V

    iget v3, v1, Lorg/chromium/ui/mojom/TextInputState;->lastVkVisibilityRequest:I

    invoke-static {v3}, Lorg/chromium/ui/mojom/VirtualKeyboardVisibilityRequest;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/ui/mojom/TextInputState;->lastVkVisibilityRequest:I

    const/16 v3, 0x50

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    iput-object v5, v1, Lorg/chromium/ui/mojom/TextInputState;->imeTextSpansInfo:[Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/ui/mojom/TextInputState;->imeTextSpansInfo:[Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    invoke-static {v6}, Lorg/chromium/ui/mojom/ImeTextSpanInfo;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 6

    sget-object v0, Lorg/chromium/ui/mojom/TextInputState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->nodeId:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->type:I

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->mode:I

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->action:I

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->flags:I

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->canComposeInline:Z

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->showImeIfNeeded:Z

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->alwaysHideIme:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->replyToRequest:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/ui/mojom/TextInputState;->advancedImeOptions:Z

    const/4 v5, 0x4

    invoke-virtual {p1, v0, v2, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->value:Lorg/chromium/mojo_base/mojom/BigString16;

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->selection:Lorg/chromium/gfx/mojom/Range;

    const/16 v2, 0x28

    invoke-virtual {p1, v0, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->composition:Lorg/chromium/gfx/mojom/Range;

    const/16 v2, 0x30

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->editContextControlBounds:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x38

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->editContextSelectionBounds:Lorg/chromium/gfx/mojom/Rect;

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->vkPolicy:I

    const/16 v2, 0x48

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/ui/mojom/TextInputState;->lastVkVisibilityRequest:I

    const/16 v2, 0x4c

    invoke-virtual {p1, v0, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/ui/mojom/TextInputState;->imeTextSpansInfo:[Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    const/16 v2, 0x50

    if-nez v0, :cond_0

    invoke-virtual {p1, v2, v3}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v2, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v3

    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/mojom/TextInputState;->imeTextSpansInfo:[Lorg/chromium/ui/mojom/ImeTextSpanInfo;

    array-length v4, v2

    if-ge v0, v4, :cond_1

    aget-object v2, v2, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v2, v4, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
