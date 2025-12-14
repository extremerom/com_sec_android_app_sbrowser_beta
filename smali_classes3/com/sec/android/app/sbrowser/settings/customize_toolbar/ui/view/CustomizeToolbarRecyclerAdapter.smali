.class public Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;,
        Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteButtonVisibility:I

.field private mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

.field protected mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;

.field private mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceholderPosition:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeleteButtonVisibility:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V

    return-void
.end method

.method private announceForAccessibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    div-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f140414

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private isLanguageBengali()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "bn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;->onDeleteClicked(I)V

    return-void
.end method

.method private shouldShowDeleteButton(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeleteButtonVisibility:I

    if-nez v1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    if-eq p1, p0, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const p1, 0x7f0b0073

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public addItem(ILandroid/view/MenuItem;Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->prepareInsertionAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemInserted(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->announceForAccessibility(I)V

    return-void
.end method

.method public getIconColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060d8f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getTitleTextColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060304

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public moveItem(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->prepareTranslationAnimator(IILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->announceForAccessibility(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mDelete:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->shouldShowDeleteButton(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mDelete:Landroid/widget/ImageButton;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f140bdf

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v4}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/b;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuItem;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->isLanguageBengali()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBreakStrategy(I)V

    :cond_3
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->getIconColor()I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    const v5, 0x7f0b04f1

    if-eq v4, v5, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->getTitleTextColor()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    const v1, 0x7f080434

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f060d6e

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    if-ne v0, p2, :cond_6

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f08014d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mItemContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f080432

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mItemContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->getInstance()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0b03c2

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0b03bf

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/J0;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    div-int v1, p2, v0

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f14041c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b03c0

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;->mContainer:Landroid/widget/RelativeLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f140414

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0b03be

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const p2, 0x7f0e01d3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$MenuItemHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public prepareDeletionAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeletionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/DeletionAnimator;->prepare(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public prepareInsertionAnimator(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mInsertionAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/InsertionAnimator;->prepare(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public prepareTranslationAnimator(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mTranslateAnimator:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/TranslateAnimator;->prepare(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeItem(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->prepareDeletionAnimator(ILandroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method

.method public setDeleteButtonVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mDeleteButtonVisibility:I

    return-void
.end method

.method public setMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mMenuItems:Ljava/util/List;

    return-void
.end method

.method public setOnLongClickListener(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter$EventListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarRecyclerAdapter;->mPlaceholderPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void
.end method
