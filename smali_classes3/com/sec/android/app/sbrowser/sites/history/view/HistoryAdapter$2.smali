.class Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->bindItemViewHolder(Landroidx/recyclerview/widget/h1;ILcom/sec/android/app/sbrowser/common/widget/ExpandableViewType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

.field final synthetic val$itemView:Landroid/view/View;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$itemView:Landroid/view/View;

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->i(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->g(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;Z)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->this$0:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;->e(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter;)Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$Delegate;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    invoke-static {p2, v0, p1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryAdapter$2;->val$itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
