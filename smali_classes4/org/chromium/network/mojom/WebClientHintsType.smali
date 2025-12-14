.class public final Lorg/chromium/network/mojom/WebClientHintsType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebClientHintsType$EnumType;
    }
.end annotation


# static fields
.field public static final DEVICE_MEMORY:I = 0x13

.field public static final DEVICE_MEMORY_DEPRECATED:I = 0x0

.field public static final DOWNLINK_DEPRECATED:I = 0x5

.field public static final DPR:I = 0x14

.field public static final DPR_DEPRECATED:I = 0x1

.field public static final ECT_DEPRECATED:I = 0x6

.field public static final MAX_VALUE:I = 0x1e

.field public static final MIN_VALUE:I = 0x0

.field public static final PREFERS_COLOR_SCHEME:I = 0xf

.field public static final PREFERS_REDUCED_MOTION:I = 0x1c

.field public static final PREFERS_REDUCED_TRANSPARENCY:I = 0x1e

.field public static final RESOURCE_WIDTH:I = 0x15

.field public static final RESOURCE_WIDTH_DEPRECATED:I = 0x2

.field public static final RTT_DEPRECATED:I = 0x4

.field public static final SAVE_DATA:I = 0x1b

.field public static final UA:I = 0x8

.field public static final UA_ARCH:I = 0x9

.field public static final UA_BITNESS:I = 0x10

.field public static final UA_FORM_FACTORS:I = 0x1d

.field public static final UA_FULL_VERSION:I = 0xd

.field public static final UA_FULL_VERSION_LIST:I = 0x17

.field public static final UA_MOBILE:I = 0xc

.field public static final UA_MODEL:I = 0xb

.field public static final UA_PLATFORM:I = 0xa

.field public static final UA_PLATFORM_VERSION:I = 0xe

.field public static final UA_WO_W64:I = 0x19

.field public static final VIEWPORT_HEIGHT:I = 0x12

.field public static final VIEWPORT_WIDTH:I = 0x16

.field public static final VIEWPORT_WIDTH_DEPRECATED:I = 0x3


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
        :pswitch_1
        :pswitch_1
        :pswitch_0
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

    invoke-static {p0}, Lorg/chromium/network/mojom/WebClientHintsType;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
