.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/k0;

.field public final synthetic b:Landroidx/lifecycle/D;

.field public final synthetic c:Landroidx/fragment/app/f0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/f0;Landroidx/fragment/app/k0;Landroidx/lifecycle/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->c:Landroidx/fragment/app/f0;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Landroidx/fragment/app/k0;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->b:Landroidx/lifecycle/D;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 3

    sget-object p1, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->c:Landroidx/fragment/app/f0;

    const-string v1, "not_now"

    if-ne p2, p1, :cond_0

    iget-object p1, v0, Landroidx/fragment/app/f0;->m:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Landroidx/fragment/app/k0;

    invoke-interface {v2, p1}, Landroidx/fragment/app/k0;->b(Landroid/os/Bundle;)V

    iget-object p1, v0, Landroidx/fragment/app/f0;->m:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "FragmentManager"

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Clearing fragment result with key not_now"

    invoke-static {p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->b:Landroidx/lifecycle/D;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    iget-object p0, v0, Landroidx/fragment/app/f0;->n:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
