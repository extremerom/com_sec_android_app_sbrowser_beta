.class public interface abstract annotation Lorg/chromium/media/MediaCodecStatus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final CERTIFICATE_MALFORMED:I = 0x1d

.field public static final CERTIFICATE_MISSING:I = 0x1e

.field public static final CRYPTO_LIBRARY:I = 0x1f

.field public static final ERROR:I = 0x5

.field public static final FRAME_TOO_LARGE:I = 0xc

.field public static final GENERIC_OEM:I = 0xe

.field public static final GENERIC_PLUGIN:I = 0xf

.field public static final ILLEGAL_STATE:I = 0x18

.field public static final INIT_DATA:I = 0x20

.field public static final INPUT_SLOT_UNAVAILABLE:I = 0x17

.field public static final INSUFFICIENT_OUTPUT_PROTECTION:I = 0x8

.field public static final INSUFFICIENT_RESOURCE:I = 0x15

.field public static final INSUFFICIENT_SECURITY:I = 0xb

.field public static final KEY_EXPIRED:I = 0x6

.field public static final KEY_NOT_LOADED:I = 0x21

.field public static final LICENSE_PARSE:I = 0x10

.field public static final LICENSE_POLICY:I = 0x22

.field public static final LICENSE_RELEASE:I = 0x23

.field public static final LICENSE_REQUEST_REJECTED:I = 0x24

.field public static final LICENSE_RESTORE:I = 0x25

.field public static final LICENSE_STATE:I = 0x26

.field public static final LINEAR_BLOCK_EXCEPTION:I = 0x1c

.field public static final LOST_STATE:I = 0xd

.field public static final MAX:I = 0x2e

.field public static final MEDIA_FRAMEWORK:I = 0x11

.field public static final NO_KEY:I = 0x4

.field public static final OK:I = 0x0

.field public static final OUTPUT_BUFFERS_CHANGED:I = 0x2

.field public static final OUTPUT_FORMAT_CHANGED:I = 0x3

.field public static final PATTERN_ENCRYPTION_NOT_SUPPORTED:I = 0x14

.field public static final PROVISIONING_CERTIFICATE:I = 0x27

.field public static final PROVISIONING_CONFIG:I = 0x28

.field public static final PROVISIONING_PARSE:I = 0x29

.field public static final PROVISIONING_REQUEST_REJECTED:I = 0x2a

.field public static final PROVISIONING_RETRY:I = 0x2b

.field public static final RECLAIMED:I = 0x16

.field public static final RESOURCE_BUSY:I = 0x7

.field public static final SECURE_STOP_RELEASE:I = 0x2c

.field public static final SESSION_NOT_OPENED:I = 0x9

.field public static final STORAGE_READ:I = 0x2d

.field public static final STORAGE_WRITE:I = 0x2e

.field public static final TRY_AGAIN_LATER:I = 0x1

.field public static final UNKNOWN_CIPHER_MODE:I = 0x13

.field public static final UNKNOWN_CODEC_EXCEPTION:I = 0x1b

.field public static final UNKNOWN_CRYPTO_EXCEPTION:I = 0x19

.field public static final UNKNOWN_MEDIADRM_EXCEPTION:I = 0x1a

.field public static final UNSUPPORTED_OPERATION:I = 0xa

.field public static final ZERO_SUBSAMPLES:I = 0x12
