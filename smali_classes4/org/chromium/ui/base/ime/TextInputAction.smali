.class public interface abstract annotation Lorg/chromium/ui/base/ime/TextInputAction;
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
.field public static final DEFAULT:I = 0x0

.field public static final DONE:I = 0x2

.field public static final ENTER:I = 0x1

.field public static final GO:I = 0x3

.field public static final MAX_VALUE:I = 0x7

.field public static final NEXT:I = 0x4

.field public static final PREVIOUS:I = 0x5

.field public static final SEARCH:I = 0x6

.field public static final SEND:I = 0x7
