.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;->setItemClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/QuickAccessIconViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    invoke-interface {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;I)V

    return v2
.end method
