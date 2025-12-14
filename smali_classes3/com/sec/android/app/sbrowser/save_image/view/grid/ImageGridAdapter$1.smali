.class Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/view/grid/DragSelectTouchListener$OnAdvancedDragSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mIsSelected:Z

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectChange(IIZ)V
    .locals 5

    const-string v0, "onSelectChange "

    const-string v1, "~"

    const-string v2, "/"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImageGridAdapter"

    invoke-static {v1, v0, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    move v0, p1

    :goto_0
    const/4 v1, 0x1

    if-gt v0, p2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->mIsSelected:Z

    if-ne v4, p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-interface {v2, v3, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onSelectionFinished(I)V
    .locals 2

    const-string v0, "onSelectionFinished "

    const-string v1, "ImageGridAdapter"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Z)V

    return-void
.end method

.method public onSelectionStarted(I)V
    .locals 3

    const-string v0, "onSelectionStarted "

    const-string v1, "ImageGridAdapter"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->g(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;I)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->mIsSelected:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->mIsSelected:Z

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageItemClickListener;->onDragSelected(Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void
.end method
