.class public interface abstract annotation Lorg/chromium/base/ChildBindingState;
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

.field public static final NOT_PERCEPTIBLE:I = 0x2

.field public static final STRONG:I = 0x4

.field public static final UNBOUND:I = 0x0

.field public static final VISIBLE:I = 0x3

.field public static final WAIVED:I = 0x1
