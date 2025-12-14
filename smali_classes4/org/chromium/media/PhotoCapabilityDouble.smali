.class public interface abstract annotation Lorg/chromium/media/PhotoCapabilityDouble;
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
.field public static final CURRENT_EXPOSURE_COMPENSATION:I = 0xa

.field public static final CURRENT_EXPOSURE_TIME:I = 0xe

.field public static final CURRENT_FOCUS_DISTANCE:I = 0x6

.field public static final CURRENT_ZOOM:I = 0x2

.field public static final MAX_EXPOSURE_COMPENSATION:I = 0x9

.field public static final MAX_EXPOSURE_TIME:I = 0xd

.field public static final MAX_FOCUS_DISTANCE:I = 0x5

.field public static final MAX_ZOOM:I = 0x1

.field public static final MIN_EXPOSURE_COMPENSATION:I = 0x8

.field public static final MIN_EXPOSURE_TIME:I = 0xc

.field public static final MIN_FOCUS_DISTANCE:I = 0x4

.field public static final MIN_ZOOM:I = 0x0

.field public static final NUM_ENTRIES:I = 0x10

.field public static final STEP_EXPOSURE_COMPENSATION:I = 0xb

.field public static final STEP_EXPOSURE_TIME:I = 0xf

.field public static final STEP_FOCUS_DISTANCE:I = 0x7

.field public static final STEP_ZOOM:I = 0x3
