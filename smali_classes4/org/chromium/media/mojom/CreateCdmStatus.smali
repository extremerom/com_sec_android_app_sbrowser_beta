.class public final Lorg/chromium/media/mojom/CreateCdmStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/CreateCdmStatus$EnumType;
    }
.end annotation


# static fields
.field public static final ANDROID_FAILED_L1_SECURITY_LEVEL:I = 0x17

.field public static final ANDROID_FAILED_L3_SECURITY_LEVEL:I = 0x18

.field public static final ANDROID_FAILED_MEDIA_CRYPTO_CREATE:I = 0x1c

.field public static final ANDROID_FAILED_MEDIA_CRYPTO_SESSION:I = 0x1a

.field public static final ANDROID_FAILED_SECURITY_ORIGIN:I = 0x19

.field public static final ANDROID_FAILED_TO_START_PROVISIONING:I = 0x1b

.field public static final ANDROID_MEDIA_DRM_ILLEGAL_ARGUMENT:I = 0x15

.field public static final ANDROID_MEDIA_DRM_ILLEGAL_STATE:I = 0x16

.field public static final ANDROID_UNSUPPORTED_MEDIA_CRYPTO_SCHEME:I = 0x1d

.field public static final CDM_CREATION_ABORTED:I = 0x2

.field public static final CDM_FACTORY_CREATION_FAILED:I = 0x9

.field public static final CDM_HELPER_CREATION_FAILED:I = 0x5

.field public static final CDM_NOT_SUPPORTED:I = 0xa

.field public static final CREATE_CDM_FUNC_NOT_AVAILABLE:I = 0x4

.field public static final CR_OS_REMOTE_FACTORY_CREATION_FAILED:I = 0x14

.field public static final CR_OS_VERIFIED_ACCESS_DISABLED:I = 0x13

.field public static final DISCONNECTION_ERROR:I = 0xd

.field public static final GET_CDM_ORIGIN_ID_FAILED:I = 0x7

.field public static final GET_CDM_PREF_DATA_FAILED:I = 0x6

.field public static final INIT_CDM_FAILED:I = 0x8

.field public static final INSUFFICIENT_GPU_RESOURCES:I = 0x12

.field public static final INVALID_CDM_CONFIG:I = 0xb

.field public static final MAX_VALUE:I = 0x1d

.field public static final MEDIA_CRYPTO_NOT_AVAILABLE:I = 0x10

.field public static final MEDIA_DRM_BRIDGE_CREATION_FAILED:I = 0xf

.field public static final MIN_VALUE:I = 0x0

.field public static final NOT_ALLOWED_ON_UNIQUE_ORIGIN:I = 0xe

.field public static final NO_MORE_INSTANCES:I = 0x11

.field public static final SUCCESS:I = 0x0

.field public static final UNKNOWN_ERROR:I = 0x1

.field public static final UNSUPPORTED_KEY_SYSTEM:I = 0xc


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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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

    invoke-static {p0}, Lorg/chromium/media/mojom/CreateCdmStatus;->isKnownValue(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/chromium/mojo/bindings/DeserializationException;

    const-string v0, "Invalid enum value."

    invoke-direct {p0, v0}, Lorg/chromium/mojo/bindings/DeserializationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
