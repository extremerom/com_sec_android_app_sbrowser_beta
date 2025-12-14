.class public Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;
.super Lc3/a;
.source "SourceFile"


# instance fields
.field private final mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

.field private final mContext:Landroid/content/Context;

.field private final mList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lc3/a;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mViewList:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mViewList:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    move-object p0, p3

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    check-cast p3, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->destroy()V

    return-void
.end method

.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getViewList()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mViewList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mCallBack:Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->setCallBack(Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview$ImagePreviewCallBack;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreview;->setImageItem(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/preview/ImagePreviewAdapter;->mViewList:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {p1, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
