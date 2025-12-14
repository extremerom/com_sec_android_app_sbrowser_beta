.class public interface abstract annotation Lorg/chromium/ui/modaldialog/DialogDismissalCause;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final ACTION_ON_CONTENT:I = 0x3

.field public static final ACTION_ON_DIALOG_COMPLETED:I = 0xf

.field public static final ACTION_ON_DIALOG_NOT_POSSIBLE:I = 0x10

.field public static final ACTIVITY_DESTROYED:I = 0xa

.field public static final CLIENT_TIMEOUT:I = 0x11

.field public static final DIALOG_INTERACTION_DEFERRED:I = 0xe

.field public static final DISMISSED_BY_NATIVE:I = 0x4

.field public static final NAVIGATE:I = 0xc

.field public static final NAVIGATE_BACK:I = 0x5

.field public static final NAVIGATE_BACK_OR_TOUCH_OUTSIDE:I = 0x7

.field public static final NEGATIVE_BUTTON_CLICKED:I = 0x2

.field public static final NOT_ATTACHED_TO_WINDOW:I = 0xb

.field public static final POSITIVE_BUTTON_CLICKED:I = 0x1

.field public static final TAB_DESTROYED:I = 0x9

.field public static final TAB_SWITCHED:I = 0x8

.field public static final TOUCH_OUTSIDE:I = 0x6

.field public static final UNKNOWN:I = 0x0

.field public static final WEB_CONTENTS_DESTROYED:I = 0xd
