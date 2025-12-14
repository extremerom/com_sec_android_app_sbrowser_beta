.class public interface abstract annotation Lorg/chromium/content/browser/MotionEventAction;
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
.field public static final CANCEL:I = 0x2

.field public static final END:I = 0x3

.field public static final HOVER_ENTER:I = 0x5

.field public static final HOVER_EXIT:I = 0x6

.field public static final HOVER_MOVE:I = 0x7

.field public static final INVALID:I = -0x1

.field public static final MOVE:I = 0x1

.field public static final SCROLL:I = 0x4

.field public static final START:I
