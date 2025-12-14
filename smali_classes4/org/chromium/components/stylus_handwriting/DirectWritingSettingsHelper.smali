.class public Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sDirectWritingServiceCallbackAvailable:Ljava/lang/Boolean;


# direct methods
.method private static getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "CacheStylusSettings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getDefaultInputMethod()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isDirectWritingServiceCallbackAvailable()Z
    .locals 2

    sget-object v0, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->sDirectWritingServiceCallbackAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    const-class v0, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;

    sget-object v1, Lorg/chromium/components/stylus_handwriting/DirectWritingServiceCallback;->GESTURE_TYPE_BACKSPACE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->sDirectWritingServiceCallbackAvailable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->logDwServiceCallbackFailed(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->logDwServiceCallbackFailed(Z)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->sDirectWritingServiceCallbackAvailable:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->sDirectWritingServiceCallbackAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->isDirectWritingServiceCallbackAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->isHoneyboardDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private static isFeatureEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "CacheStylusSettings"

    invoke-static {v1, v0}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getDirectWritingSetting()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_2

    move v0, v2

    :cond_2
    return v0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "direct_writing"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v2, :cond_4

    move v0, v2

    :catch_0
    :cond_4
    return v0
.end method

.method private static isHoneyboardDefault(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/DirectWritingSettingsHelper;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method private static logDwServiceCallbackFailed(Z)V
    .locals 1

    const-string v0, "InputMethod.VirtualKeyboard.Handwriting.DWServiceCallbackFailed"

    invoke-static {v0, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void
.end method
