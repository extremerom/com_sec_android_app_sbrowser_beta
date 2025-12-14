.class public Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;
    }
.end annotation


# instance fields
.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeleteButtonAni:Landroid/widget/ImageButton;

.field private mDeleteButtonContainer:Landroid/view/ViewGroup;

.field private mDividerBottom:Landroid/widget/LinearLayout;

.field private mDividerTop:Landroid/widget/LinearLayout;

.field private mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

.field private mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

.field private mFindButtonKeyListener:Landroid/view/View$OnKeyListener;

.field private mFindButtonParent:Landroid/widget/LinearLayout;

.field private mFindNextButton:Landroid/widget/ImageButton;

.field private mFindPrevButton:Landroid/widget/ImageButton;

.field private mFindStatus:Landroid/widget/TextView;

.field private mFindStatusAni:Landroid/widget/TextView;

.field private mIsFindByButton:Z

.field private mIsFinding:Z

.field private mIsStartWithText:Z

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

.field private mNavigateUpButton:Landroid/widget/ImageButton;

.field private mNavigateUpButtonAni:Landroid/widget/ImageButton;

.field private mNeedShrinkAnimation:Z

.field private mNoResultLayout:Landroid/widget/RelativeLayout;

.field private mOuterMarginLayout:Landroid/widget/LinearLayout;

.field private mPrevMatchCount:I

.field private mPrevString:Ljava/lang/String;

.field private mRightIconKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field private mToolbarAniBG:Landroid/widget/FrameLayout;

.field private mToolbarAniContainer:Landroid/widget/FrameLayout;

.field private mToolbarButtonContainer:Landroid/widget/FrameLayout;

.field private mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

.field private mToolbarInbox:Landroid/widget/FrameLayout;

.field private mToolbarInboxAni:Landroid/widget/LinearLayout;

.field private mToolbarLayout:Landroid/widget/LinearLayout;

.field private mToolbarOuterLayout:Landroid/widget/LinearLayout;

.field private mVoiceSearchButton:Landroid/widget/ImageButton;

.field private mVoiceSearchButtonAni:Landroid/widget/ImageButton;

.field private mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

