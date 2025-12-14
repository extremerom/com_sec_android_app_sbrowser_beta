.class public Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/chromium/content/browser/input/SelectPopupItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mAreAllItemsEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiple:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lorg/chromium/content/browser/input/SelectPopupItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    iput-boolean p4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mMultiple:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mAreAllItemsEnabled:Z

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {p3}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result p3

    const/4 p4, 0x2

    if-eq p3, p4, :cond_0

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mAreAllItemsEnabled:Z

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mAreAllItemsEnabled:Z

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_7

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    instance-of v1, p2, Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, p2

    check-cast v1, Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v4}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result v4

    if-nez v4, :cond_1

    if-eqz v3, :cond_5

    aget-object p3, v3, v2

    if-eqz p3, :cond_5

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_5

    aget-object v0, v3, v2

    if-nez v0, :cond_5

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->isWearOs()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mMultiple:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/sec/terrace/R$layout;->webselect_dialog_multichoice:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/sec/terrace/R$layout;->webselect_dialog_singlechoice:I

    :goto_0
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mMultiple:Z

    if-eqz v0, :cond_4

    sget v0, Lcom/sec/terrace/R$layout;->webselect_dialog_multichoice_wearos:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/sec/terrace/R$layout;->webselect_dialog_singlechoice_wearos:I

    :goto_1
    invoke-virtual {p2, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_5
    :goto_2
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_6

    move v2, p1

    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-interface {p0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopupAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/browser/input/SelectPopupItem;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/SelectPopupItem;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method
