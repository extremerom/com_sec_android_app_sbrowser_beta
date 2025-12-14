.class public interface abstract annotation Lorg/chromium/media/AndroidVideoCaptureFrameDropReason;
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
.field public static final ANDROID_API_1_UNEXPECTED_DATA_LENGTH:I = 0x8

.field public static final ANDROID_API_2_ACQUIRED_IMAGE_IS_NULL:I = 0x9
