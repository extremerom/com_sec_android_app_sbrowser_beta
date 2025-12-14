.class public Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/StylusWritingHandler;
.implements Lorg/chromium/components/stylus_handwriting/StylusApiOption;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mStylusHandwritingInitiator:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance v0, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;

    invoke-direct {v0, p1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;->mStylusHandwritingInitiator:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const-string v1, "CacheStylusSettings"

    invoke-static {v1, v2}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getStylusHandWritingSetting()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v3, 0x22

    const-string v5, "stylus_handwriting_enabled"

    if-lt v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :goto_0
    const-string v3, "AndroidStylus"

    if-eq v0, v4, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Stylus feature disabled."

    invoke-static {v3, v0, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v2}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getDefaultInputMethod()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "default_input_method"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_5

    const-string p0, "Stylus handwriting feature is not supported as default IME could not be fetched."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_5
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lorg/chromium/components/autofill/a;->n(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Stylus feature supported by IME: %s"

    invoke-static {v3, v1, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0

    :cond_7
    const-string p0, "Couldn\'t find IME"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public canShowSoftKeyboard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getStylusPointerIcon()I
    .locals 0

    const/16 p0, 0x3fe

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;->mStylusHandwritingInitiator:Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingInitiator;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onEditElementFocusedForStylusWriting(Landroid/graphics/Rect;Landroid/graphics/Point;FILandroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string p3, "AndroidStylus"

    const-string p4, "Start Stylus Writing"

    invoke-static {p3, p4, p2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/chromium/components/stylus_handwriting/StylusApiOption;->recordStylusHandwritingTriggered(I)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/AndroidStylusWritingHandler;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, p5}, Lorg/chromium/components/autofill/a;->k(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    return-void
.end method

.method public onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-interface {p2, p0}, Lorg/chromium/content_public/browser/WebContents;->setStylusWritingHandler(Lorg/chromium/content_public/browser/StylusWritingHandler;)V

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "AndroidStylus"

    const-string v0, "Setting on web contents, %s"

    invoke-static {p1, v0, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-interface {p2}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/components/autofill/a;->i(Landroid/view/View;)V

    return-void
.end method

.method public shouldInitiateStylusWriting()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
