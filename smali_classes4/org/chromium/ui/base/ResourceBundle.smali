.class public final Lorg/chromium/ui/base/ResourceBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sAvailableLocales:[Ljava/lang/String;


# direct methods
.method private static getLocalePakResourcePath(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/base/ResourceBundle;->sAvailableLocales:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-object v1

    :cond_1
    if-eqz p1, :cond_3

    const-string p1, "en-US"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "assets/fallback-locales/"

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lorg/chromium/base/LocaleUtils;->toBaseLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/ui/base/LocalizationUtils;->getSplitLanguageForAndroid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "assets/locales#lang_"

    const-string v2, "/"

    invoke-static {v0, p1, v2}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "assets/stored-locales/"

    :goto_0
    const-string v0, ".pak"

    invoke-static {p1, p0, v0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/base/ApkAssets;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object p1

    :cond_4
    const-string v2, "assets/locales/"

    invoke-static {v2, p0, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/ApkAssets;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    if-eqz p2, :cond_6

    const-string p0, "ResourceBundle"

    const-string p2, "Did not exist: %s"

    invoke-static {p0, p2, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    return-object v1
.end method

.method public static setAvailablePakLocales([Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lorg/chromium/ui/base/ResourceBundle;->sAvailableLocales:[Ljava/lang/String;

    return-void
.end method

.method public static setNoAvailableLocalePaks()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/chromium/ui/base/ResourceBundle;->sAvailableLocales:[Ljava/lang/String;

    return-void
.end method
