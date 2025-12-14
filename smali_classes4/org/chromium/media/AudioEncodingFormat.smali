.class public interface abstract annotation Lorg/chromium/media/AudioEncodingFormat;
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
.field public static final BITSTREAM_AC3:I = 0x4

.field public static final BITSTREAM_DTS:I = 0x10

.field public static final BITSTREAM_DTSX_P2:I = 0x40

.field public static final BITSTREAM_DTS_HD:I = 0x20

.field public static final BITSTREAM_DTS_HD_MA:I = 0x100

.field public static final BITSTREAM_EAC3:I = 0x8

.field public static final BITSTREAM_IEC61937:I = 0x80

.field public static final FAKE:I = 0x0

.field public static final FORMAT_LAST:I = 0x100

.field public static final PCM_LINEAR:I = 0x1

.field public static final PCM_LOW_LATENCY:I = 0x2
