.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0017\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u000cJ\u001f\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J%\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\u000e\u0010\u001a\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00190\u0018\u00a2\u0006\u0004\u0008\u0016\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;",
        "Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;",
        "itemListener",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;",
        "quickAccessViewHolder",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V",
        "Ldb/r;",
        "setupImageLayout",
        "()V",
        "setupTitleLayout",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
        "item",
        "setupTitleContent",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V",
        "setUpImageContent",
        "setUpDividerLine",
        "",
        "isForPreview",
        "bind",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V",
        "",
        "",
        "payloads",
        "(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Ljava/util/List;)V",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemListener"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickAccessViewHolder"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/NewsFeedItemAdapter$ItemListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;)V

    return-void
.end method

.method private final setUpDividerLine()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b5f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b66

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemDivider:Landroid/view/View;

    const v2, 0x7f0607e5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final setUpImageContent(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->c(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getPlaceHolderColor()I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Lh4/a;->i(Landroid/graphics/drawable/ColorDrawable;)Lh4/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$setUpImageContent$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$setUpImageContent$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->B(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSourceImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/view/View;)Lcom/bumptech/glide/l;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSourceImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/l;->c(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$setUpImageContent$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder$setUpImageContent$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->B(Lh4/g;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSourceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Lcom/bumptech/glide/j;->z(Landroid/widget/ImageView;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSourceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method private final setupImageLayout()V
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b64

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b65

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070b66

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsIconImage:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070b67

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/RoundedCornerImageView;->setCornerRadius(F)V

    return-void
.end method

.method private final setupTitleContent(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0607ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSource:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSource:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0607e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsSource:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsLastUpdatedTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->getUpdatedTime()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getLastUpdatedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsLastUpdatedTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsLastUpdatedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final setupTitleLayout()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070b65

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070b80

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getResource()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070b7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/16 v1, 0x11

    const v2, 0x7f0b07da

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string v0, "editmode"

    invoke-static {p2, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->updateEditMode()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->setupImageLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->setupTitleLayout()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->setupPlaceHolder(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;->isPlaceHolder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->setupTitleContent(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->setUpImageContent(Lcom/sec/android/app/sbrowser/quickaccess/model/news_feed/NewsFeedItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemSingleViewHolder;->setUpDividerLine()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->urlTimeSeperator:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f08049b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedItemViewHolder;->getBinding()Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/databinding/NewsFeedItemViewBinding;->newsFeedItemLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method
