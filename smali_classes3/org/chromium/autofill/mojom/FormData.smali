.class public final Lorg/chromium/autofill/mojom/FormData;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public action:Lorg/chromium/url/mojom/Url;

.field public buttonTitles:[Lorg/chromium/autofill/mojom/ButtonTitleInfo;

.field public childFrames:[Lorg/chromium/autofill/mojom/FrameTokenWithPredecessor;

.field public fields:[Lorg/chromium/autofill/mojom/FormFieldData;

.field public idAttribute:Lorg/chromium/mojo_base/mojom/String16;

.field public isActionEmpty:Z

.field public isGaiaWithSkipSavePasswordForm:Z

.field public likelyContainsCaptcha:Z

.field public name:Lorg/chromium/mojo_base/mojom/String16;

.field public nameAttribute:Lorg/chromium/mojo_base/mojom/String16;

.field public rendererId:Lorg/chromium/autofill/mojom/FormRendererId;

.field public submissionEvent:I

.field public usernamePredictions:[Lorg/chromium/autofill/mojom/FieldRendererId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x58

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/autofill/mojom/FormData;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/autofill/mojom/FormData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 7

    sget-object v0, Lorg/chromium/autofill/mojom/FormData;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->idAttribute:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->nameAttribute:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->name:Lorg/chromium/mojo_base/mojom/String16;

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->buttonTitles:[Lorg/chromium/autofill/mojom/ButtonTitleInfo;

    const/16 v3, 0x20

    const/4 v4, -0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_0
    iget-object v5, p0, Lorg/chromium/autofill/mojom/FormData;->buttonTitles:[Lorg/chromium/autofill/mojom/ButtonTitleInfo;

    array-length v6, v5

    if-ge v3, v6, :cond_1

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->action:Lorg/chromium/url/mojom/Url;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/FormData;->isActionEmpty:Z

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/FormData;->isGaiaWithSkipSavePasswordForm:Z

    const/4 v5, 0x1

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/autofill/mojom/FormData;->likelyContainsCaptcha:Z

    const/4 v5, 0x2

    invoke-virtual {p1, v0, v3, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lorg/chromium/autofill/mojom/FormData;->submissionEvent:I

    const/16 v3, 0x34

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->rendererId:Lorg/chromium/autofill/mojom/FormRendererId;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->childFrames:[Lorg/chromium/autofill/mojom/FrameTokenWithPredecessor;

    const/16 v3, 0x40

    if-nez v0, :cond_2

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_3

    :cond_2
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_2
    iget-object v5, p0, Lorg/chromium/autofill/mojom/FormData;->childFrames:[Lorg/chromium/autofill/mojom/FrameTokenWithPredecessor;

    array-length v6, v5

    if-ge v3, v6, :cond_3

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->fields:[Lorg/chromium/autofill/mojom/FormFieldData;

    const/16 v3, 0x48

    if-nez v0, :cond_4

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_5

    :cond_4
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object v0

    move v3, v2

    :goto_4
    iget-object v5, p0, Lorg/chromium/autofill/mojom/FormData;->fields:[Lorg/chromium/autofill/mojom/FormFieldData;

    array-length v6, v5

    if-ge v3, v6, :cond_5

    aget-object v5, v5, v3

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v1

    invoke-virtual {v0, v5, v6, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lorg/chromium/autofill/mojom/FormData;->usernamePredictions:[Lorg/chromium/autofill/mojom/FieldRendererId;

    const/16 v3, 0x50

    if-nez v0, :cond_6

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_7

    :cond_6
    array-length v0, v0

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_6
    iget-object v3, p0, Lorg/chromium/autofill/mojom/FormData;->usernamePredictions:[Lorg/chromium/autofill/mojom/FieldRendererId;

    array-length v4, v3

    if-ge v0, v4, :cond_7

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    return-void
.end method
