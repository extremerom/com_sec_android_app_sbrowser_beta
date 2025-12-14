.class public interface abstract annotation Lorg/chromium/components/signin/metrics/FetchAccountCapabilitiesFromSystemLibraryResult;
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
.field public static final API_ERROR:I = 0xb

.field public static final API_FAILED_TO_SYNC:I = 0xe

.field public static final API_NOT_AVAILABLE:I = 0xf

.field public static final API_NOT_PERMITTED:I = 0xc

.field public static final API_REQUEST_FAILED:I = 0xa

.field public static final API_UNKNOWN_CAPABILITY:I = 0xd

.field public static final ERROR_GENERIC:I = 0x1

.field public static final ERROR_MISSING_CAPABILITY:I = 0x14

.field public static final ERROR_UNEXPECTED_VALUE:I = 0x15

.field public static final MAX_VALUE:I = 0x15

.field public static final SUCCESS:I
