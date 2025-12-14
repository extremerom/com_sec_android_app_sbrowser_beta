.class public final synthetic Ly/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:LK0/m;

.field public final synthetic b:Ly/b;


# direct methods
.method public synthetic constructor <init>(LK0/m;Ly/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/a;->a:LK0/m;

    iput-object p2, p0, Ly/a;->b:Ly/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v0

    iget-object v1, p0, Ly/a;->a:LK0/m;

    if-eqz v0, :cond_0

    new-instance v0, Ly/g;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/appsearch/AppSearchSession;

    iget-object p0, p0, Ly/a;->b:Ly/b;

    iget-object v2, p0, Ly/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, Ly/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p1, v2, p0}, Ly/g;-><init>(Landroid/app/appsearch/AppSearchSession;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, LK0/h;->m(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lx/a;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lx/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1, p0}, LK0/h;->n(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
