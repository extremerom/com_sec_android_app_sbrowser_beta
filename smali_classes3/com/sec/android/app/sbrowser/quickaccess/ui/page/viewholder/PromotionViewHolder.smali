.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0008\u0017\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0012J\u000f\u0010\u0016\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u001d\u0010\u0016\u001a\u00020\n2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017\u00a2\u0006\u0004\u0008\u0016\u0010\u001aR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R#\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010!\u001a\u0004\u0008\"\u0010#\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;",
        "Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "iconViewListener",
        "Lkotlin/Function1;",
        "",
        "Ldb/r;",
        "callback",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lsb/k;)V",
        "Landroid/content/Context;",
        "context",
        "isTabletOrFold",
        "updatePromotionWidth",
        "(Landroid/content/Context;Z)V",
        "updateEditMode",
        "()V",
        "updateTitleTextSize",
        "bind",
        "",
        "",
        "payloads",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;",
        "getBinding",
        "()Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "getViewModel",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "Lsb/k;",
        "getCallback",
        "()Lsb/k;",
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
.field private final binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lsb/k;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconViewListener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/BaseViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->callback:Lsb/k;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/c;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/c;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionClose:Landroid/widget/FrameLayout;

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/c;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/c;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionImage:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->callback:Lsb/k;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "5512"

    const-string p1, "QANative"

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final _init_$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->callback:Lsb/k;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "5511"

    const-string p1, "QANative"

    const-string v0, "201"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->_init_$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private final updateEditMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionClose:Landroid/widget/FrameLayout;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final updatePromotionWidth(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p2, :cond_0

    const p2, 0x7f070cd5

    goto :goto_0

    :cond_0
    const p2, 0x7f070cd4

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private final updateTitleTextSize(Landroid/content/Context;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f070cc9

    goto :goto_0

    :cond_0
    const v1, 0x7f070cca

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p2, :cond_1

    const p2, 0x7f070ccc

    goto :goto_1

    :cond_1
    const p2, 0x7f070ccd

    :goto_1
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140b46

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "%1$s"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v1, v2}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    const-string v4, "%2$s"

    invoke-static {p1, v4, v1, v1, v2}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const-string v5, ""

    invoke-static {p1, v0, v5}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4, v5}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    float-to-int p2, p2

    invoke-direct {p1, p2, v1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    const/16 p2, 0x21

    invoke-virtual {v0, p1, v3, v2, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->promotionTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bind()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->binding:Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/PromotionLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isTabletLandscapeOrDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDisplayTypeMain(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->updateTitleTextSize(Landroid/content/Context;Z)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->updatePromotionWidth(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->updateEditMode()V

    return-void
.end method

.method public final bind(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payloads"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "editmode"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/PromotionViewHolder;->updateEditMode()V

    goto :goto_0

    :cond_1
    return-void
.end method
