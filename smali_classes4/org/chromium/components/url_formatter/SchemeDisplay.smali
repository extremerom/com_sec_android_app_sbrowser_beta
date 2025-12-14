.class public interface abstract annotation Lorg/chromium/components/url_formatter/SchemeDisplay;
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
.field public static final OMIT_CRYPTOGRAPHIC:I = 0x2

.field public static final OMIT_HTTP_AND_HTTPS:I = 0x1

.field public static final SHOW:I
