.class public final synthetic Lf1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:Lf1/o;

.field public final synthetic b:Landroidx/lifecycle/C;

.field public final synthetic c:Lf1/p;


# direct methods
.method public synthetic constructor <init>(Lf1/o;Landroidx/lifecycle/C;Lf1/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/m;->a:Lf1/o;

    iput-object p2, p0, Lf1/m;->b:Landroidx/lifecycle/C;

    iput-object p3, p0, Lf1/m;->c:Lf1/p;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 4

    iget-object p1, p0, Lf1/m;->a:Lf1/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/lifecycle/B;->Companion:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lf1/m;->b:Landroidx/lifecycle/C;

    invoke-static {v0}, Landroidx/lifecycle/z;->c(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v1

    iget-object v2, p1, Lf1/o;->a:Ljava/lang/Runnable;

    iget-object v3, p1, Lf1/o;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lf1/m;->c:Lf1/p;

    if-ne p2, v1, :cond_0

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    if-ne p2, v1, :cond_1

    invoke-virtual {p1, p0}, Lf1/o;->c(Lf1/p;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroidx/lifecycle/z;->a(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object p1

    if-ne p2, p1, :cond_2

    invoke-virtual {v3, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_0
    return-void
.end method
