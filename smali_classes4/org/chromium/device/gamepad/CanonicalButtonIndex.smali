.class public interface abstract annotation Lorg/chromium/device/gamepad/CanonicalButtonIndex;
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
.field public static final BACK_SELECT:I = 0x8

.field public static final COUNT:I = 0x11

.field public static final DPAD_DOWN:I = 0xd

.field public static final DPAD_LEFT:I = 0xe

.field public static final DPAD_RIGHT:I = 0xf

.field public static final DPAD_UP:I = 0xc

.field public static final LEFT_SHOULDER:I = 0x4

.field public static final LEFT_THUMBSTICK:I = 0xa

.field public static final LEFT_TRIGGER:I = 0x6

.field public static final META:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field public static final RIGHT_SHOULDER:I = 0x5

.field public static final RIGHT_THUMBSTICK:I = 0xb

.field public static final RIGHT_TRIGGER:I = 0x7

.field public static final SECONDARY:I = 0x1

.field public static final START:I = 0x9

.field public static final TERTIARY:I = 0x2
