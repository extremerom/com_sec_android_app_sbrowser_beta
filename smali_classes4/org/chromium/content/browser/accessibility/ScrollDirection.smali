.class public interface abstract annotation Lorg/chromium/content/browser/accessibility/ScrollDirection;
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
.field public static final BACKWARD:I = 0x1

.field public static final DOWN:I = 0x3

.field public static final FORWARD:I = 0x0

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x5

.field public static final UP:I = 0x2
