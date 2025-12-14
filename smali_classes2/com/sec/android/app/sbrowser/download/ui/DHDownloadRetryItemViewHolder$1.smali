.class Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHDownloadRetryItemViewHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHItems;->getAdapter()Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getListener()Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAdapterListener;->onChildClick(Landroid/view/View;I)Z

    return-void
.end method
