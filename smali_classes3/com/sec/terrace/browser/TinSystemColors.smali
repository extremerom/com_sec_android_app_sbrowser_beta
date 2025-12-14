.class public Lcom/sec/terrace/browser/TinSystemColors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTextSearchActiveHighlightColor:I

.field private static sTextSearchInactiveHighlightColorDark:I

.field private static sTextSearchInactiveHighlightColorLight:I


# direct methods
.method private static getTextSearchActiveHighlightColor()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchActiveHighlightColor:I

    return v0
.end method

.method private static getTextSearchInactiveHighlightColorDark()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchInactiveHighlightColorDark:I

    return v0
.end method

.method private static getTextSearchInactiveHighlightColorLight()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget v0, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchInactiveHighlightColorLight:I

    return v0
.end method

.method public static setFromResources()V
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$color;->color_palette_find_on_page_active_highlight_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchActiveHighlightColor:I

    sget v1, Lcom/sec/terrace/R$color;->color_palette_find_on_page_inactive_highlight_color_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sput v1, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchInactiveHighlightColorLight:I

    sget v1, Lcom/sec/terrace/R$color;->color_palette_find_on_page_inactive_highlight_color_dark:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/terrace/browser/TinSystemColors;->sTextSearchInactiveHighlightColorDark:I

    return-void
.end method
