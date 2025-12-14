.class Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;->setOnItemClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/h1;->getBindingAdapterPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;->a(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconViewHolder;)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$AdapterDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter$AdapterDelegate;->onClick(I)V

    return-void
.end method
