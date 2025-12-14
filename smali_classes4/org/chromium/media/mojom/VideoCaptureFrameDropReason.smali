.class public final Lorg/chromium/media/mojom/VideoCaptureFrameDropReason;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/mojom/VideoCaptureFrameDropReason$EnumType;
    }
.end annotation


# static fields
.field public static final ANDROID_API1_UNEXPECTED_DATA_LENGTH:I = 0x7

.field public static final ANDROID_API2_ACQUIRED_IMAGE_IS_NULL:I = 0x8

.field public static final ANDROID_GET_BYTE_ARRAY_ELEMENTS_FAILED:I = 0x6

.field public static final ANDROID_THROTTLING:I = 0x5

.field public static final BUFFER_POOL_BUFFER_ALLOCATION_FAILED:I = 0xf

.field public static final BUFFER_POOL_MAX_BUFFER_COUNT_EXCEEDED:I = 0xe

.field public static final CROP_VERSION_NOT_CURRENT_DEPRECATED:I = 0x1a

.field public static final DEVICE_CLIENT_FRAME_HAS_INVALID_FORMAT:I = 0x1

.field public static final DEVICE_CLIENT_LIBYUV_CONVERT_TO_I420_FAILED:I = 0x2

.field public static final GPU_MEMORY_BUFFER_MAP_FAILED:I = 0x1b

.field public static final MAX_VALUE:I = 0x1d

.field public static final MIN_VALUE:I = 0x0

.field public static final NONE:I = 0x0

.field public static final POST_PROCESSING_FAILED:I = 0x1d

.field public static final RENDERER_SINK_FRAME_DELIVERER_IS_NOT_STARTED:I = 0x19

.field public static final RESOLUTION_ADAPTER_FRAME_IS_NOT_VALID:I = 0x13

.field public static final RESOLUTION_ADAPTER_FRAME_RATE_IS_HIGHER_THAN_REQUESTED:I = 0x16

.field public static final RESOLUTION_ADAPTER_HAS_NO_CALLBACKS:I = 0x17

.field public static final RESOLUTION_ADAPTER_TIMESTAMP_TOO_CLOSE_TO_PREVIOUS_DEPRECATED:I = 0x15

.field public static final RESOLUTION_ADAPTER_WRAPPING_FRAME_FOR_CROPPING_FAILED:I = 0x14

.field public static final SUB_CAPTURE_TARGET_VERSION_NOT_CURRENT:I = 0x1c

.field public static final V4L2_BUFFER_ERROR_FLAG_WAS_SET:I = 0x3

.field public static final V4L2_INVALID_NUMBER_OF_BYTES_IN_BUFFER:I = 0x4

.field public static final VIDEO_CAPTURE_IMPL_FAILED_TO_WRAP_DATA_AS_MEDIA_VIDEO_FRAME:I = 0x11

.field public static final VIDEO_CAPTURE_IMPL_NOT_IN_STARTED_STATE:I = 0x10

.field public static final VIDEO_TRACK_ADAPTER_HAS_NO_RESOLUTION_ADAPTERS:I = 0x12

.field public static final VIDEO_TRACK_FRAME_DELIVERER_NOT_ENABLED_REPLACING_WITH_BLACK_FRAME:I = 0x18

.field public static final WIN_DIRECT_SHOW_FAILED_TO_GET_MEMORY_POINTER_FROM_MEDIA_SAMPLE:I = 0xa

.field public static final WIN_DIRECT_SHOW_UNEXPECTED_SAMPLE_LENGTH:I = 0x9

.field public static final WIN_MEDIA_FOUNDATION_GET_BUFFER_BY_INDEX_RETURNED_NULL:I = 0xd

.field public static final WIN_MEDIA_FOUNDATION_LOCKING_BUFFER_DELIEVERED_NULLPTR:I = 0xc

.field public static final WIN_MEDIA_FOUNDATION_RECEIVED_SAMPLE_IS_NULL:I = 0xb


# direct methods
.method public static toKnownValue(I)I
    .locals 0

    return p0
.end method

.method public static validate(I)V
    .locals 0

    return-void
.end method
