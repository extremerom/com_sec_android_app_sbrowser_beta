.class public Lcom/sec/android/app/sbrowser/omnibox/UrlBar;
.super Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;,
        Lcom/sec/android/app/sbrowser/omnibox/UrlBar$EmptyListener;
    }
.end annotation


# instance fields
.field private final mDirectWritingHandler:Landroid/os/Handler;

.field private final mDirectWritingRunnable:Ljava/lang/Runnable;

.field mIsDirectWritingStarted:Z

.field private mIsEditMode:Z

.field private mIsFirstTouchInEditMode:Z

.field private mIsLongClick:Z

.field private mIsMouseClickRightButton:Z

.field private mIsMouseClickUrlBar:Z

.field private mIsMousePasteUrlBar:Z

.field private mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

.field private mNeedToSelectAll:Z

.field private mPenMoveDistance:I

.field private mRequestingAutofillStructure:Z

.field private mSearchMagnifier:Landroid/graphics/drawable/Drawable;

.field private mStartPenX:I

.field private mStartPenY:I

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private final mTextChangeListener:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsFirstTouchInEditMode:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$1;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingRunnable:Ljava/lang/Runnable;

    new-instance p2, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$5;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTextChangeListener:Landroid/text/TextWatcher;

    new-instance p2, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$EmptyListener;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$EmptyListener;-><init>(I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickUrlBar:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTextChangeListener:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickUrlBar:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMousePasteUrlBar:Z

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->updateQueryHint()V

    return-void
.end method

.method private scrollToTLD(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->splitPathFromUrlDisplayText(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateQueryHint()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140dde

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mSearchMagnifier:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->updateQueryHint(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public attachTextChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public detachTextChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTextChangeListener:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v3, "si__UrlBar"

    if-nez v1, :cond_0

    const-string p0, "ClipDescription is null"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v4, "text/plain"

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "text/html"

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "Not allowed MIME type"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;->onUrlBarTextDragged(Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$4;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    :cond_2
    return v2

    :cond_3
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "dispatchTouchEvent IndexOutOfBoundsException : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__UrlBar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mRequestingAutofillStructure:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method public isDirectWritingWorking()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    return p0
.end method

.method public isEditMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    return p0
.end method

.method public isMouseClickRightButton()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickRightButton:Z

    return p0
.end method

.method public isMouseClickUrlBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickUrlBar:Z

    return p0
.end method

.method public isMousePasteUrlBar()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMousePasteUrlBar:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$3;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onAutocompleteTextStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;->onUrlBarTextChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080774

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mSearchMagnifier:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d92

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->updateQueryHint()V

    const-string v0, "restrictDirectWritingArea=true"

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    return-void
.end method

.method public onPenEvent(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenX:I

    if-le v0, v6, :cond_2

    sub-int v6, v0, v6

    goto :goto_0

    :cond_2
    sub-int/2addr v6, v0

    :goto_0
    iget v7, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenY:I

    if-le v5, v7, :cond_3

    sub-int v7, v5, v7

    goto :goto_1

    :cond_3
    sub-int/2addr v7, v5

    :goto_1
    iget v8, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mPenMoveDistance:I

    add-int/2addr v6, v7

    div-int/2addr v6, v4

    add-int/2addr v6, v8

    iput v6, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mPenMoveDistance:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenX:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenY:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f071633

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    if-lt v6, v0, :cond_5

    const-string v0, "si__UrlBar"

    const-string v4, "Direct writing started"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;->onDirectWritingStarted()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsFirstTouchInEditMode:Z

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsFirstTouchInEditMode:Z

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mPenMoveDistance:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mStartPenY:I

    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_7

    :cond_6
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsFirstTouchInEditMode:Z

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsDirectWritingStarted:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mDirectWritingRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xf4254

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x2000

    if-ne p1, v0, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    if-eqz p1, :cond_0

    const-string p1, "si__UrlBar"

    const-string v0, "onPopulateAccessibilityEvent(), TYPE_VIEW_TEXT_SELECTION_CHANGED"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$7;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    :cond_0
    return-void
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mRequestingAutofillStructure:Z

    invoke-super {p0, p1, p2}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mRequestingAutofillStructure:Z

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v4, v3

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    const v1, 0x1020031

    const v2, 0x1020022

    if-eqz v0, :cond_1

    if-eq p1, v2, :cond_0

    const v0, 0x1020033

    if-eq p1, v0, :cond_0

    const v0, 0x1020032

    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickRightButton:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->attachTextChangeListener()V

    if-ne p1, v2, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMousePasteUrlBar:Z

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isAccessoryKeyboardConnected(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    :cond_3
    if-ne p1, v2, :cond_4

    move p1, v1

    :cond_4
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTextContextMenuItem IndexOutOfBoundsException : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si__UrlBar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performLongClick()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "XIAOMI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result p0

    return p0
.end method

.method public setBackground(Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010099

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isHighContrast()Z

    move-result v0

    const v2, 0x7f060d9f

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isNightMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isIncognito()Z

    move-result v0

    const v3, 0x7f060d9e

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const p1, 0x7f060d98

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeBlack()Z

    move-result v0

    const v4, 0x7f060d92

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060da0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v3, 0x7f060d9c

    :goto_0
    move p1, v4

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isReaderThemeSepia()Z

    move-result v0

    if-eqz v0, :cond_3

    const v3, 0x7f060d9d

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->hasTheme()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/toolbar/ThemeParam;->isLightTheme()Z

    move-result p1

    if-eqz p1, :cond_4

    const v3, 0x7f060d9a

    const p1, 0x7f060d94

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const p1, 0x7f060d93

    goto :goto_2

    :cond_5
    const v3, 0x7f060d99

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v3, 0x7f060d9b

    const p1, 0x7f060d95

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mSearchMagnifier:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsFirstTouchInEditMode:Z

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsEditMode:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickUrlBar:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/AutocompleteEditText;->setIgnoreTextChangesForAutocomplete(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->updateQueryHint()V

    return-void
.end method

.method public setKeyword(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mListener:Lcom/sec/android/app/sbrowser/omnibox/UrlBar$Listener;

    return-void
.end method

.method public setMouseClickRightButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsMouseClickRightButton:Z

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->setText(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setText(Ljava/lang/String;ZZ)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isGoogleKeyboard(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, ""

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->updateQueryHint()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    if-nez p3, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->scrollToTLD(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance p3, Landroid/text/SpannableString;

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p3, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_3
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isGoogleKeyboard(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p1, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$6;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$6;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mIsLongClick:Z

    if-eqz p3, :cond_5

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p3, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/high16 p1, 0x20000

    invoke-virtual {p0, p1, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->mNeedToSelectAll:Z

    :cond_6
    :goto_0
    return-void
.end method

.method public setTextByPost(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$8;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$8;-><init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
