.class public interface abstract annotation Lorg/chromium/base/task/TaskPriority;
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
.field public static final BEST_EFFORT:I = 0x0

.field public static final HIGHEST:I = 0x2

.field public static final LOWEST:I = 0x0

.field public static final USER_BLOCKING:I = 0x2

.field public static final USER_VISIBLE:I = 0x1
