.class public interface abstract annotation Lorg/chromium/blink_public/web/WebInputEventModifier;
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
.field public static final ALT_GR_KEY:I = 0x8000

.field public static final ALT_KEY:I = 0x4

.field public static final BACK_BUTTON_DOWN:I = 0x100000

.field public static final CAPS_LOCK_ON:I = 0x200

.field public static final CONTROL_KEY:I = 0x2

.field public static final FN_KEY:I = 0x10000

.field public static final FORWARD_BUTTON_DOWN:I = 0x200000

.field public static final FROM_DEBUGGER:I = 0x800000

.field public static final IS_AUTO_REPEAT:I = 0x20

.field public static final IS_COMPATIBILITY_EVENT_FOR_TOUCH:I = 0x80000

.field public static final IS_COMPOSING:I = 0x4000

.field public static final IS_KEY_PAD:I = 0x10

.field public static final IS_LEFT:I = 0x800

.field public static final IS_RIGHT:I = 0x1000

.field public static final IS_TOUCH_ACCESSIBILITY:I = 0x2000

.field public static final KEY_MODIFIERS:I = 0x3800f

.field public static final LEFT_BUTTON_DOWN:I = 0x40

.field public static final META_KEY:I = 0x8

.field public static final MIDDLE_BUTTON_DOWN:I = 0x80

.field public static final NO_MODIFIERS:I = 0x0

.field public static final NUM_LOCK_ON:I = 0x400

.field public static final RELATIVE_MOTION_EVENT:I = 0x400000

.field public static final RIGHT_BUTTON_DOWN:I = 0x100

.field public static final SCROLLBAR_MANIPULATION_HANDLED_ON_COMPOSITOR_THREAD:I = 0x4000000

.field public static final SCROLL_LOCK_ON:I = 0x40000

.field public static final SHIFT_KEY:I = 0x1

.field public static final SYMBOL_KEY:I = 0x20000

.field public static final TARGET_FRAME_MOVED_RECENTLY:I = 0x1000000

.field public static final TARGET_FRAME_MOVED_RECENTLY_FOR_I_OV2:I = 0x2000000
