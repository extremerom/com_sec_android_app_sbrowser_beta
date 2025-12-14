.class public interface abstract annotation Lorg/chromium/components/payments/CompletionStatus;
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
.field public static final COMPLETED:I = 0x0

.field public static final COULD_NOT_SHOW:I = 0x3

.field public static final MAX:I = 0x5

.field public static final OTHER_ABORTED:I = 0x2

.field public static final USER_ABORTED:I = 0x1

.field public static final USER_OPTED_OUT:I = 0x4
