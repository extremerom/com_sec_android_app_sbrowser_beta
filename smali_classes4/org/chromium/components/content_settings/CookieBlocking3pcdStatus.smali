.class public interface abstract annotation Lorg/chromium/components/content_settings/CookieBlocking3pcdStatus;
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
.field public static final ALL:I = 0x2

.field public static final LIMITED:I = 0x1

.field public static final MAX_VALUE:I = 0x2

.field public static final NOT_IN3PCD:I
