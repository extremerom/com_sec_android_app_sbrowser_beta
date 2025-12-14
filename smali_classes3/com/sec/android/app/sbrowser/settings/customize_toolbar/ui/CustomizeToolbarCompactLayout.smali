.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;
.super Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;
.source "SourceFile"


# instance fields
.field private mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public notifyMenuItemChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;->notifyMenuItemChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;->mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;->onFinishInflate()V

    const v0, 0x7f0b0d82

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;->mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;->mToolbarLeftItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;->setLeftSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;->mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;->mToolbarRightItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;->setRightSideItems(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;->mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarBaseLayout;->mEditMenuController:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/CustomizeToolbarCompactLayout;->mToolbarLayout:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarCompactToolbar;

    const/4 v2, 0x4

    invoke-direct {v1, v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/edit/EditToolbar;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/ToolbarLayoutDelegate;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuController;->setToolbarEditor(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditState;)V

    return-void
.end method
