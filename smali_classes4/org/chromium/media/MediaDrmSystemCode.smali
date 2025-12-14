.class public interface abstract annotation Lorg/chromium/media/MediaDrmSystemCode;
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
.field public static final CREATE_SESSION_FAILED:I = 0x10c8e4

.field public static final DENIED_BY_SERVER:I = 0x10c8ec

.field public static final GET_KEY_RELEASE_REQUEST_FAILED:I = 0x10c8eb

.field public static final GET_KEY_REQUEST_FAILED:I = 0x10c8e9

.field public static final ILLEGAL_STATE:I = 0x10c8ed

.field public static final INVALID_SESSION_ID:I = 0x10c8e2

.field public static final KEY_UPDATE_FAILED:I = 0x10c8ea

.field public static final MAX_VALUE:I = 0x10c8ed

.field public static final MIN_VALUE:I = 0x10c8e0

.field public static final NOT_PERSISTENT_LICENSE:I = 0x10c8e7

.field public static final NOT_PROVISIONED:I = 0x10c8e3

.field public static final NO_MEDIA_DRM:I = 0x10c8e1

.field public static final OPEN_SESSION_FAILED:I = 0x10c8e5

.field public static final SET_KEY_TYPE_RELEASE_FAILED:I = 0x10c8e8

.field public static final SET_SERVER_CERTIFICATE_FAILED:I = 0x10c8e0

.field public static final UPDATE_FAILED:I = 0x10c8e6
