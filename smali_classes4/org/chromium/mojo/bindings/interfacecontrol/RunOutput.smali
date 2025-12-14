.class public final Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mQueryVersionResult:Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;

    invoke-direct {v1}, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->mQueryVersionResult:Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    iput v0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;I)V
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->mQueryVersionResult:Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    add-int/lit8 p2, p2, 0x8

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    :goto_0
    return-void
.end method

.method public getQueryVersionResult()Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;
    .locals 0

    iget-object p0, p0, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->mQueryVersionResult:Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    return-object p0
.end method

.method public setQueryVersionResult(Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    iput-object p1, p0, Lorg/chromium/mojo/bindings/interfacecontrol/RunOutput;->mQueryVersionResult:Lorg/chromium/mojo/bindings/interfacecontrol/QueryVersionResult;

    return-void
.end method
