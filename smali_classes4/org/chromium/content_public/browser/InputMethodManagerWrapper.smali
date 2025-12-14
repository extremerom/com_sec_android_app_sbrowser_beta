.class public interface abstract Lorg/chromium/content_public/browser/InputMethodManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/InputMethodManagerWrapper$Delegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
.end method

.method public abstract isActive(Landroid/view/View;)Z
.end method

.method public abstract onInputConnectionCreated()V
.end method

.method public abstract onWindowAndroidChanged(Lorg/chromium/ui/base/WindowAndroid;)V
.end method

.method public abstract restartInput(Landroid/view/View;)V
.end method

.method public abstract setLaunchedExtensionView(Z)V
.end method

.method public abstract showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V
.end method

.method public abstract updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
.end method

.method public abstract updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
.end method

.method public abstract updateSelection(Landroid/view/View;IIII)V
.end method

.method public abstract viewClicked(Landroid/view/View;)V
.end method
