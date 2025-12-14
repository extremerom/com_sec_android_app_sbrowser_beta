.class public interface abstract annotation Lorg/chromium/components/content_settings/ContentSettingSource;
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
.field public static final ALLOW_LIST:I = 0x4

.field public static final EXTENSION:I = 0x2

.field public static final INSTALLED_WEB_APP:I = 0x6

.field public static final NONE:I = 0x0

.field public static final OS_JAVASCRIPT_OPTIMIZER:I = 0x8

.field public static final POLICY:I = 0x1

.field public static final SUPERVISED:I = 0x5

.field public static final TEST:I = 0x9

.field public static final TPCD_GRANT:I = 0x7

.field public static final USER:I = 0x3
