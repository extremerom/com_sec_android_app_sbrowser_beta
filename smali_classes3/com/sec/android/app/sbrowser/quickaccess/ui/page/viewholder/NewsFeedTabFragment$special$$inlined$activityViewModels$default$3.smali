.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment$special$$inlined$activityViewModels$default$3;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltb/m;",
        "Lsb/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0005\u001a\u00020\u0002\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Landroidx/lifecycle/s0;",
        "VM",
        "Landroidx/lifecycle/v0;",
        "invoke",
        "()Landroidx/lifecycle/v0;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $this_activityViewModels:Landroidx/fragment/app/Fragment;


# virtual methods
.method public final invoke()Landroidx/lifecycle/v0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment$special$$inlined$activityViewModels$default$3;->$this_activityViewModels:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/p;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewsFeedTabFragment$special$$inlined$activityViewModels$default$3;->invoke()Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0
.end method
