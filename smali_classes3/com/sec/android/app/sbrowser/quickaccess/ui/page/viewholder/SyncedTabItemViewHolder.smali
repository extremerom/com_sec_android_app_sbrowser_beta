.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJE\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0012\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0016R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\u001eR\u0014\u0010 \u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001a\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;",
        "viewBinding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;",
        "adapterDelegate",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V",
        "",
        "titleText",
        "deviceNameText",
        "Landroid/graphics/Bitmap;",
        "icon",
        "ogImage",
        "",
        "dominantColor",
        "firstLetter",
        "Ldb/r;",
        "bind",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "Landroid/widget/TextView;",
        "titleView",
        "Landroid/widget/TextView;",
        "deviceNameView",
        "Landroid/widget/ImageView;",
        "iconView",
        "Landroid/widget/ImageView;",
        "background",
        "dominantChar",
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
.field private final background:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceNameView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dominantChar:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final iconView:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final titleView:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterDelegate"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object p3, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    new-instance v0, LFa/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p2, p0}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemTitle:Landroid/widget/TextView;

    const-string p3, "syncedTabItemTitle"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->titleView:Landroid/widget/TextView;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemDeviceName:Landroid/widget/TextView;

    const-string p3, "syncedTabItemDeviceName"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->deviceNameView:Landroid/widget/TextView;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemIcon:Landroid/widget/ImageView;

    const-string p3, "syncedTabItemIcon"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->background:Landroid/widget/ImageView;

    const-string p3, "background"

    invoke-static {p2, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->background:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->dominantChar:Landroid/widget/TextView;

    const-string p2, "dominantChar"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->dominantChar:Landroid/widget/TextView;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;->onClick(I)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p5, "deviceNameText"

    invoke-static {p2, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "firstLetter"

    invoke-static {p6, p5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->deviceNameView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p6, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const p5, 0x7f0608a5

    invoke-virtual {p3, p5}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->dominantChar:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->background:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->syncedTabItemCardView:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemView;

    xor-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    if-eqz p1, :cond_3

    const p1, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
