.class final Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WidgetInputHandlerHostImeCompositionRangeChangedParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public characterBounds:[Lorg/chromium/gfx/mojom/Rect;

.field public range:Lorg/chromium/gfx/mojom/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v1, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v1}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v1

    iget v1, v1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;

    invoke-direct {v2, v1}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v1}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/gfx/mojom/Range;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Range;

    move-result-object v4

    iput-object v4, v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->range:Lorg/chromium/gfx/mojom/Range;

    const/16 v4, 0x10

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v4

    if-nez v4, :cond_1

    iput-object v0, v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v5, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/gfx/mojom/Rect;

    iput-object v5, v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    move v5, v1

    :goto_0
    iget v6, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_2

    const/16 v6, 0x8

    invoke-static {v5, v6, v3, v4, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v2, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    invoke-static {v6}, Lorg/chromium/gfx/mojom/Rect;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/gfx/mojom/Rect;

    move-result-object v6

    aput-object v6, v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v2

    :goto_2
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->range:Lorg/chromium/gfx/mojom/Range;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    const/16 v3, 0x10

    if-nez v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, v3, p0}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/chromium/blink/mojom/WidgetInputHandlerHost_Internal$WidgetInputHandlerHostImeCompositionRangeChangedParams;->characterBounds:[Lorg/chromium/gfx/mojom/Rect;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
