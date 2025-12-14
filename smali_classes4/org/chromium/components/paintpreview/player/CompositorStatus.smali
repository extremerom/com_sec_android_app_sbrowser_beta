.class public interface abstract annotation Lorg/chromium/components/paintpreview/player/CompositorStatus;
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
.field public static final CAPTURE_EXPIRED:I = 0xa

.field public static final COMPOSITOR_CLIENT_DISCONNECT:I = 0x3

.field public static final COMPOSITOR_DESERIALIZATION_ERROR:I = 0x5

.field public static final COMPOSITOR_SERVICE_DISCONNECT:I = 0x2

.field public static final COUNT:I = 0x10

.field public static final INVALID_REQUEST:I = 0x7

.field public static final INVALID_ROOT_FRAME_SKP:I = 0x6

.field public static final NO_CAPTURE:I = 0xb

.field public static final OK:I = 0x0

.field public static final OLD_VERSION:I = 0x8

.field public static final PROTOBUF_DESERIALIZATION_ERROR:I = 0x4

.field public static final REQUEST_BITMAP_FAILURE:I = 0xf

.field public static final SKIPPED_DUE_TO_MEMORY_PRESSURE:I = 0xe

.field public static final STOPPED_DUE_TO_MEMORY_PRESSURE:I = 0xd

.field public static final TIMED_OUT:I = 0xc

.field public static final UNEXPECTED_VERSION:I = 0x9

.field public static final URL_MISMATCH:I = 0x1
