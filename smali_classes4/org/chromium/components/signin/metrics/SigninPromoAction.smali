.class public interface abstract annotation Lorg/chromium/components/signin/metrics/SigninPromoAction;
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
.field public static final MAX_VALUE:I = 0x4

.field public static final NEW_ACCOUNT_EXISTING_ACCOUNT:I = 0x4

.field public static final NEW_ACCOUNT_NO_EXISTING_ACCOUNT:I = 0x3

.field public static final NOT_DEFAULT:I = 0x2

.field public static final NO_SIGNIN_PROMO:I = 0x0

.field public static final WITH_DEFAULT:I = 0x1
