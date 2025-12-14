.class public final Landroidx/lifecycle/a0;
.super Landroidx/lifecycle/m;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/a0;->this$0:Landroidx/lifecycle/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "activity"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a0;->this$0:Landroidx/lifecycle/b0;

    iget p1, p0, Landroidx/lifecycle/b0;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/b0;->b:I

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/b0;->e:Landroid/os/Handler;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/b0;->g:LG6/e;

    const-wide/16 v0, 0x2bc

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string p2, "activity"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroidx/lifecycle/a0$a;

    iget-object p0, p0, Landroidx/lifecycle/a0;->this$0:Landroidx/lifecycle/b0;

    invoke-direct {p2, p0}, Landroidx/lifecycle/a0$a;-><init>(Landroidx/lifecycle/b0;)V

    invoke-static {p1, p2}, Landroidx/lifecycle/Z;->a(Landroid/app/Activity;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a0;->this$0:Landroidx/lifecycle/b0;

    iget p1, p0, Landroidx/lifecycle/b0;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/b0;->a:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/b0;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/lifecycle/b0;->d:Z

    :cond_0
    return-void
.end method
