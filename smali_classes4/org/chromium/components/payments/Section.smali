.class public interface abstract annotation Lorg/chromium/components/payments/Section;
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
.field public static final CONTACT_INFO:I = 0x0

.field public static final MAX:I = 0x3

.field public static final PAYMENT_METHOD:I = 0x1

.field public static final SHIPPING_ADDRESS:I = 0x2
