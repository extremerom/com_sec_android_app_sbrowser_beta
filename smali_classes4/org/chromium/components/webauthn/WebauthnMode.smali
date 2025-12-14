.class public interface abstract annotation Lorg/chromium/components/webauthn/WebauthnMode;
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
.field public static final APP:I = 0x1

.field public static final BROWSER:I = 0x2

.field public static final CHROME:I = 0x3

.field public static final CHROME_3PP_ENABLED:I = 0x4

.field public static final NONE:I
