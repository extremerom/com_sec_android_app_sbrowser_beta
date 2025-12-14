.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCardViewContainer:Landroid/view/View;

.field private mCardViewImage:Landroid/widget/ImageView;

.field private mCardViewRadioButton:Landroid/widget/CompoundButton;

.field private mChangingMode:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:Ljava/lang/String;

.field private mDialog:Lm/l;

.field private mGridViewContainer:Landroid/view/View;

.field private mGridViewImage:Landroid/widget/ImageView;

.field private mGridViewRadioButton:Landroid/widget/CompoundButton;

.field private mListViewContainer:Landroid/view/View;

.field private mListViewImage:Landroid/widget/ImageView;

.field private mListViewRadioButton:Landroid/widget/CompoundButton;

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

.field private mOkBtn:Landroid/widget/Button;

.field private final mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final mOnKeyDownListener:Landroid/view/View$OnKeyListener;

.field private final mOnKeyUpListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/d;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnKeyUpListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/d;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnKeyDownListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/e;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mAnchor:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCurrentMode:Ljava/lang/String;

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private announceForFeedbackIfNeeded(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$show$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$show$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$show$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$show$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f(Landroid/widget/CompoundButton;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$initViewTypeItem$7(Landroid/widget/CompoundButton;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$new$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->lambda$new$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private hasSingleColumn()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ab6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/2addr p0, v0

    const/4 v0, 0x1

    add-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inflateContentView(Z)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0501

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initListViewType(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initCardViewType(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initGridViewType(Landroid/view/View;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setCheckedWithCurrentMode()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateContentView()V

    :goto_0
    return-object v0
.end method

.method private initCardViewType(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0e22

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewContainer:Landroid/view/View;

    const v0, 0x7f0b0966

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    const v0, 0x7f0b060a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSettings;->supportCardViewType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewContainer:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initViewTypeItem(Landroid/view/View;Landroid/widget/CompoundButton;)V

    :cond_0
    return-void
.end method

.method private initGridViewType(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0e23

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewContainer:Landroid/view/View;

    const v0, 0x7f0b0967

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    const v0, 0x7f0b060b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initViewTypeItem(Landroid/view/View;Landroid/widget/CompoundButton;)V

    return-void
.end method

.method private initListViewType(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0e24

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewContainer:Landroid/view/View;

    const v0, 0x7f0b0968

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    const v0, 0x7f0b060c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewImage:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->initViewTypeItem(Landroid/view/View;Landroid/widget/CompoundButton;)V

    return-void
.end method

.method private initViewTypeItem(Landroid/view/View;Landroid/widget/CompoundButton;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnKeyDownListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/s;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/s;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$initViewTypeItem$7(Landroid/widget/CompoundButton;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p3, 0x13

    const/4 v0, 0x1

    if-eq p2, p3, :cond_1

    const/16 p0, 0x14

    if-eq p2, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocusToContentView(Landroid/view/View;)V

    return v0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p3, 0x13

    const/4 v0, 0x1

    if-eq p2, p3, :cond_1

    const/16 p3, 0x14

    if-eq p2, p3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocusToDialogButton(Landroid/view/View;)V

    :cond_1
    return v0
.end method

.method private synthetic lambda$new$2(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string p1, "mode_list"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mChangingMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    if-ne p1, v1, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string p1, "mode_card"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mChangingMode:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    if-ne p1, v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string p1, "mode_grid"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mChangingMode:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateContentView()V

    return-void
.end method

.method private synthetic lambda$show$3(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;->onCancel()V

    return-void
.end method

.method private synthetic lambda$show$4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->notifyViewTypeChanged()V

    return-void
.end method

.method private synthetic lambda$show$5(Landroid/content/DialogInterface;)V
    .locals 2

    check-cast p1, Lm/l;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOkBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnKeyUpListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCancelBtn:Landroid/widget/Button;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOnKeyUpListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$show$6(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;->onDismiss()V

    return-void
.end method

.method private notifyViewTypeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCurrentMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mChangingMode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mChangingMode:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;->onViewTypeChanged(Ljava/lang/String;)V

    return-void
.end method

.method private requestFocus(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private requestFocusToContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOkBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewContainer:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocus(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCancelBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewContainer:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocus(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestFocusToDialogButton(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewContainer:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocus(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewContainer:Landroid/view/View;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOkBtn:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocus(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mOkBtn:Landroid/widget/Button;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->requestFocus(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setCheckedWithCurrentMode()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "mode_list"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "mode_grid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v3, "mode_card"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x788877d4 -> :sswitch_2
        -0x7886679e -> :sswitch_1
        -0x78844246 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setDialogPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mAnchor:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setLargeScreenDialogForMultiTabs()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    :goto_0
    return-void
.end method

.method private setLargeScreenDialogForMultiTabs()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x800035

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070140

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setViewTypeDescription(Landroid/view/View;Landroid/widget/CompoundButton;I)V
    .locals 3
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f140e6f

    goto :goto_0

    :cond_1
    const v0, 0x7f14081f

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f14055f

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f140b96

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->announceForFeedbackIfNeeded(Landroid/view/View;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateContentView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateViewTypeImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateViewTypeDescription()V

    return-void
.end method

.method private updateViewTypeDescription()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    const v2, 0x7f1407a8

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setViewTypeDescription(Landroid/view/View;Landroid/widget/CompoundButton;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    const v2, 0x7f1407a6

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setViewTypeDescription(Landroid/view/View;Landroid/widget/CompoundButton;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    const v2, 0x7f1407a7

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setViewTypeDescription(Landroid/view/View;Landroid/widget/CompoundButton;I)V

    return-void
.end method

.method private updateViewTypeImage()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0802f6

    goto :goto_0

    :cond_0
    const v1, 0x7f0802f5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mCardViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0802f2

    goto :goto_1

    :cond_1
    const v1, 0x7f0802f1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->hasSingleColumn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    const p0, 0x7f0802f4

    goto :goto_2

    :cond_2
    const p0, 0x7f0802f3

    :goto_2
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewImage:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mGridViewRadioButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f0802f8

    goto :goto_3

    :cond_4
    const p0, 0x7f0802f7

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "MultiTabChangeViewTypeDialog"

    const-string v1, "view type dialog dismiss IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    :goto_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;->EMPTY:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog$Listener;

    return-void
.end method

.method public show(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->dismiss()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->inflateContentView(Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lm/k;->a:Lm/h;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lm/h;->m:Z

    const v1, 0x7f1407a9

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    invoke-virtual {v0, p1}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/f;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f1402c1

    invoke-virtual {p1, v1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/f;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f14084e

    invoke-virtual {p1, v1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/g;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/g;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/z;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setDialogPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateAnchor(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->updateContentView()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mAnchor:Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->setDialogPosition()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabChangeViewTypeDialog;->mDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method
