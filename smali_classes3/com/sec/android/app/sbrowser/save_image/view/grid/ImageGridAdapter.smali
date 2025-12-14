.class public Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

.field private final mDragSelectTouchListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mItemSize:I

.field private final mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

.field private mOnDragSelecting:Z

.field private final mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mSelectListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance p1, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->withSelectListener(Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnDragSelectListener;)Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDragSelectTouchListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->updateItemSize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mItemSize:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mOnDragSelecting:Z

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->isSelected(I)Z

    move-result p0

    return p0
.end method

.method private getSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isLandscapeView()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0091

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->onHorizontalDragListener(I)V

    return-void
.end method

.method private isSelected(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V
    .locals 0

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->h(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->updateUi()V

    return-void
.end method

.method private onHorizontalDragListener(I)V
    .locals 3

    const-string v0, "onItemTouch(onHrzDrag) {"

    const-string v1, "}"

    invoke-static {p1, v0, v1}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mOnDragSelecting:Z

    const-string v2, "ImageGridAdapter"

    invoke-static {v2, v0, v1}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mOnDragSelecting:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->startDragSelection(I)V

    :cond_0
    return-void
.end method

.method private startDragSelection(I)V
    .locals 2

    const-string v0, "ImageGridAdapter"

    const-string v1, " startDragSelection "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDragSelectTouchListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;->startDragSelection(I)V

    return-void
.end method


# virtual methods
.method public getDragSelectTouchListener()Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDragSelectTouchListener:Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener;

    return-object p0
.end method

.method public getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mDelegate:Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getItemSize()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mItemSize:I

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;->bindView(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/a;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;)V

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->addCallBack(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem$CallBack;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0800

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$ViewHolder;-><init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mItemSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mItemSize:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method

.method public updateItemSize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ee3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getSpanCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    mul-int/2addr v3, v0

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->mItemSize:I

    return-void
.end method
