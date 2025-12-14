.class public interface abstract annotation Lorg/chromium/ui/touch_selection/SelectionEventType;
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
.field public static final INSERTION_HANDLE_CLEARED:I = 0x8

.field public static final INSERTION_HANDLE_DRAG_STARTED:I = 0x9

.field public static final INSERTION_HANDLE_DRAG_STOPPED:I = 0xa

.field public static final INSERTION_HANDLE_MOVED:I = 0x6

.field public static final INSERTION_HANDLE_SHOWN:I = 0x5

.field public static final INSERTION_HANDLE_TAPPED:I = 0x7

.field public static final SELECTION_AUTO_SCROLL_BEGIN:I = 0x10

.field public static final SELECTION_DISSOLVED:I = 0xc

.field public static final SELECTION_ENDED_LONG_PRESS:I = 0xf

.field public static final SELECTION_ESTABLISHED:I = 0xb

.field public static final SELECTION_ESTABLISHED_LONG_PRESS:I = 0xe

.field public static final SELECTION_HANDLES_CLEARED:I = 0x2

.field public static final SELECTION_HANDLES_MOVED:I = 0x1

.field public static final SELECTION_HANDLES_SHOWN:I = 0x0

.field public static final SELECTION_HANDLE_DRAG_STARTED:I = 0x3

.field public static final SELECTION_HANDLE_DRAG_STOPPED:I = 0x4

.field public static final SELECTION_IN_PROGRESS:I = 0xd
