.class public interface abstract annotation Lorg/chromium/media/VideoCaptureApi;
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
.field public static final ANDROID_API1:I = 0x7

.field public static final ANDROID_API2_FULL:I = 0x9

.field public static final ANDROID_API2_LEGACY:I = 0x8

.field public static final ANDROID_API2_LIMITED:I = 0xa

.field public static final FUCHSIA_CAMERA3:I = 0xb

.field public static final LINUX_V4L2_SINGLE_PLANE:I = 0x1

.field public static final MACOSX_AVFOUNDATION:I = 0x5

.field public static final MACOSX_DECKLINK:I = 0x6

.field public static final MAX_VALUE:I = 0xd

.field public static final UNKNOWN:I = 0x0

.field public static final VIRTUAL_DEVICE:I = 0xc

.field public static final WEBRTC_LINUX_PIPEWIRE_SINGLE_PLANE:I = 0xd

.field public static final WIN_DIRECT_SHOW:I = 0x4

.field public static final WIN_MEDIA_FOUNDATION:I = 0x2

.field public static final WIN_MEDIA_FOUNDATION_SENSOR:I = 0x3
