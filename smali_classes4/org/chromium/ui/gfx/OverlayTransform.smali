.class public interface abstract annotation Lorg/chromium/ui/gfx/OverlayTransform;
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
.field public static final FLIP_HORIZONTAL:I = 0x2

.field public static final FLIP_VERTICAL:I = 0x3

.field public static final FLIP_VERTICAL_CLOCKWISE_270:I = 0x8

.field public static final FLIP_VERTICAL_CLOCKWISE_90:I = 0x7

.field public static final INVALID:I = 0x0

.field public static final LAST:I = 0x8

.field public static final NONE:I = 0x1

.field public static final ROTATE_CLOCKWISE_180:I = 0x5

.field public static final ROTATE_CLOCKWISE_270:I = 0x6

.field public static final ROTATE_CLOCKWISE_90:I = 0x4
