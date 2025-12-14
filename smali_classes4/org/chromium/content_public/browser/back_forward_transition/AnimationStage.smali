.class public interface abstract annotation Lorg/chromium/content_public/browser/back_forward_transition/AnimationStage;
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
.field public static final INVOKE_ANIMATION:I = 0x1

.field public static final INVOKE_ANIMATION_WITH_PROGRESS_BAR:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OTHER:I = 0x4

.field public static final WAITING_FOR_EMBEDDER_CONTENT_FOR_COMMITTED_ENTRY:I = 0x3
