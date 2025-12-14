.class public interface abstract annotation Lorg/chromium/media/VideoCodec;
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
.field public static final AV1:I = 0xa

.field public static final DOLBY_VISION:I = 0x9

.field public static final H264:I = 0x1

.field public static final HEVC:I = 0x8

.field public static final MAX_VALUE:I = 0xa

.field public static final MPEG2:I = 0x3

.field public static final MPEG4:I = 0x4

.field public static final THEORA:I = 0x5

.field public static final UNKNOWN:I = 0x0

.field public static final VC1:I = 0x2

.field public static final VP8:I = 0x6

.field public static final VP9:I = 0x7
