.class public interface abstract annotation Lorg/chromium/base/metrics/JSONVerbosityLevel;
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
.field public static final JSON_VERBOSITY_LEVEL_FULL:I = 0x0

.field public static final JSON_VERBOSITY_LEVEL_OMIT_BUCKETS:I = 0x1
