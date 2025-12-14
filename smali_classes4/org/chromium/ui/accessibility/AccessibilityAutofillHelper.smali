.class public Lorg/chromium/ui/accessibility/AccessibilityAutofillHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sForceRespectDisplayedPasswordTextForTesting:Z


# direct methods
.method public static isAutofillOnlyPossibleAccessibilityConsumer()Z
    .locals 1

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isAnyAccessibilityServiceEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static shouldExposePasswordText()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityAutofillHelper;->isAutofillOnlyPossibleAccessibilityConsumer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityState;->isTextShowPasswordEnabled()Z

    move-result v0

    return v0
.end method

.method public static shouldRespectDisplayedPasswordText()Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/ui/accessibility/AccessibilityAutofillHelper;->isAutofillOnlyPossibleAccessibilityConsumer()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lorg/chromium/ui/accessibility/AccessibilityAutofillHelper;->sForceRespectDisplayedPasswordTextForTesting:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
