.class public final synthetic Ly/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ly/g;

.field public final synthetic b:LK0/m;

.field public final synthetic c:Lv/A;


# direct methods
.method public synthetic constructor <init>(Ly/g;LK0/m;Lv/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/f;->a:Ly/g;

    iput-object p2, p0, Ly/f;->b:LK0/m;

    iput-object p3, p0, Ly/f;->c:Lv/A;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ly/f;->c:Lv/A;

    check-cast p1, Landroid/app/appsearch/AppSearchResult;

    iget-object v1, p0, Ly/f;->a:Ly/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->isSuccess()Z

    move-result v2

    iget-object p0, p0, Ly/f;->b:LK0/m;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    new-instance v0, Lx/a;

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, v3}, Lx/a;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0}, LK0/h;->n(Ljava/lang/Throwable;)Z

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/appsearch/AppSearchResult;->getResultValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Lv/A;->b:Ljava/util/List;

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, v1, Ly/g;->a:Landroid/app/appsearch/AppSearchSession;

    invoke-static {v0}, LG5/H2;->e(Lv/A;)Landroid/app/appsearch/SearchSpec;

    move-result-object v0

    iget-object v1, v1, Ly/g;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Ly/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ly/e;-><init>(LK0/m;I)V

    const-string v3, ""

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/app/appsearch/AppSearchSession;->remove(Ljava/lang/String;Landroid/app/appsearch/SearchSpec;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, LK0/h;->m(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0, p1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    :goto_2
    return-void
.end method
