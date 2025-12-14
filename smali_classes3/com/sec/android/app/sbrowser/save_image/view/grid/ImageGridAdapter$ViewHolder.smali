.class public Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mCheckBox:Landroid/widget/CheckBox;

.field private final mDimView:Landroid/view/View;

.field private mDownX:F

.field private mDownY:F

.field private final mExpand:Landroid/widget/ImageView;

.field private mHorizontalDrag:Z

.field private final mInsecure:Landroid/widget/ImageView;

.field private mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

.field private mItemId:I

.field private final mItemView:Landroid/view/View;

.field private final mPreview:Landroid/widget/ImageView;

.field private final mProgress:Landroidx/appcompat/widget/SeslProgressBar;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemView:Landroid/view/View;

    const p1, 0x7f0b0a37

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    const v0, 0x7f0b0a35

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDimView:Landroid/view/View;

    const v0, 0x7f0b0a34

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0b0a36

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mExpand:Landroid/widget/ImageView;

    const v2, 0x7f0b0a38

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mInsecure:Landroid/widget/ImageView;

    const v3, 0x7f0b0a39

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mProgress:Landroidx/appcompat/widget/SeslProgressBar;

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/b;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, LK6/j;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, LK6/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, LK6/j;

    const/4 v3, 0x4

    invoke-direct {p1, v3, p0}, LK6/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/c;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/auth/password/a;

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/auth/password/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x7f080542

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private announceForAccessibility()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f14067d

    goto :goto_0

    :cond_0
    const v1, 0x7f14067e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$2(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateBitmap(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private isAvailableHorizontalDrag(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mHorizontalDrag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDownX:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemLongClicked()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemClicked()V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemLongClicked()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$3(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemClicked()V

    return-void
.end method

.method private synthetic lambda$new$4(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemExpand()V

    return-void
.end method

.method private synthetic lambda$new$5(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onItemChecked()V

    return-void
.end method

.method private onHorizontalDrag()V
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAbsoluteAdapterPosition()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;I)V

    return-void
.end method

.method private onItemChecked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDimView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onCheck()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateContentDesc()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->announceForAccessibility()V

    return-void
.end method

.method private onItemClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isLongPressDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onSelect(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onItemExpand()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onExpand(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method private onItemLongClicked()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isLongPressDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onSelect(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onLongClick(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return v1
.end method

.method private onItemTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mHorizontalDrag:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDownX:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x41c00000    # 24.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mHorizontalDrag:Z

    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->isAvailableHorizontalDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->onHorizontalDrag()V

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDownY:F

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mHorizontalDrag:Z

    return v0
.end method

.method private startLoadProgress()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mProgress:Landroidx/appcompat/widget/SeslProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private stopLoadProgress()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mProgress:Landroidx/appcompat/widget/SeslProgressBar;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateBitmap(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 6

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemId:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f060974

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->d(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getThumbnailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->stopLoadProgress()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->startLoadProgress()V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->stopLoadProgress()V

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    const v1, 0x7f08037b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->startLoadProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isAllItemLoaded()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result p1

    if-nez p1, :cond_6

    move p1, v3

    goto :goto_3

    :cond_6
    move p1, v4

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    move v2, v3

    goto :goto_4

    :cond_7
    move v2, v4

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v3, v4

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateContentDesc()V

    :cond_9
    :goto_6
    return-void
.end method

.method private updateCheckBox(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 6

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemId:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isAllItemLoaded()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v5, 0x8

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    aget v0, v0, v2

    if-ltz v0, :cond_4

    if-le v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDimView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateDimViewIfNeeded(Z)V

    :cond_7
    :goto_4
    return-void
.end method

.method private updateContentDesc()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f14067d

    goto :goto_0

    :cond_0
    const v1, 0x7f14067e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140b8f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDimViewIfNeeded(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDimView:Landroid/view/View;

    const p1, 0x7f080543

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mDimView:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f06096f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private updateInsecure(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 2

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemId:I

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mInsecure:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isHttpImage()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bindView(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItemId:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->mItem:Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateBitmap(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateCheckBox(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->updateInsecure(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method
