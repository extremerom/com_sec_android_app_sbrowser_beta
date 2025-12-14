.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B5\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\u000f\u0010\u0018\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u000f\u0010\u0019\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0014J\'\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010 \u001a\u0004\u0008!\u0010\"R\u0016\u0010$\u001a\u00020#8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BlurViewHolder;",
        "Landroid/content/Context;",
        "context",
        "Landroid/view/View;",
        "itemView",
        "",
        "id",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;",
        "factory",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "<init>",
        "(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V",
        "Ldb/r;",
        "updateMostVisitedHeaderColor",
        "(Landroid/view/View;)V",
        "updateMostVisitedCardViewBackground",
        "updateMostVisitedViewBackground",
        "()V",
        "updateEditModeState",
        "addListener",
        "removeListener",
        "updateFontColorOnSolidColorThemeChanged",
        "updateBlurBackground",
        "Landroidx/recyclerview/widget/J0;",
        "getLayoutManager",
        "(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)Landroidx/recyclerview/widget/J0;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Landroid/view/View;",
        "getItemView",
        "()Landroid/view/View;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;",
        "cardView",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final itemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessAdapterFactory;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->itemView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$getCardView$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    return-object p0
.end method

.method private final updateMostVisitedCardViewBackground(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0b077d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableView()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setNonNativeEditableView(Z)V

    return-void
.end method

.method private final updateMostVisitedHeaderColor(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b077f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    const v2, 0x7f060887

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->isNonNativeEditableView()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f060899

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const v2, 0x7f060895

    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public addListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->addOnPreDrawListener()V

    return-void

    :cond_0
    const-string p0, "cardView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getItemView()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getLayoutManager(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)Landroidx/recyclerview/widget/J0;
    .locals 1
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e04d8

    if-ne p1, v0, :cond_1

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPhoneLandscapeOrTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessGridLayoutManager;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0c0059

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessGridLayoutManager;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-direct {p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLinearLayoutManager;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->getLayoutManager(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)Landroidx/recyclerview/widget/J0;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public removeListener()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->removeOnPreDrawListener()V

    return-void

    :cond_0
    const-string p0, "cardView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public updateBlurBackground()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder$updateBlurBackground$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    const-string p0, "cardView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateEditModeState(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->SETTINGS_FRAGMENT_HOMEPAGE_WEBPAGE_EXITING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateMostVisitedHeaderColor(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateMostVisitedCardViewBackground(Landroid/view/View;)V

    return-void
.end method

.method public updateFontColorOnSolidColorThemeChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateMostVisitedViewBackground()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->updateMostVisitedHeaderColor(Landroid/view/View;)V

    return-void
.end method

.method public updateMostVisitedViewBackground()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mMostVisitedView:Landroid/view/View;

    const v1, 0x7f0b077d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    const/4 v1, 0x0

    const-string v2, "cardView"

    if-eqz v0, :cond_2

    const-string v0, "NewUI"

    const-string v3, "onCreateViewHolder"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setViewModel(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessNestedRecyclerViewHolder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewQuickAccessNestedRecyclerViewHolder;->cardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;

    if-eqz p0, :cond_0

    const v1, 0x7f070d6a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessCardView;->setRoundedCornerRadius(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method
