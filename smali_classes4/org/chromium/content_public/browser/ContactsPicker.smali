.class public final Lorg/chromium/content_public/browser/ContactsPicker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sContactsPickerDelegate:Lorg/chromium/content_public/browser/ContactsPickerDelegate;

.field private static sPicker:Ljava/lang/Object;


# direct methods
.method public static canShowContactsPicker(Lorg/chromium/content_public/browser/WebContents;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/chromium/content_public/browser/WebContents;->getVisibility()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static showContactsPicker(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/ContactsPickerListener;ZZZZZZLjava/lang/String;)Z
    .locals 12

    sget-object v0, Lorg/chromium/content_public/browser/ContactsPicker;->sContactsPickerDelegate:Lorg/chromium/content_public/browser/ContactsPickerDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lorg/chromium/content_public/browser/ContactsPicker;->canShowContactsPicker(Lorg/chromium/content_public/browser/WebContents;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v2, Lorg/chromium/content_public/browser/ContactsPicker;->sContactsPickerDelegate:Lorg/chromium/content_public/browser/ContactsPickerDelegate;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lorg/chromium/content_public/browser/ContactsPickerDelegate;->showContactsPicker(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/ContactsPickerListener;ZZZZZZLjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/chromium/content_public/browser/ContactsPicker;->sPicker:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method
