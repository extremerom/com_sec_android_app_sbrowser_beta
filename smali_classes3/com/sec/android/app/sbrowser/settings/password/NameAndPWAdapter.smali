.class public Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;
.super Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;
.source "SourceFile"


# instance fields
.field private mAutoFillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

.field private mCount:I

.field public mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

.field private mEmptyTextViewholder:Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

.field private mIsSwitchViewEnabled:Z

.field private mPWDListSize:I

.field public mSwitchItemViewHolder:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

.field private mViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mAutoFillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mIsSwitchViewEnabled:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method private bindEmptyTextViewHolder()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140dce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mEmptyTextViewholder:Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->setEmptyText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setEmptyViewHeight()V

    return-void
.end method

.method private bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/settings/password/AutofillViewType;)V
    .locals 1

    move-object p2, p1

    check-cast p2, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->isExceptionData()Z

    move-result v0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->isBioMetricData()Z

    move-result p3

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getCategoryString(ZZ)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p2, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;->mSectionTitle:Landroid/widget/TextView;

    const-string v0, ", "

    invoke-static {p3, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f14058d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const p1, 0x7f08022d

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private getCategoryString(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f140dd2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getCategoryTitleString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f140dd1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getCategoryTitleString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const p1, 0x7f140dd3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getCategoryTitleString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const p1, 0x7f140dd0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getCategoryTitleString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCategoryTitleString(I)Ljava/lang/String;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setEmptyViewHeight()V

    return-void
.end method


# virtual methods
.method public getAutofillTotalItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mPWDListSize:I

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mCount:I

    return p0
.end method

.method public getItemIndex(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getDataIndex()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getType()I

    move-result p0

    return p0
.end method

.method public getSummary(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getPWDEntry()Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUserName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getPWDEntry()Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerracePasswordUIView$TerraceSavedPasswordEntry;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasItem()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mPWDListSize:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstChild(I)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLastChild(I)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->bindHeaderViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/settings/password/AutofillViewType;)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mIsSwitchViewEnabled:Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->setSwitchViewEnabled(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_3

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mEmptyTextViewholder:Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mCount:I

    if-le p2, v1, :cond_2

    iget-object p0, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->bindEmptyTextViewHolder()V

    :goto_0
    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p2, 0x7f0e0515

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/password/NamePwHeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0516

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;

    invoke-direct {p2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder$NameAndPWSwitchPreferenceDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mSwitchItemViewHolder:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    return-object p2

    :cond_1
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0040

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/password/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/password/d;-><init>(Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mAutoFillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    return-object p0
.end method

.method public setEmptyViewHeight()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mEmptyTextViewholder:Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mSwitchItemViewHolder:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillBaseAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mAutoFillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->getBottomBarPadding()I

    move-result v3

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mEmptyTextViewholder:Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/password/EmptyTextViewHolder;->setHeight(I)V

    :cond_0
    return-void
.end method

.method public setSwitchViewEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mSwitchItemViewHolder:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateState(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mSwitchItemViewHolder:Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/password/SwitchItemViewHolder;->updateSwitchState()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mIsSwitchViewEnabled:Z

    return-void
.end method

.method public updatePasswordInfo(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/settings/password/AutofillViewType;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mPWDListSize:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mViewTypes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mCount:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->mAutoFillFragment:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillItemPreferenceListBase;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/password/NameAndPWAdapter;->hasItem()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
