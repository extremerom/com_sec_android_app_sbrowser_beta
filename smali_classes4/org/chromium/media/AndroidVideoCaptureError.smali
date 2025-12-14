.class public interface abstract annotation Lorg/chromium/media/AndroidVideoCaptureError;
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
.field public static final ANDROID_API_1_CAMERA_ERROR_CALLBACK_RECEIVED:I = 0x44

.field public static final ANDROID_API_2_CAMERA_DEVICE_ERROR_RECEIVED:I = 0x45

.field public static final ANDROID_API_2_CAPTURE_SESSION_CONFIGURE_FAILED:I = 0x46

.field public static final ANDROID_API_2_ERROR_CONFIGURING_CAMERA:I = 0x72

.field public static final ANDROID_API_2_ERROR_RESTARTING_PREVIEW:I = 0x49

.field public static final ANDROID_API_2_IMAGE_READER_SIZE_DID_NOT_MATCH_IMAGE_SIZE:I = 0x48

.field public static final ANDROID_API_2_IMAGE_READER_UNEXPECTED_IMAGE_FORMAT:I = 0x47
