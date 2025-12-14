.class public interface abstract Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;
    }
.end annotation


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract getAutocompleteText()Ljava/lang/String;
.end method

.method public abstract getInputConnection()Landroid/view/inputmethod/InputConnection;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract getTextWithAutocomplete()Ljava/lang/String;
.end method

.method public abstract getTextWithoutAutocomplete()Ljava/lang/String;
.end method

.method public abstract hasAutocomplete()Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract onFocusChanged(Z)V
.end method

.method public abstract onSelectionChanged(II)V
.end method

.method public abstract onSetText(Ljava/lang/CharSequence;)V
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;III)V
.end method

.method public abstract setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
.end method

.method public abstract setIgnoreTextChangeFromAutocomplete(Z)V
.end method

.method public abstract setLayoutDirectionIsLtr(Z)V
.end method

.method public abstract shouldAutocomplete()Z
.end method

.method public abstract shouldIgnoreAccessibilityEvent()Z
.end method
