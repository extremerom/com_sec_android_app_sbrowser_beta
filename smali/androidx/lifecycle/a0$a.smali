.class public final Landroidx/lifecycle/a0$a;
.super Landroidx/lifecycle/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/a0;->onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/a0$a;->this$0:Landroidx/lifecycle/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a0$a;->this$0:Landroidx/lifecycle/b0;

    iget p1, p0, Landroidx/lifecycle/b0;->b:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/b0;->b:I

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Landroidx/lifecycle/b0;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_RESUME:Landroidx/lifecycle/B;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/b0;->c:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/b0;->e:Landroid/os/Handler;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/b0;->g:LG6/e;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a0$a;->this$0:Landroidx/lifecycle/b0;

    iget p1, p0, Landroidx/lifecycle/b0;->a:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/b0;->a:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/lifecycle/b0;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/b0;->f:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/L;->e(Landroidx/lifecycle/B;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/b0;->d:Z

    :cond_0
    return-void
.end method
