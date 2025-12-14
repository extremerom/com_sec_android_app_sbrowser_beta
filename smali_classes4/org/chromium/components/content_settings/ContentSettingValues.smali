.class public interface abstract annotation Lorg/chromium/components/content_settings/ContentSettingValues;
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
.field public static final ALLOW:I = 0x1

.field public static final ASK:I = 0x3

.field public static final BLOCK:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final DETECT_IMPORTANT_CONTENT:I = 0x5

.field public static final NUM_SETTINGS:I = 0x6

.field public static final SESSION_ONLY:I = 0x4
