.class public Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;,
        Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mItemList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mListener:Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$Listener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;I)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;->a(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;->a(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;)Landroid/widget/TextView;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p0, 0x7f0e0012

    const/4 p2, 0x0

    invoke-static {p1, p0, p1, p2}, Landroidx/recyclerview/widget/P;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/AddToAdapter$MenuHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
