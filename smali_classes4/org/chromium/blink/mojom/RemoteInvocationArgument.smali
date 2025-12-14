.class public final Lorg/chromium/blink/mojom/RemoteInvocationArgument;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteInvocationArgument$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mArrayValue:[Lorg/chromium/blink/mojom/RemoteInvocationArgument;

.field private mBooleanValue:Z

.field private mNumberValue:D

.field private mObjectIdValue:I

.field private mSingletonValue:I

.field private mStringValue:Lorg/chromium/mojo_base/mojom/String16;

.field private mTypedArrayValue:Lorg/chromium/blink/mojom/RemoteTypedArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/RemoteInvocationArgument;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/RemoteInvocationArgument;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mObjectIdValue:I

    const/4 p0, 0x6

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/RemoteTypedArray;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RemoteTypedArray;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mTypedArrayValue:Lorg/chromium/blink/mojom/RemoteTypedArray;

    const/4 p0, 0x5

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :pswitch_2
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object p1

    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v0, v0, [Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    iput-object v0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mArrayValue:[Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    :goto_0
    iget v0, p1, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v2, v0, :cond_1

    iget-object v0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mArrayValue:[Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    mul-int/lit8 v3, v2, 0x10

    add-int/lit8 v3, v3, 0x8

    invoke-static {p0, v3}, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :pswitch_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mSingletonValue:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/SingletonJavaScriptValue;->validate(I)V

    iget p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mSingletonValue:I

    invoke-static {p0}, Lorg/chromium/blink/mojom/SingletonJavaScriptValue;->toKnownValue(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mSingletonValue:I

    const/4 p0, 0x3

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :pswitch_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/mojo_base/mojom/String16;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/String16;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mStringValue:Lorg/chromium/mojo_base/mojom/String16;

    const/4 p0, 0x2

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :pswitch_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result p0

    iput-boolean p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mBooleanValue:Z

    const/4 p0, 0x1

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_1

    :pswitch_6
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide p0

    iput-wide p0, v1, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mNumberValue:D

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mObjectIdValue:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mTypedArrayValue:Lorg/chromium/blink/mojom/RemoteTypedArray;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mArrayValue:[Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    add-int/lit8 p2, p2, 0x8

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p2, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeUnionArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move p2, v1

    :goto_0
    iget-object v0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mArrayValue:[Lorg/chromium/blink/mojom/RemoteInvocationArgument;

    array-length v2, v0

    if-ge p2, v2, :cond_1

    aget-object v0, v0, p2

    mul-int/lit8 v2, p2, 0x10

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :pswitch_3
    iget p0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mSingletonValue:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_1

    :pswitch_4
    iget-object p0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mStringValue:Lorg/chromium/mojo_base/mojom/String16;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_1

    :pswitch_5
    iget-boolean p0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mBooleanValue:Z

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    goto :goto_1

    :pswitch_6
    iget-wide v0, p0, Lorg/chromium/blink/mojom/RemoteInvocationArgument;->mNumberValue:D

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, v1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
