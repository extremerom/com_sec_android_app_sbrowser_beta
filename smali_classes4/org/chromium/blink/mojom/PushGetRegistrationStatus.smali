.class public final Lorg/chromium/blink/mojom/PushGetRegistrationStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PushGetRegistrationStatus$EnumType;
    }
.end annotation


# static fields
.field public static final INCOGNITO_REGISTRATION_NOT_FOUND:I = 0x4

.field public static final MAX_VALUE:I = 0x8

.field public static final MIN_VALUE:I = 0x0

.field public static final NO_LIVE_SERVICE_WORKER:I = 0x8

.field public static final REGISTRATION_NOT_FOUND:I = 0x3

.field public static final RENDERER_SHUTDOWN:I = 0x7

.field public static final SERVICE_NOT_AVAILABLE:I = 0x1

.field public static final STORAGE_CORRUPT:I = 0x6

.field public static final STORAGE_ERROR:I = 0x2

.field public static final SUCCESS:I


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
        :pswitch_0
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

    invoke-static {p0}, Lorg/chromium/blink/mojom/PushGetRegistrationStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
