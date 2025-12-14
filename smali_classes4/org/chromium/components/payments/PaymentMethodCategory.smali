.class public interface abstract annotation Lorg/chromium/components/payments/PaymentMethodCategory;
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
.field public static final BASIC_CARD:I = 0x0

.field public static final GOOGLE:I = 0x1

.field public static final GOOGLE_PAY_AUTHENTICATION:I = 0x5

.field public static final MAX_VALUE:I = 0x5

.field public static final OTHER:I = 0x4

.field public static final PLAY_BILLING:I = 0x2

.field public static final SECURE_PAYMENT_CONFIRMATION:I = 0x3
