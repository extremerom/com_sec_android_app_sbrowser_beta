.class Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;

.field final synthetic val$holder:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;->val$holder:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;->this$0:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mItemList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;->val$holder:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;->onItemClicked(I)V

    return-void
.end method
