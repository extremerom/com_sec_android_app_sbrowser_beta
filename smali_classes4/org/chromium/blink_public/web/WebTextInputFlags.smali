.class public interface abstract annotation Lorg/chromium/blink_public/web/WebTextInputFlags;
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
.field public static final AUTOCAPITALIZE_CHARACTERS:I = 0x80

.field public static final AUTOCAPITALIZE_NONE:I = 0x40

.field public static final AUTOCAPITALIZE_SENTENCES:I = 0x200

.field public static final AUTOCAPITALIZE_WORDS:I = 0x100

.field public static final AUTOCOMPLETE_OFF:I = 0x2

.field public static final AUTOCOMPLETE_ON:I = 0x1

.field public static final AUTOCORRECT_OFF:I = 0x8

.field public static final AUTOCORRECT_ON:I = 0x4

.field public static final HAS_BEEN_PASSWORD_FIELD:I = 0x1000

.field public static final HAVE_NEXT_FOCUSABLE_ELEMENT:I = 0x400

.field public static final HAVE_PREVIOUS_FOCUSABLE_ELEMENT:I = 0x800

.field public static final NONE:I = 0x0

.field public static final SPELLCHECK_OFF:I = 0x20

.field public static final SPELLCHECK_ON:I = 0x10

.field public static final VERTICAL:I = 0x2000
