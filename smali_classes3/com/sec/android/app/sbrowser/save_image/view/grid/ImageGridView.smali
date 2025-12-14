.class public Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private mSpanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollOffset()I
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;->mSpanCount:I

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->computeVerticalScrollOffsetForGridView(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[computeVerticalScrollOffset] - offset : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageGridView"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public setSpanCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridView;->mSpanCount:I

    return-void
.end method
