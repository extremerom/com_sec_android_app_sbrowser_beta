.class Lcom/sec/android/app/sbrowser/context_menu/ContextMenuListAdapter;
.super Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemLayoutResource()I
    .locals 0

    const p0, 0x7f0e01b1

    return p0
.end method

.method public getViewForDropdownUi(Landroid/view/MenuItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0b0307

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0b0308

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b0309

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-nez p4, :cond_0

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne p4, v4, :cond_1

    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setAccessibilityEnabled(Landroid/view/View;Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result p3

    const p4, 0x7f0b034a

    if-ne p3, p4, :cond_5

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {p3}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getMenuIcon()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result p3

    const p4, 0x7f0b034b

    if-eq p3, p4, :cond_7

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result p3

    const p4, 0x7f0b0345

    if-ne p3, p4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/context_menu/BaseContextMenuListAdapter;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object p2
.end method
