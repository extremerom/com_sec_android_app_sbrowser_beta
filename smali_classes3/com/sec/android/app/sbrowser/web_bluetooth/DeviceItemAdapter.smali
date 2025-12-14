.class public Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$Observer;,
        Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mHasIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItemDescriptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemsSelectable:Z

.field private mKeyToItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$Observer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mResources:Landroid/content/res/Resources;

.field private final mRowLayoutResource:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1
    .param p3    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mSelectedItem:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mResources:Landroid/content/res/Resources;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemsSelectable:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mRowLayoutResource:I

    return-void
.end method

.method private addToDescriptionsMap(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeFromDescriptionsMap(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private updateSelectedItemPosition(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mSelectedItem:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mObserver:Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$Observer;

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$Observer;->onItemSelectionChanged(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addOrUpdate(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->hasSameContents(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mDescription:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mDescription:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->removeFromDescriptionsMap(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mDescription:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->addToDescriptionsMap(Ljava/lang/String;)V

    :cond_1
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iput-object p3, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIcon:Landroid/graphics/drawable/Drawable;

    iput-object p4, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIconDescription:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mDescription:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->addToDescriptionsMap(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->updateSelectedItemPosition(I)V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getDisplayText(I)Ljava/lang/String;
    .locals 3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mResources:Landroid/content/res/Resources;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mKey:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140650

    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mRowLayoutResource:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;

    :goto_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mSelectedItem:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->getDisplayText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mHasIcon:Z

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIconDescription:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mSelectedItem:I

    if-ne p1, p0, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_5
    :goto_3
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mItemsSelectable:Z

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mHasIcon:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemRow;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->mHasIcon:Z

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->updateSelectedItemPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/DeviceItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
