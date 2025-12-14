.class public interface abstract annotation Lorg/chromium/components/payments/PrePurchaseQuery;
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
.field public static final ANDROID_INTENT:I = 0x2

.field public static final MAX_VALUE:I = 0x2

.field public static final OTHER_TYPE_OF_QUERY:I = 0x0

.field public static final SERVICE_WORKER_EVENT:I = 0x1
