.class public interface abstract annotation Lorg/chromium/components/content_settings/CookieControlsEnforcement;
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
.field public static final ENFORCED_BY_COOKIE_SETTING:I = 0x3

.field public static final ENFORCED_BY_EXTENSION:I = 0x2

.field public static final ENFORCED_BY_POLICY:I = 0x1

.field public static final ENFORCED_BY_TPCD_GRANT:I = 0x4

.field public static final MAX_VALUE:I = 0x4

.field public static final NO_ENFORCEMENT:I
