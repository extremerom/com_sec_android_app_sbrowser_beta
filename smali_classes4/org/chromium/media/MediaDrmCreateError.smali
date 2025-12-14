.class public interface abstract annotation Lorg/chromium/media/MediaDrmCreateError;
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
.field public static final FAILED_MEDIA_CRYPTO_CREATE:I = 0x8

.field public static final FAILED_MEDIA_CRYPTO_SESSION:I = 0x6

.field public static final FAILED_SECURITY_LEVEL:I = 0x4

.field public static final FAILED_SECURITY_ORIGIN:I = 0x5

.field public static final FAILED_TO_START_PROVISIONING:I = 0x7

.field public static final MAX_VALUE:I = 0x9

.field public static final MEDIADRM_ILLEGAL_ARGUMENT:I = 0x2

.field public static final MEDIADRM_ILLEGAL_STATE:I = 0x3

.field public static final MIN_VALUE:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final UNSUPPORTED_DRM_SCHEME:I = 0x1

.field public static final UNSUPPORTED_MEDIACRYPTO_SCHEME:I = 0x9
