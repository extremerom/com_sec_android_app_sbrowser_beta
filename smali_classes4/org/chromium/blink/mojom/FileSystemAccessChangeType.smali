.class public final Lorg/chromium/blink/mojom/FileSystemAccessChangeType;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/FileSystemAccessChangeType$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAppeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeAppeared;

.field private mDisappeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeDisappeared;

.field private mErrored:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeErrored;

.field private mModified:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeModified;

.field private mMoved:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeMoved;

.field private mUnknown:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeUnknown;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/FileSystemAccessChangeType;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeUnknown;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeUnknown;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mUnknown:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeUnknown;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeMoved;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeMoved;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mMoved:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeMoved;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeModified;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeModified;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mModified:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeModified;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeErrored;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeErrored;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mErrored:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeErrored;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeDisappeared;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeDisappeared;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mDisappeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeDisappeared;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :cond_6
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeAppeared;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeAppeared;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mAppeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeAppeared;

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 3

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mUnknown:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeUnknown;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mMoved:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeMoved;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mModified:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeModified;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mErrored:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeErrored;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mDisappeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeDisappeared;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lorg/chromium/blink/mojom/FileSystemAccessChangeType;->mAppeared:Lorg/chromium/blink/mojom/FileSystemAccessChangeTypeAppeared;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    :goto_0
    return-void
.end method
