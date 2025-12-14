.class Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setOnMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->l(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->p(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->o(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->q(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->p(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->q(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->o(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->m(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->k(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->m(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->k(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->k(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->m(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result p2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SPEN selection : start position : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageGridContainer"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->r(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)I

    move-result v0

    div-int v2, p1, v0

    div-int v3, p2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    rem-int/2addr p1, v0

    rem-int/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "SPEN selection : ("

    const-string v3, ", "

    const-string v6, "), ("

    invoke-static {v5, v4, p2, v3, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v5, :cond_a

    if-ltz v4, :cond_a

    if-ltz p1, :cond_a

    if-gez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    mul-int p2, v4, v0

    add-int/2addr p2, v5

    mul-int v1, v2, v0

    add-int/2addr v1, p1

    :goto_0
    if-gt p2, v1, :cond_4

    if-gez p2, :cond_2

    goto :goto_1

    :cond_2
    rem-int v3, p2, v0

    div-int v6, p2, v0

    if-lt v3, v5, :cond_3

    if-gt v3, p1, :cond_3

    if-lt v6, v4, :cond_3

    if-gt v6, v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->l(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->l(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->g(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;->getSelectableCount()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->l(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    goto :goto_2

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onItemChecked()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$3;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->notifyDataSetChanged()V

    :cond_a
    :goto_3
    return-void
.end method
