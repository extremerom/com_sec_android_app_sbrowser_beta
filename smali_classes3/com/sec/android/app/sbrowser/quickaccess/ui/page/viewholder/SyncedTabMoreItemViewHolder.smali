.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;",
        "viewBinding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V",
        "Ldb/r;",
        "update",
        "()V",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
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
.field private final viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->moreButton:Landroid/widget/ImageButton;

    new-instance v0, LK6/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f141001

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p0, ""

    invoke-virtual {p2, p0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->lambda$1$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static final lambda$1$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;Landroid/view/View;)V
    .locals 1

    new-instance p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncManager;->launchSyncTabs()V

    return-void
.end method


# virtual methods
.method public final update()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060895

    goto :goto_0

    :cond_0
    const v0, 0x7f060c39

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->moreLayoutTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->moreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, LV0/a;->c(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    if-eqz v0, :cond_1

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->moreButton:Landroid/widget/ImageButton;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
