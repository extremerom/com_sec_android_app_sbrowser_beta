.class public interface abstract annotation Lorg/chromium/content_public/browser/ClientDataRequestType;
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
.field public static final PAYMENT_GET:I = 0x2

.field public static final WEB_AUTHN_CREATE:I = 0x0

.field public static final WEB_AUTHN_GET:I = 0x1
