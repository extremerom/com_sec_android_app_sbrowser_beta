.class public interface abstract annotation Lorg/chromium/components/safe_browsing/SafeBrowsingResponseStatus;
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
.field public static final FAILURE_BLOCK_LIST_UNAVAILABLE:I = 0x5

.field public static final FAILURE_INVALID_URL:I = 0x6

.field public static final FAILURE_NETWORK_UNAVAILABLE:I = 0x4

.field public static final SUCCESS_FALLBACK_REAL_TIME_THROTTLED:I = 0x3

.field public static final SUCCESS_FALLBACK_REAL_TIME_TIMEOUT:I = 0x2

.field public static final SUCCESS_WITH_LOCAL_BLOCKLIST:I = 0x0

.field public static final SUCCESS_WITH_REAL_TIME:I = 0x1
