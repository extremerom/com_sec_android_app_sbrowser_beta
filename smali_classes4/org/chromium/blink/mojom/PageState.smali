.class public final Lorg/chromium/blink/mojom/PageState;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public referencedFiles:[Lorg/chromium/mojo_base/mojom/String16;

.field public top:Lorg/chromium/blink/mojom/FrameState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/PageState;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/PageState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 10

    sget-object v0, Lorg/chromium/blink/mojom/PageState;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/PageState;->referencedFiles:[Lorg/chromium/mojo_base/mojom/String16;

    const/4 v1, 0x0

    const/16 v9, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p1, v9, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v9, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v7, v1

    :goto_0
    iget-object v2, p0, Lorg/chromium/blink/mojom/PageState;->referencedFiles:[Lorg/chromium/mojo_base/mojom/String16;

    array-length v3, v2

    if-ge v7, v3, :cond_1

    aget-object v5, v2, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v6, 0x1

    const/4 v8, 0x1

    move v3, v9

    move-object v4, v0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->c(IILorg/chromium/mojo/bindings/Encoder;Lorg/chromium/mojo_base/mojom/String16;ZII)I

    move-result v7

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/PageState;->top:Lorg/chromium/blink/mojom/FrameState;

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    return-void
.end method
