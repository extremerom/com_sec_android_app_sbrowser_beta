.class public final Landroidx/fragment/app/A;
.super Landroidx/fragment/app/C;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/fragment/app/U;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lh/a;

.field public final synthetic d:Landroidx/activity/result/a;

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/U;Ljava/util/concurrent/atomic/AtomicReference;Lh/a;Landroidx/activity/result/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/A;->e:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/A;->a:Landroidx/fragment/app/U;

    iput-object p3, p0, Landroidx/fragment/app/A;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroidx/fragment/app/A;->c:Lh/a;

    iput-object p5, p0, Landroidx/fragment/app/A;->d:Landroidx/activity/result/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/A;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/A;->a:Landroidx/fragment/app/U;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/fragment/app/U;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/N;

    instance-of v4, v3, Landroidx/activity/result/i;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/activity/result/i;

    invoke-interface {v3}, Landroidx/activity/result/i;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/activity/p;->getActivityResultRegistry()Landroidx/activity/result/h;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/A;->c:Lh/a;

    iget-object v4, p0, Landroidx/fragment/app/A;->d:Landroidx/activity/result/a;

    invoke-virtual {v2, v1, v0, v3, v4}, Landroidx/activity/result/h;->c(Ljava/lang/String;Landroidx/lifecycle/J;Lh/a;Landroidx/activity/result/a;)Landroidx/activity/result/g;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/A;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
