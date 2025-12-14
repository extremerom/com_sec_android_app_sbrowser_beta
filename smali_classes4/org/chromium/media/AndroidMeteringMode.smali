.class public interface abstract annotation Lorg/chromium/media/AndroidMeteringMode;
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
.field public static final CONTINUOUS:I = 0x4

.field public static final FIXED:I = 0x2

.field public static final NONE:I = 0x1

.field public static final NOT_SET:I = 0x0

.field public static final NUM_ENTRIES:I = 0x5

.field public static final SINGLE_SHOT:I = 0x3