.field private mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevMatchCount:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mWindowBounds:Landroid/graphics/Rect;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFindByButton:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNeedShrinkAnimation:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsStartWithText:Z

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mRightIconKeyListener:Landroid/view/View$OnKeyListener;

    new-instance p2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$2;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonKeyListener:Landroid/view/View$OnKeyListener;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevString:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->handleEditTextChange(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hideButtonAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setEditTextAnimationFinishedPadding()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->shouldFinishFindOnPage(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->showButtonAnimation(Landroid/view/View;II)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$4(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$9(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private enableButtons(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevMatchCount:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->showPrevNextButton(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->showPrevNextButton(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevMatchCount:I

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hidePrevNextButton(Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->hidePrevNextButton(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic f(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$8(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private handleEditTextChange(Ljava/lang/CharSequence;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14054c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setEditTextExtensionAnimation()V

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->enableButtons(Z)V

    iput v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevMatchCount:I

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onStopFindText()V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFindText(Ljava/lang/String;)V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFindByButton:Z

    if-nez p1, :cond_8

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNeedShrinkAnimation:Z

    :cond_8
    :goto_2
    return-void
.end method

.method private handleEditTextKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const p2, 0x20000042

    if-eq p1, p2, :cond_0

    const p2, 0x200000a0

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_1
    return v2

    :cond_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    return v2

    :cond_4
    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v1

    :sswitch_0
    return v2

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p2

    if-eq p1, p2, :cond_5

    return v1

    :cond_5
    :sswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusRight(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_7
    return v2

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->requestFocusLeft(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_8
    return v2

    :sswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->focusOutFromFindOnPage()V

    :cond_9
    return v2

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_4
        0x15 -> :sswitch_3
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
        0x42 -> :sswitch_0
        0xa0 -> :sswitch_0
        0x2000003d -> :sswitch_3
        0x20000042 -> :sswitch_0
        0x200000a0 -> :sswitch_0
    .end sparse-switch
.end method

.method private hideButtonAnimation(Landroid/view/View;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$11;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$11;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private hidePrevNextButton(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut80()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$7;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onWindowFocusChanged$11()V

    return-void
.end method

.method private initializeAnimationLayout()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f08042d

    goto :goto_0

    :cond_0
    const v1, 0x7f08042c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private isFocusLayoutType()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isIncognitoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$hide$10()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$3(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->lambda$onFinishInflate$1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$hide$10()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onStopFindText()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFinishFindOnPage()V

    :cond_0
    const-string p0, "201"

    const-string p1, "2099"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboardWithDelay(Landroid/view/View;)V

    :cond_0
    const-string p0, "201"

    const-string p1, "2043"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0xf4257

    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onLaunchVoiceRecognizer()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$3(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    goto :goto_0

    :cond_0
    const-string p0, "201"

    const-string p1, "2042"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$4(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->handleEditTextKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onFinishInflate$5(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFindByButton:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFindNext()V

    :cond_1
    const-string p0, "201"

    const-string p1, "2045"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$6(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFindByButton:Z

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFindPrev()V

    :cond_1
    const-string p0, "201"

    const-string p1, "2044"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onFinishInflate$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onFinishInflate$8(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onFinishInflate$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onWindowFocusChanged$11()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    return-object p0
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method private setButtonOrientation(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonParent:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_1
    return-void
.end method

.method private setEditTextAnimationFinishedPadding()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071634

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private setEditTextExtensionAnimation()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setPreAnimationLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    const-string v2, "0/0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$9;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setEditTextShrinkAnimation()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setPreAnimationLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$8;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private setPreAnimationLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRight(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLeft(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->initializeAnimationLayout()V

    return-void
.end method

.method private setSearchBoxBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    return-void
.end method

.method private setTouchDelegate(Landroid/view/View;II)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$5;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private shouldFinishFindOnPage(Landroid/view/DragEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->shouldFinishFindOnPage()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string p1, "terrace-image-or-link-drag-label"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "FindOnPageToolbar"

    const-string p1, "Should finish find on page"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private showButtonAnimation(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$10;

    invoke-direct {p3, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$10;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showPrevNextButton(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut80()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$6;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$6;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    return-object p0
.end method

.method private updateToolbarLayout()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0714c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f0b09ff

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isFocusLayoutType()Z

    move-result v4

    const v5, 0x7f0715d5

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v5, 0x50

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int v5, v4, v0

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 v5, 0x30

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0517

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerTop:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isFocusLayoutType()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isFocusLayoutType()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isBookmarkBarEnabled(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateTopMargin()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isPcGuiSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabBar1LineLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0714c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarOuterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTouchDelegate()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07059b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTouchDelegate(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070595

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070594

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTouchDelegate(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setTouchDelegate(Landroid/view/View;II)V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onFinishFindOnPage()V

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public hide()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/i;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isShowing()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBackgroundColorChanged()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "FindOnPageToolbar"

    const-string v2, "notifyBackgroundColorChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isIncognitoMode()Z

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v3

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0603f0

    invoke-virtual {v8, v9}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0603ef

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0603f5

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0603f3

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0603f7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x1010099

    filled-new-array {v14}, [I

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    invoke-virtual {v13, v14, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    const v13, 0x7f060218

    const v14, 0x7f0601e8

    const v15, 0x7f060d9f

    const v16, 0x7f060d59

    const v17, 0x7f080772

    if-nez v3, :cond_8

    if-eqz v1, :cond_2

    goto/16 :goto_4

    :cond_2
    const v1, 0x7f060d9e

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060d55

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060d68

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0603f2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0604d9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setSearchBoxBackgroundColor(I)V

    const v13, 0x7f060d98

    move v14, v1

    :goto_1
    move/from16 v1, v16

    move/from16 v3, v17

    goto/16 :goto_5

    :cond_3
    const/4 v2, 0x2

    if-ne v5, v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d53

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060da0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d61

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604d7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setSearchBoxBackgroundColor(I)V

    const v14, 0x7f060d9c

    const v13, 0x7f060d96

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    const v3, 0x7f080773

    if-ne v5, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d54

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d62

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setSearchBoxBackgroundColor(I)V

    const v14, 0x7f060d9d

    const v13, 0x7f060d97

    const v16, 0x7f060d5b

    :goto_2
    move/from16 v1, v16

    goto/16 :goto_5

    :cond_5
    if-eqz v7, :cond_7

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getThemeColor()I

    move-result v8

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result v9

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0604cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setSearchBoxBackgroundColor(I)V

    const v13, 0x7f060d93

    move v14, v1

    goto :goto_3

    :cond_6
    move/from16 v17, v3

    :goto_3
    move v10, v9

    move v11, v10

    goto/16 :goto_1

    :cond_7
    const v16, 0x7f0603f4

    goto :goto_2

    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060d52

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603f6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0603f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0604ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setSearchBoxBackgroundColor(I)V

    goto/16 :goto_1

    :goto_5
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v9, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v10, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v10, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerTop:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerBottom:Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setHighlightColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v1, v9, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v1, v10, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v1, v10, v4}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public notifyButtonAvailabilityChanged()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setButtonOrientation(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateToolbarLayout()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateCutOutMarginsVisibility()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;->onStopFindText()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0d95

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b0517

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarOuterLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b050f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0510

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInbox:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b0d80

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b0a7d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0603f5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/h;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/h;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0a7c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b0a7a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0603f3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/h;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/h;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mRightIconKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0a81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    const v0, 0x7f0b0a7f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isSviEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f08042d

    goto :goto_9

    :cond_9
    const v3, 0x7f08042c

    :goto_9
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/h;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/h;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mRightIconKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0508

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$3;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/j;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/j;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/k;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/toolbar/k;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/InputFilterUtil;->getMaxLengthFilter(Landroid/content/Context;)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f0b0512

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    const v0, 0x7f0b0507

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonParent:Landroid/widget/LinearLayout;

    const v0, 0x7f0b050a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/h;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/h;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0b0511

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/sec/android/app/sbrowser/toolbar/h;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/toolbar/h;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindButtonKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14054d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140547

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f14004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindPrevButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setConsumeMouseEvent(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindNextButton:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setConsumeMouseEvent(Landroid/view/View;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeMain(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setButtonOrientation(I)V

    goto :goto_c

    :cond_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    goto :goto_b

    :cond_c
    move v0, v2

    :goto_b
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setButtonOrientation(I)V

    :goto_c
    const v0, 0x7f0b07f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/l;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/l;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/l;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/toolbar/l;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/m;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    const v0, 0x7f0b0515

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0514

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarAniBG:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0516

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarInboxAni:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0509

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditTextAni:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const v0, 0x7f0b0513

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatusAni:Landroid/widget/TextView;

    const v0, 0x7f0b0d81

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarButtonContainerAni:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0a7e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNavigateUpButtonAni:Landroid/widget/ImageButton;

    const v0, 0x7f0b0a7b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonAni:Landroid/widget/ImageButton;

    const v0, 0x7f0b0a80

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonAni:Landroid/widget/ImageButton;

    const v0, 0x7f0b050c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerTop:Landroid/widget/LinearLayout;

    const v0, 0x7f0b050b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDividerBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateToolbarLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateTouchDelegate()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$4;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    aget v2, v1, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    aget v1, v1, v3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mToolbarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return v3

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onMeasure(II)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->isEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "FindOnPageToolbar"

    const-string v0, "HideStatusBar: keyboard is turned on"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mWindowBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onVoiceRecognizerResult(Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer$Result;->keyword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/toolbar/i;-><init>(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;I)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    invoke-virtual {v0, p0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFindResult(II)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardTurnedOn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiLowUltraThick(Landroid/view/View;I)Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->enableButtons(Z)V

    move p2, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->disableBlurEffect(Landroid/view/View;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNoResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->enableButtons(Z)V

    :goto_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mPrevMatchCount:I

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const v4, 0x7f14054b

    const v5, 0x7f14054a

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mFindStatus:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNeedShrinkAnimation:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsStartWithText:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setEditTextShrinkAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->setEditTextAnimationFinishedPadding()V

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mNeedShrinkAnimation:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsStartWithText:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFindByButton:Z

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsFinding:Z

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mListener:Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;

    return-void
.end method

.method public setPredictiveText()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isIncognitoMode()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->setPredictionOnIme(Landroid/widget/EditText;Z)V

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->show(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateCutOutMarginsVisibility()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateTopMargin()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->showKeyboard(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mIsStartWithText:Z

    :goto_1
    return-void
.end method

.method public updateCutOutMarginsVisibility()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->isFocusLayoutType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->updateCutOutMarginsVisibility(Z)V

    return-void
.end method

.method public updateCutOutMarginsVisibility(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->getInstance()Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mOuterMarginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/hide_status_bar/HideStatusBarController;->updateCutOutMarginsVisibility(Landroid/app/Activity;Landroid/widget/LinearLayout;Z)V

    return-void
.end method

.method public updateToolbarBtn()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mEditText:Lcom/sec/android/app/sbrowser/common/widget/SafeEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mVoiceSearchButtonContainer:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;->mDeleteButtonContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move v1, v3

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
