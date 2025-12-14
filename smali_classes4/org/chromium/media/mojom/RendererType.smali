.class public final Lorg/chromium/media/mojom/RendererType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/RendererType$EnumType;
    }
.end annotation


# static fields
.field public static final CAST:I = 0x5

.field public static final CAST_STREAMING:I = 0x9

.field public static final CONTENT_EMBEDDER_DEFINED:I = 0xa

.field public static final COURIER:I = 0x3

.field public static final FLINGING:I = 0x4

.field public static final MAX_VALUE:I = 0xb

.field public static final MEDIA_FOUNDATION:I = 0x6

.field public static final MEDIA_PLAYER:I = 0x2

.field public static final MIN_VALUE:I = 0x0

.field public static final MOJO:I = 0x1

.field public static final REMOTING:I = 0x8

.field public static final RENDERER_IMPL:I = 0x0

.field public static final TEST:I = 0xb


# direct methods
.method public static isKnownValue(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 1

    invoke-static {p0}, Lorg/chromium/media/mojom/RendererType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
