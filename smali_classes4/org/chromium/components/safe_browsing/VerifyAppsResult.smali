.class public interface abstract annotation Lorg/chromium/components/safe_browsing/VerifyAppsResult;
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
.field public static final FAILED:I = 0x3

.field public static final MAX_VALUE:I = 0x4

.field public static final SUCCESS_ALREADY_ENABLED:I = 0x4

.field public static final SUCCESS_ENABLED:I = 0x0

.field public static final SUCCESS_NOT_ENABLED:I = 0x1

.field public static final TIMEOUT:I = 0x2
