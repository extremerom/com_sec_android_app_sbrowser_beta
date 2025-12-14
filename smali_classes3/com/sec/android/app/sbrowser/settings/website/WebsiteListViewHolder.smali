.class public Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;
.super Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mListDivider:Landroid/view/View;

.field private mRowView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private mUsage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/website/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/website/g;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p2, 0x7f0b0e51

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0e52

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mUsage:Landroid/widget/TextView;

    const p2, 0x7f0b0e4f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b0e4e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mListDivider:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0x3d

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setBottombarFocus()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bindData(IZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getWebsite(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getUsage(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->setUsage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mUsage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140289

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14028a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140b8f

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getListDivider()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mListDivider:Landroid/view/View;

    return-object p0
.end method

.method public getRowView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mRowView:Landroid/view/View;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onClick pos "

    const-string v2, "WebsiteListViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->onChildClick(Landroid/view/View;I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onLongClick pos "

    const-string v2, "WebsiteListViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f1502ec

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUsage(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListViewHolder;->mUsage:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
