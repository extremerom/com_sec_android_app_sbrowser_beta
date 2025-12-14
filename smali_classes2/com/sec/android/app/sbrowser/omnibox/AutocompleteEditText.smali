.class public Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDisableTextScrollingFromAutocomplete:Z

.field private mIgnoreTextChangesForAutocomplete:Z

.field private mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

.field private mOnKeyListener:Landroid/view/View$OnKeyListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mIgnoreTextChangesForAutocomplete:Z

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private ensureModel()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/SpannableAutocompleteEditTextModel;-><init>(Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase$Delegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setIgnoreTextChangeFromAutocomplete(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setLayoutDirectionIsLtr(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onSetText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onSelectionChanged(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setIgnoreTextChangeFromAutocomplete(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mIgnoreTextChangesForAutocomplete:Z

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setIgnoreTextChangeFromAutocomplete(Z)V

    return-void
.end method

.method private getOnKeyListener()Landroid/view/View$OnKeyListener;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-object p0
.end method

.method private shouldIgnoreAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mIgnoreTextChangesForAutocomplete:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->shouldIgnoreAccessibilityEvent()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const/16 p1, 0x10

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public bringPointIntoView(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mDisableTextScrollingFromAutocomplete:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return p1

    :cond_1
    :try_start_2
    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    throw p1
.end method

.method public getAccessibilityManagerForTesting()Landroid/view/accessibility/AccessibilityManager;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public getAutocompleteLength()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->getAutocompleteText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public getKeyboardPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "default_input_method"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getTextWithAutocomplete()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->getTextWithAutocomplete()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextWithoutAutocomplete()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasAutocomplete()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->hasAutocomplete()Z

    move-result p0

    return p0
.end method

.method public isAccessibilityEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAutocompleteTextStateChanged()V
    .locals 0

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->ensureModel()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onFocusChanged(Z)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->allowDiskReads()Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onPreDraw()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mDisableTextScrollingFromAutocomplete:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mDisableTextScrollingFromAutocomplete:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->bringPointIntoView(I)Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setLayoutDirectionIsLtr(Z)V

    :cond_1
    return-void
.end method

.method public onSelectionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onSelectionChanged(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onUpdateSelectionForTesting(II)V
    .locals 0

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->shouldIgnoreAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mDisableTextScrollingFromAutocomplete:Z

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setAutocompleteText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setIgnoreTextChangesForAutocomplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mIgnoreTextChangesForAutocomplete:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->setIgnoreTextChangeFromAutocomplete(Z)V

    :cond_0
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mDisableTextScrollingFromAutocomplete:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->allowDiskReads()Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->onSetText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/utils/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public shouldAutocomplete()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->mModel:Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditTextModelBase;->shouldAutocomplete()Z

    move-result p0

    return p0
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
