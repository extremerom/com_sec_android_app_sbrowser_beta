.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder<",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V
    .locals 6
    .param p5    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->setItemClickListener()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->setOnKeyListener()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->lambda$setItemClickListener$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->lambda$setItemClickListener$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->lambda$setOnKeyListener$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$setItemClickListener$0(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAccessibilityDelegate;->isInCustomActionMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    :cond_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->onClick(I)V

    return-void
.end method

.method private synthetic lambda$setItemClickListener$1(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->onLongClick(Landroidx/recyclerview/widget/h1;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$setOnKeyListener$2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->onKey(IILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private setItemClickListener()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v1, LK6/a;

    const/16 v2, 0x1c

    invoke-direct {v1, v2, p0}, LK6/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/assistant/view/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/assistant/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setOnKeyListener()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v1, LFa/e;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, LFa/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method private setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isShowSyncInformationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->updateSyncInformation(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getTheme()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->hasValidThemeTouchIcon(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->updateValidIconWithTheme(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->updateDominantIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    :goto_1
    return-void
.end method

.method private updateDominantIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getDominantColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f0608a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f080322

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0b05ef

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f080384

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateSyncInformation(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    const v1, 0x7f0608a5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f080384

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->isSyncable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f060898

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateValidIconWithTheme(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0b05ef

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getThemeTouchIcon(Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void
.end method

.method public bridge synthetic addCheckedItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->addCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void
.end method

.method public bind(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->innerContainer:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->mIconViewItemBinding:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemBinding;->container:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->icon:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->dominantChar:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mDominantChar:Landroid/widget/TextView;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->checkboxStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mCheckBoxStub:Landroid/view/ViewStub;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->placeholderStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mPlaceHolderStub:Landroid/view/ViewStub;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemContainerBinding;->title:Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/QuickaccessIconViewItemTitleBinding;->getRoot()Lcom/sec/android/app/sbrowser/common/widget/AutoLetterSpacingTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setRippleEffect()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->updateLayoutColor()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->updateEditMode(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setCustomActionModeTag()V

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setItemViewDescription(Landroid/view/View;Ljava/lang/String;Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setItemViewUsageHint(Landroid/view/View;Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public bind(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "editmode"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->updateEditMode(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setCustomActionModeTag()V

    goto :goto_0

    :cond_1
    const-string v1, "check"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const-string v1, "uncheck"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->setTouchIcon(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setRippleEffect()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->updateLayoutColor()V

    goto :goto_0

    :cond_4
    const-string v1, "move"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mTitle:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setItemViewDescription(Landroid/view/View;Ljava/lang/String;Z)V

    iget-object v0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setItemViewUsageHint(Landroid/view/View;Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setCustomActionModeTag()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->clearRippleEffect()V

    goto :goto_0

    :cond_6
    const-string v1, "set_ripple"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setRippleEffect()V

    goto/16 :goto_0

    :cond_7
    const-string v1, "solid_color_theme_changed"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->updateLayoutColor()V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isChecked(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->isChecked(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)Z

    move-result p0

    return p0
.end method

.method public removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void
.end method

.method public bridge synthetic removeCheckedItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->removeCheckedItem(Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;)V

    return-void
.end method

.method public translationY(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
