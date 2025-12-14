.class public interface abstract annotation Lorg/chromium/components/payments/PaymentAppType;
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
.field public static final INTERNAL:I = 0x3

.field public static final NATIVE_MOBILE_APP:I = 0x1

.field public static final SERVICE_WORKER_APP:I = 0x2

.field public static final UNDEFINED:I
