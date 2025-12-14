.class public interface abstract annotation Lorg/chromium/media/VideoFacingMode;
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
.field public static final MEDIA_VIDEO_FACING_ENVIRONMENT:I = 0x2

.field public static final MEDIA_VIDEO_FACING_NONE:I = 0x0

.field public static final MEDIA_VIDEO_FACING_USER:I = 0x1

.field public static final NUM_MEDIA_VIDEO_FACING_MODES:I = 0x3
