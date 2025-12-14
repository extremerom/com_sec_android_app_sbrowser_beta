.class Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;
.super Landroidx/recyclerview/widget/F0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->addListItemsDecoration(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

.field final synthetic val$color:I

.field final synthetic val$itemRoundedCorner:Lq/d;

.field final synthetic val$listRoundedCorner:Lq/d;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;Lq/d;ILq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$listRoundedCorner:Lq/d;

    iput p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$color:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$itemRoundedCorner:Lq/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/F0;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/d1;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->this$0:Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f071375

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$listRoundedCorner:Lq/d;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lq/d;->d(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, p3, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$listRoundedCorner:Lq/d;

    iget-object v2, p3, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p3, p1}, Lq/d;->b(Landroid/graphics/Canvas;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$listRoundedCorner:Lq/d;

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$color:I

    invoke-virtual {p3, v1, v0}, Lq/d;->c(II)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$listRoundedCorner:Lq/d;

    iget-object v0, p3, Lq/d;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p3, p1}, Lq/d;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    move v0, v4

    :goto_0
    if-ge v0, p3, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object v2

    instance-of v3, v2, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/view/RoundedViewHolder;->getRoundMode()I

    move-result v2

    goto :goto_1

    :cond_0
    move v2, v4

    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$itemRoundedCorner:Lq/d;

    invoke-virtual {v3, v2}, Lq/d;->d(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$itemRoundedCorner:Lq/d;

    iget v5, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$color:I

    invoke-virtual {v3, v2, v5}, Lq/d;->c(II)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/view/SitesBaseUi$8;->val$itemRoundedCorner:Lq/d;

    invoke-virtual {v2, v1, p1}, Lq/d;->a(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
