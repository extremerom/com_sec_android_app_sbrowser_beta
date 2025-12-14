.class public interface abstract annotation Lorg/chromium/ui/resources/AndroidResourceType;
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
.field public static final COUNT:I = 0x4

.field public static final DYNAMIC:I = 0x1

.field public static final DYNAMIC_BITMAP:I = 0x2

.field public static final FIRST:I = 0x0

.field public static final LAST:I = 0x3

.field public static final STATIC:I = 0x0

.field public static final SYSTEM:I = 0x3
