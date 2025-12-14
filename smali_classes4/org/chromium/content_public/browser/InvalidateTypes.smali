.class public interface abstract annotation Lorg/chromium/content_public/browser/InvalidateTypes;
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
.field public static final ALL:I = 0x1f

.field public static final AUDIO:I = 0x10

.field public static final LOAD:I = 0x4

.field public static final TAB:I = 0x2

.field public static final TITLE:I = 0x8

.field public static final URL:I = 0x1
