.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mId:I

.field protected mMostVisitedView:Landroid/view/View;

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected final mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getIconRecyclerViewId(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mId:I

    invoke-interface {p4, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;->createIconAdapter(I)Landroidx/recyclerview/widget/u0;

    move-result-object p4

    check-cast p4, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    const v1, 0x7f0e04d8

    if-ne p3, v1, :cond_0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mMostVisitedView:Landroid/view/View;

    const v1, 0x7f0b077f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v1, 0x7f14075f

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessFormatUtils;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/o1;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/o1;->setSupportsChangeAnimations(Z)V

    :cond_1
    invoke-virtual {v0, p4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p0, p3, p1, p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getLayoutManager(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)Landroidx/recyclerview/widget/J0;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getItemPosition(II)I

    move-result p0

    return p0
.end method

.method private getIconRecyclerViewId(I)I
    .locals 1

    const p0, 0x7f0e059b

    if-ne p1, p0, :cond_0

    const p0, 0x7f0b095f

    return p0

    :cond_0
    const p0, 0x7f0e04d8

    if-ne p1, p0, :cond_1

    const p0, 0x7f0b0783

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown layout "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getItemPosition(II)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "There is no proper child view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bind()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->updateMostVisitedViewBackground()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->updateBlurBackground()V

    :cond_0
    return-void
.end method

.method public bind(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->updateMostVisitedViewBackground()V

    goto :goto_0

    :cond_1
    const-string v1, "layout"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->updateBlurBackground()V

    goto :goto_0

    :cond_2
    const-string v1, "solid_color_theme_changed"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->updateFontColorOnSolidColorThemeChanged()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getLayoutManager(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)Landroidx/recyclerview/widget/J0;
    .locals 2

    const v0, 0x7f0e059b

    if-ne p1, v0, :cond_0

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessGridLayoutManager;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p3, p2, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessGridLayoutManager;-><init>(Landroid/content/Context;II)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;)V

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/O;)V

    return-object p3

    :cond_0
    const v0, 0x7f0e04d8

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown layout "

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public updateBlurBackground()V
    .locals 0

    return-void
.end method

.method public updateFontColorOnSolidColorThemeChanged()V
    .locals 0

    return-void
.end method

.method public updateMostVisitedViewBackground()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mMostVisitedView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f080383

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mContext:Landroid/content/Context;

    const v2, 0x7f060783

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setDrawableTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mMostVisitedView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
