.class final Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecyclerViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\u0011\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001d\u0010\u0017\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0019R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;",
        "listener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;",
        "holder",
        "position",
        "Ldb/r;",
        "onBindViewHolder",
        "(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;I)V",
        "getItemCount",
        "()I",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
        "threatDescriptorWithHashesList",
        "onDataChanged",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;",
        "",
        "data",
        "Ljava/util/List;",
        "AdapterListener",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->listener:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getData$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->listener:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;I)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;->bind(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseItemBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)V

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseItemBinding;Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder$ViewHolderListener;)V

    return-object p2
.end method

.method public final onDataChanged(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
            ">;)V"
        }
    .end annotation

    const-string v0, "threatDescriptorWithHashesList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->data:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    return-void
.end method
