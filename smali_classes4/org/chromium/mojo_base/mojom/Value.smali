.class public final Lorg/chromium/mojo_base/mojom/Value;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojo_base/mojom/Value$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBinaryValue:[B

.field private mBoolValue:Z

.field private mDictionaryValue:Lorg/chromium/mojo_base/mojom/DictionaryValue;

.field private mDoubleValue:D

.field private mIntValue:I

.field private mListValue:Lorg/chromium/mojo_base/mojom/ListValue;

.field private mNullValue:B

.field private mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/mojo_base/mojom/Value;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/mojo_base/mojom/Value;

    invoke-direct {v1}, Lorg/chromium/mojo_base/mojom/Value;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/mojo_base/mojom/ListValue;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/ListValue;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mListValue:Lorg/chromium/mojo_base/mojom/ListValue;

    const/4 p0, 0x7

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_1
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/mojo_base/mojom/DictionaryValue;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/DictionaryValue;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mDictionaryValue:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    const/4 p0, 0x6

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_2
    add-int/lit8 p1, p1, 0x8

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readBytes(III)[B

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mBinaryValue:[B

    const/4 p0, 0x5

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_3
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mStringValue:Ljava/lang/String;

    const/4 p0, 0x4

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_4
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDouble(I)D

    move-result-wide p0

    iput-wide p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mDoubleValue:D

    const/4 p0, 0x3

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_5
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result p0

    iput p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mIntValue:I

    const/4 p0, 0x2

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_6
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result p0

    iput-boolean p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mBoolValue:Z

    const/4 p0, 0x1

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_7
    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readByte(I)B

    move-result p0

    iput-byte p0, v1, Lorg/chromium/mojo_base/mojom/Value;->mNullValue:B

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
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
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    add-int/lit8 v1, p2, 0x4

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget v0, p0, Lorg/chromium/mojo/bindings/Union;->mTag:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mListValue:Lorg/chromium/mojo_base/mojom/ListValue;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mDictionaryValue:Lorg/chromium/mojo_base/mojom/DictionaryValue;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mBinaryValue:[B

    add-int/lit8 p2, p2, 0x8

    const/4 v0, -0x1

    invoke-virtual {p1, p0, p2, v1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode([BIII)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mStringValue:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    goto :goto_0

    :pswitch_4
    iget-wide v0, p0, Lorg/chromium/mojo_base/mojom/Value;->mDoubleValue:D

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, v0, v1, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(DI)V

    goto :goto_0

    :pswitch_5
    iget p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mIntValue:I

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    goto :goto_0

    :pswitch_6
    iget-boolean p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mBoolValue:Z

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    goto :goto_0

    :pswitch_7
    iget-byte p0, p0, Lorg/chromium/mojo_base/mojom/Value;->mNullValue:B

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2}, Lorg/chromium/mojo/bindings/Encoder;->encode(BI)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
