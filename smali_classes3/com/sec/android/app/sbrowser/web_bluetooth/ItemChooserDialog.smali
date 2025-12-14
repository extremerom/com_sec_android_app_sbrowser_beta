.class public Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mConfirmButton:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

.field private mIgnorePendingWindowFocusChangeForClose:Z

.field private mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

.field private mItemSelectedCallback:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;

.field private mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStatus:Landroid/widget/TextView;

.field private mTitle:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemSelectedCallback:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e004d

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0b0653

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    const p2, 0x7f0b0926

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x7f0b0be6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    const p2, 0x7f0b0406

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mTitle:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    const p2, 0x7f0b081a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mTitle:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iget-object v2, p3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mTitle:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const p2, 0x7f0b08d6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->positiveButton:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    new-instance p3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0e004e

    invoke-direct {p2, p0, p3, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->STARTING:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V

    const p2, 0x7f0b02ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->getListHeight(IF)I

    move-result v0

    const/4 v2, -0x1

    invoke-direct {p3, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->showDialogForView(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mConfirmButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemSelectedCallback:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;

    return-object p0
.end method

.method private static getListHeight(IF)I
    .locals 2

    int-to-float p0, p0

    div-float/2addr p0, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p0, v0

    const/high16 v0, 0x42400000    # 48.0f

    div-float/2addr p0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p0, v1

    mul-float/2addr p0, v0

    const/high16 v0, 0x42900000    # 72.0f

    const/high16 v1, 0x43cc0000    # 408.0f

    invoke-static {p0, v0, v1}, LG5/L3;->d(FFF)F

    move-result p0

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$4;->$SwitchMap$com$sec$android$app$sbrowser$web_bluetooth$ItemChooserDialog$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->isEmpty()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusIdleNoneFound:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusIdleSomeFound:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->noneFound:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->statusActive:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mLabels:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;->searching:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private showDialogForView(Landroid/view/View;)V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$3;-><init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, -0x2

    invoke-virtual {p1, v2, v0}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public addOrUpdateItem(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->addOrUpdate(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    sget-object p1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->PROGRESS_UPDATE_AVAILABLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->clear()V

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->STARTING:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V

    return-void
.end method

.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mItemAdapter:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->setEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setErrorState(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mEmptyMessage:Lcom/sec/android/app/sbrowser/infobars/TextViewWithClickableSpans;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIdleState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->DISCOVERY_IDLE:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V

    return-void
.end method

.method public setIgnorePendingWindowFocusChangeForClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->mIgnorePendingWindowFocusChangeForClose:Z

    return-void
.end method

.method public signalInitializingAdapter()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;->INITIALIZING_ADAPTER:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setState(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$State;)V

    return-void
.end method
