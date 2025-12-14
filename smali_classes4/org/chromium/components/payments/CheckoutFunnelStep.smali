.class public interface abstract annotation Lorg/chromium/components/payments/CheckoutFunnelStep;
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
.field public static final COMPLETED:I = 0x4

.field public static final INITIATED:I = 0x0

.field public static final MAX_VALUE:I = 0x4

.field public static final PAYMENT_HANDLER_INVOKED:I = 0x3

.field public static final PAYMENT_REQUEST_TRIGGERED:I = 0x2

.field public static final SHOW_CALLED:I = 0x1
