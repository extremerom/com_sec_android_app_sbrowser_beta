.class public interface abstract annotation Lorg/chromium/ui/base/GestureEventType;
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
.field public static final DOUBLE_TAP:I = 0x1

.field public static final EXTRA_LONG_PRESS:I = 0x12

.field public static final FLING_CANCEL:I = 0xa

.field public static final FLING_END:I = 0xb

.field public static final FLING_START:I = 0x9

.field public static final LONG_PRESS:I = 0x5

.field public static final LONG_TAP:I = 0x10

.field public static final PINCH_BEGIN:I = 0xc

.field public static final PINCH_BY:I = 0xd

.field public static final PINCH_END:I = 0xe

.field public static final SCROLL_BY:I = 0x7

.field public static final SCROLL_END:I = 0x8

.field public static final SCROLL_START:I = 0x6

.field public static final SHOW_PRESS:I = 0x0

.field public static final SINGLE_TAP_CONFIRMED:I = 0x3

.field public static final SINGLE_TAP_UNCONFIRMED:I = 0x4

.field public static final SINGLE_TAP_UP:I = 0x2

.field public static final TAP_CANCEL:I = 0xf

.field public static final TAP_DOWN:I = 0x11
