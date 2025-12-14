.class public interface abstract annotation Lorg/chromium/ui/gfx/BitmapFormat;
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
.field public static final ALPHA_8:I = 0x8

.field public static final ARGB_4444:I = 0x7

.field public static final ARGB_8888:I = 0x1

.field public static final NO_CONFIG:I = 0x0

.field public static final RGB_565:I = 0x4
