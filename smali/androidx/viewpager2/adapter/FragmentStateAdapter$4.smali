.class Landroidx/viewpager2/adapter/FragmentStateAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:Landroid/os/Handler;

.field public final synthetic b:Landroidx/viewpager2/adapter/a;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/viewpager2/adapter/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->a:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->b:Landroidx/viewpager2/adapter/a;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->a:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$4;->b:Landroidx/viewpager2/adapter/a;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    :cond_0
    return-void
.end method
