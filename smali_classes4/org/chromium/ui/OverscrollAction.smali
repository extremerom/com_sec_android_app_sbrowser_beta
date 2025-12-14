.class public interface abstract annotation Lorg/chromium/ui/OverscrollAction;
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
.field public static final HISTORY_NAVIGATION:I = 0x2

.field public static final NONE:I = 0x0

.field public static final PULL_FROM_BOTTOM_EDGE:I = 0x3

.field public static final PULL_TO_REFRESH:I = 0x1
