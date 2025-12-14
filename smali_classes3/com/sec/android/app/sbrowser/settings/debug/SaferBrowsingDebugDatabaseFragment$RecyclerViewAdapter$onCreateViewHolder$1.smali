.class public final Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder$ViewHolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder$ViewHolderListener;",
        "",
        "position",
        "Ldb/r;",
        "onItemClick",
        "(I)V",
        "onItemLongClick",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->access$getListener$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->access$getData$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;->onItemClick(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V

    :cond_1
    return-void
.end method

.method public onItemLongClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->access$getListener$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$onCreateViewHolder$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;->access$getData$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;->onItemLongClick(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V

    :cond_1
    return-void
.end method
