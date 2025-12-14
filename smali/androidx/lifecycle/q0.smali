.class public final Landroidx/lifecycle/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/L;Landroidx/lifecycle/B;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/q0;->a:I

    const-string v0, "registry"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/q0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/q0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/lifecycle/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/q0;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/lifecycle/q0;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/lifecycle/q0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/q0;->c:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/lifecycle/q0;->d:Ljava/lang/Object;

    iget v2, p0, Landroidx/lifecycle/q0;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v2, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lk1/d;

    check-cast v0, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lk1/d;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/lifecycle/q0;->b:Z

    if-eqz p0, :cond_1

    iget-object p0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b:LX4/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, LX4/i;->i(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v2, p0, Landroidx/lifecycle/q0;->b:Z

    if-nez v2, :cond_2

    check-cast v0, Landroidx/lifecycle/L;

    check-cast v1, Landroidx/lifecycle/B;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/q0;->b:Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
