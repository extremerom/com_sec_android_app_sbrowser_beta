.class public interface abstract annotation Lorg/chromium/base/task/TaskTraits;
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

.field public static final BEST_EFFORT_MAY_BLOCK:I = 0x1

.field public static final THREAD_POOL_TRAITS_END:I = 0x5

.field public static final THREAD_POOL_TRAITS_START:I = 0x0

.field public static final UI_BEST_EFFORT:I = 0x6

.field public static final UI_DEFAULT:I = 0x7

.field public static final UI_TRAITS_END:I = 0x8

.field public static final UI_TRAITS_START:I = 0x6

.field public static final UI_USER_BLOCKING:I = 0x8

.field public static final UI_USER_VISIBLE:I = 0x7

.field public static final USER_BLOCKING:I = 0x4

.field public static final USER_BLOCKING_MAY_BLOCK:I = 0x5

.field public static final USER_VISIBLE:I = 0x2

.field public static final USER_VISIBLE_MAY_BLOCK:I = 0x3
