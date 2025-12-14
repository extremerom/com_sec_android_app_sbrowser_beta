.class public final Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "com/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
        "threatDescriptorWithHashes",
        "Ldb/r;",
        "onItemClick",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->onItemLongClick$lambda$0(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->onItemLongClick$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static final onItemLongClick$lambda$0(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {p0}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    sget-object p3, LNc/N;->c:LWc/e;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1$onItemLongClick$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1$onItemLongClick$1$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;Lib/c;)V

    const/4 p0, 0x2

    invoke-static {p2, p3, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final onItemLongClick$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V
    .locals 0

    const-string p0, "threatDescriptorWithHashes"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onItemLongClick(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;)V
    .locals 3

    const-string v0, "threatDescriptorWithHashes"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f140433

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;->this$0:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/k;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f1402ad

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v1, 0xf

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f1402ac

    invoke-virtual {p0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->f()Lm/l;

    return-void
.end method
