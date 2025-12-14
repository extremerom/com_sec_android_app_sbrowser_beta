.class public Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

.field public mCheckBox:Landroid/widget/CheckBox;

.field public mExpiry:Landroid/widget/TextView;

.field public mFavicon:Landroid/widget/ImageView;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field public mListDivider:Landroid/view/View;

.field public mRowView:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/p;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const p2, 0x7f0b0d2e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mTitle:Landroid/widget/TextView;

    const p2, 0x7f0b0d2b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mExpiry:Landroid/widget/TextView;

    const p2, 0x7f0b0d2a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b0d2c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mFavicon:Landroid/widget/ImageView;

    const p2, 0x7f0b0d2d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mListDivider:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;Landroid/view/View;IILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->lambda$setItemCheckListener$1(Landroid/view/View;IILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

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

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setBottombarFocus()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private lambda$setItemCheckListener$1(Landroid/view/View;IILandroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bindDomainViewHolder(Landroid/util/Pair;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/settings/website/Website;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setTitle(Ljava/lang/String;)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/website/Website;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/Website;->getExpirytime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setUsage(J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mTitle:Landroid/widget/TextView;

    const-string v1, ", "

    invoke-static {v0, p1, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mExpiry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140289

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14028a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

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
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mFavicon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onClick pos "

    const-string v2, "TemporarilySiteCookiesViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;->onChildClick(Landroid/view/View;I)Z

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

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onLongClick pos "

    const-string v2, "TemporarilySiteCookiesViewHolder"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getListener()Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;->onItemLongClick(Landroid/view/View;I)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mListDivider:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setItemBackground(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter$TemporaryAllowItemViewType;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const p1, 0x7f080178

    const v0, 0x7f080179

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemCheckListener(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->showListSeparator()V

    goto/16 :goto_4

    :cond_2
    const p1, 0x7f08017b

    const v0, 0x7f08017c

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemCheckListener(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->removeListSeparator()V

    goto :goto_4

    :cond_4
    const p1, 0x7f080175

    const v0, 0x7f080176

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemCheckListener(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->removeListSeparator()V

    goto :goto_4

    :cond_6
    const p1, 0x7f08017f

    const v0, 0x7f080180

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->setItemCheckListener(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->showListSeparator()V

    :goto_4
    return-void
.end method

.method public setItemCheckListener(Landroid/view/View;II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/sec/android/app/sbrowser/download/ui/h;

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/download/ui/h;-><init>(Landroidx/recyclerview/widget/h1;Landroid/view/View;III)V

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUsage(J)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mAdapter:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getDaysCount(J)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mExpiry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f120028

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mExpiry:Landroid/widget/TextView;

    const p1, 0x7f140502

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mExpiry:Landroid/widget/TextView;

    const p1, 0x7f140503

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesViewHolder;->mListDivider:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
