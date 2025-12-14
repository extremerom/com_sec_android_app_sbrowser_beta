.class public interface abstract Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract append(Ljava/lang/CharSequence;)V
.end method

.method public abstract getEditableText()Landroid/text/Editable;
.end method

.method public abstract getHighlightColor()I
.end method

.method public abstract getKeyboardPackageName()Ljava/lang/String;
.end method

.method public abstract getSelectionEnd()I
.end method

.method public abstract getSelectionStart()I
.end method

.method public abstract getText()Landroid/text/Editable;
.end method

.method public abstract isAccessibilityEnabled()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract onAutocompleteTextStateChanged()V
.end method

.method public abstract onUpdateSelectionForTesting(II)V
.end method

.method public abstract sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public abstract setCursorVisible(Z)V
.end method

.method public abstract super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method
