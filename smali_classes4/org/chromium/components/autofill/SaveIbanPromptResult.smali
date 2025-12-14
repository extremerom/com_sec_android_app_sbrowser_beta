.class public interface abstract annotation Lorg/chromium/components/autofill/SaveIbanPromptResult;
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
.field public static final ACCEPTED:I = 0x0

.field public static final CANCELLED:I = 0x1

.field public static final CLOSED:I = 0x2

.field public static final LOST_FOCUS:I = 0x4

.field public static final MAX_VALUE:I = 0x5

.field public static final NOT_INTERACTED:I = 0x3

.field public static final UNKNOWN:I = 0x5
