.class public final Lorg/chromium/blink/mojom/ExecutionContextToken;
.super Lorg/chromium/mojo/bindings/Union;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/ExecutionContextToken$Tag;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAnimationWorkletToken:Lorg/chromium/blink/mojom/AnimationWorkletToken;

.field private mAudioWorkletToken:Lorg/chromium/blink/mojom/AudioWorkletToken;

.field private mDedicatedWorkerToken:Lorg/chromium/blink/mojom/DedicatedWorkerToken;

.field private mLayoutWorkletToken:Lorg/chromium/blink/mojom/LayoutWorkletToken;

.field private mLocalFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

.field private mPaintWorkletToken:Lorg/chromium/blink/mojom/PaintWorkletToken;

.field private mServiceWorkerToken:Lorg/chromium/blink/mojom/ServiceWorkerToken;

.field private mShadowRealmToken:Lorg/chromium/blink/mojom/ShadowRealmToken;

.field private mSharedStorageWorkletToken:Lorg/chromium/blink/mojom/SharedStorageWorkletToken;

.field private mSharedWorkerToken:Lorg/chromium/blink/mojom/SharedWorkerToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/Union;-><init>()V

    return-void
.end method

.method public static final decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/ExecutionContextToken;
    .locals 4

    invoke-virtual {p0, p1}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForUnion(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v1, v0, Lorg/chromium/mojo/bindings/DataHeader;->size:I

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Lorg/chromium/blink/mojom/ExecutionContextToken;

    invoke-direct {v1}, Lorg/chromium/blink/mojom/ExecutionContextToken;-><init>()V

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    const/4 v2, 0x0

    const/16 v3, 0x8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/ShadowRealmToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ShadowRealmToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mShadowRealmToken:Lorg/chromium/blink/mojom/ShadowRealmToken;

    const/16 p0, 0x9

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto/16 :goto_0

    :pswitch_1
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/SharedStorageWorkletToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedStorageWorkletToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mSharedStorageWorkletToken:Lorg/chromium/blink/mojom/SharedStorageWorkletToken;

    iput v3, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto/16 :goto_0

    :pswitch_2
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/PaintWorkletToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/PaintWorkletToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mPaintWorkletToken:Lorg/chromium/blink/mojom/PaintWorkletToken;

    const/4 p0, 0x7

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_3
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/LayoutWorkletToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LayoutWorkletToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mLayoutWorkletToken:Lorg/chromium/blink/mojom/LayoutWorkletToken;

    const/4 p0, 0x6

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_4
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/AudioWorkletToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AudioWorkletToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mAudioWorkletToken:Lorg/chromium/blink/mojom/AudioWorkletToken;

    const/4 p0, 0x5

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_5
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/AnimationWorkletToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AnimationWorkletToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mAnimationWorkletToken:Lorg/chromium/blink/mojom/AnimationWorkletToken;

    const/4 p0, 0x4

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_6
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/SharedWorkerToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/SharedWorkerToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mSharedWorkerToken:Lorg/chromium/blink/mojom/SharedWorkerToken;

    const/4 p0, 0x3

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_7
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/ServiceWorkerToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/ServiceWorkerToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mServiceWorkerToken:Lorg/chromium/blink/mojom/ServiceWorkerToken;

    const/4 p0, 0x2

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_8
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/DedicatedWorkerToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/DedicatedWorkerToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mDedicatedWorkerToken:Lorg/chromium/blink/mojom/DedicatedWorkerToken;

    const/4 p0, 0x1

    iput p0, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    goto :goto_0

    :pswitch_9
    add-int/2addr p1, v3

    invoke-virtual {p0, p1, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/blink/mojom/LocalFrameToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/LocalFrameToken;

    move-result-object p0

    iput-object p0, v1, Lorg/chromium/blink/mojom/ExecutionContextToken;->mLocalFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    iput v2, v1, Lorg/chromium/mojo/bindings/Union;->mTag:I

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mShadowRealmToken:Lorg/chromium/blink/mojom/ShadowRealmToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mSharedStorageWorkletToken:Lorg/chromium/blink/mojom/SharedStorageWorkletToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mPaintWorkletToken:Lorg/chromium/blink/mojom/PaintWorkletToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mLayoutWorkletToken:Lorg/chromium/blink/mojom/LayoutWorkletToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mAudioWorkletToken:Lorg/chromium/blink/mojom/AudioWorkletToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mAnimationWorkletToken:Lorg/chromium/blink/mojom/AnimationWorkletToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mSharedWorkerToken:Lorg/chromium/blink/mojom/SharedWorkerToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_7
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mServiceWorkerToken:Lorg/chromium/blink/mojom/ServiceWorkerToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_8
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mDedicatedWorkerToken:Lorg/chromium/blink/mojom/DedicatedWorkerToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lorg/chromium/blink/mojom/ExecutionContextToken;->mLocalFrameToken:Lorg/chromium/blink/mojom/LocalFrameToken;

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p1, p0, p2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
