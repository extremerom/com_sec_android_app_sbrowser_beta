.class public abstract Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;
.super Lcom/sec/android/app/sbrowser/download/ui/DHItems;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field mCheckBox:Landroid/widget/CheckBox;

.field mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

.field mDownloadItemSeparator:Landroid/view/View;

.field mRowView:Landroid/view/View;

.field final mShouldApplySecretModeBG:Z

.field final mTTSOutputCheckbox:Ljava/lang/String;

.field final mTTSOutputChecked:Ljava/lang/String;

.field final mTTSOutputNotChecked:Ljava/lang/String;

.field mThumbnailView:Landroid/widget/ImageView;

.field mTitleView:Landroid/widget/TextView;

.field mUrlView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getContext()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    const p2, 0x7f0b044d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    const p2, 0x7f0b0441

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    const p2, 0x7f0b044f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    const p2, 0x7f0b044b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadItemSeparator:Landroid/view/View;

    const p2, 0x7f0b044c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14067d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputChecked:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f14067e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputNotChecked:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140b8f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTTSOutputCheckbox:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;Landroid/view/View;IILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->lambda$setItemCheckListener$0(Landroid/view/View;IILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private lambda$setItemCheckListener$0(Landroid/view/View;IILandroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p5, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f060bed

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0600f5

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadHistoryItemWrapper:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getUrlView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mUrlView:Landroid/widget/TextView;

    return-object p0
.end method

.method public removeListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadItemSeparator:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setItemBackground(IZ)V
    .locals 3

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const p1, 0x7f080178

    const v0, 0x7f080179

    const v1, 0x7f08017a

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->showListSeparator()V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->setItemCheckListener(Landroid/view/View;II)V

    goto/16 :goto_4

    :cond_4
    const p1, 0x7f08017b

    const v0, 0x7f08017c

    const v1, 0x7f08017d

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->removeListSeparator()V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_7

    move v0, v1

    :cond_7
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->setItemCheckListener(Landroid/view/View;II)V

    goto/16 :goto_4

    :cond_8
    const p1, 0x7f080175

    const v0, 0x7f080176

    const v1, 0x7f080177

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_a
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->removeListSeparator()V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_b

    move v0, v1

    :cond_b
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->setItemCheckListener(Landroid/view/View;II)V

    goto :goto_4

    :cond_c
    const p1, 0x7f08017f

    const v0, 0x7f080180

    const v1, 0x7f080181

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_d
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_e
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->showListSeparator()V

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mShouldApplySecretModeBG:Z

    if-eqz p2, :cond_f

    move v0, v1

    :cond_f
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mRowView:Landroid/view/View;

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->setItemCheckListener(Landroid/view/View;II)V

    :goto_4
    return-void
.end method

.method public setItemCheckListener(Landroid/view/View;II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/sec/android/app/sbrowser/download/ui/h;

    const/4 v6, 0x0

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

.method public showListSeparator()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHCompletedItems;->mDownloadItemSeparator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
