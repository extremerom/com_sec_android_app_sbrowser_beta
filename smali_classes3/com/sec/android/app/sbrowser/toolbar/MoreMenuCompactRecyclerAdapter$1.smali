.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;->e(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuCompactRecyclerAdapter;)Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuListEventListener;->onItemLongClick()V

    return v1
.end method
