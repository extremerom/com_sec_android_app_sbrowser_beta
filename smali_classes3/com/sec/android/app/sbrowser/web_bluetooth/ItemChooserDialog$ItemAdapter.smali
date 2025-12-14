.class public Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mDisabledEntries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private mKeyToItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedItem:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private addToDescriptionsMap(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeFromDescriptionsMap(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->hasSameContents(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->removeFromDescriptionsMap(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->e(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->addToDescriptionsMap(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v0, p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->f(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->g(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->addToDescriptionsMap(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mKeyToItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public getDisplayText(I)Ljava/lang/String;
    .locals 3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mItemDescriptionMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f140650

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSelectedItemKey()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    const/4 v1, -0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0e004e

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;

    invoke-direct {p3, p2}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;

    :goto_0
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->getDisplayText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mHasIcon:Z

    if-nez v1, :cond_2

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_2
    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->c(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {p3}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;->a(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p3

    iget p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    if-ne p1, p0, :cond_4

    move v0, v3

    :cond_4
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

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

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mHasIcon:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mKeyToItemMap:Ljava/util/Map;

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

    check-cast v1, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mHasIcon:Z

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEnabled(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mDisabledEntries:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p0, v0}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserRow;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->mSelectedItem:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->b(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
