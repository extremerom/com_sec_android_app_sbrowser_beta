.class public interface abstract annotation Lorg/chromium/components/autofill/payments/AccountType;
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
.field public static final CHECKING:I = 0x1

.field public static final CURRENT:I = 0x3

.field public static final SALARY:I = 0x4

.field public static final SAVINGS:I = 0x2

.field public static final TRANSACTING_ACCOUNT:I = 0x5

.field public static final UNKNOWN:I
