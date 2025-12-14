.class public final LA/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/appsearch/BatchResultCallback;


# instance fields
.field public final a:LK0/m;

.field public final b:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(LK0/m;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA/c;->a:LK0/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, LA/c;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final onResult(Landroid/app/appsearch/AppSearchBatchResult;)V
    .locals 9

    iget-object v0, p0, LA/c;->b:Ljava/util/function/Function;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/samsung/android/scloud/lib/setting/e;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(IB)V

    new-instance v2, LN/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LN/A;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    new-instance v2, LN/f;

    invoke-direct {v2, v3}, LN/A;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    new-instance v2, LN/f;

    invoke-direct {v2, v3}, LN/A;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    iput-boolean v3, v1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    invoke-static {p1}, Lorg/chromium/ui/base/b;->q(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/e;->o()V

    new-instance v8, Lv/d;

    invoke-direct {v8, v6, v5, v3}, Lv/d;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v1, v7, v8}, Lcom/samsung/android/scloud/lib/setting/e;->p(Ljava/lang/Object;Lv/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5}, Lv/d;->a(Ljava/lang/Throwable;)Lv/d;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/samsung/android/scloud/lib/setting/e;->p(Ljava/lang/Object;Lv/d;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/ui/base/b;->D(Landroid/app/appsearch/AppSearchBatchResult;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/ui/base/b;->e(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/ui/base/b;->b(Landroid/app/appsearch/AppSearchResult;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/b;->e(Ljava/lang/Object;)Landroid/app/appsearch/AppSearchResult;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/b;->p(Landroid/app/appsearch/AppSearchResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/e;->o()V

    new-instance v4, Lv/d;

    invoke-direct {v4, v5, v0, v3}, Lv/d;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/scloud/lib/setting/e;->p(Ljava/lang/Object;Lv/d;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, v1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z

    new-instance p1, Lv/a;

    iget-object v0, v1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, LN/f;

    iget-object v2, v1, Lcom/samsung/android/scloud/lib/setting/e;->d:Ljava/lang/Object;

    check-cast v2, LN/f;

    iget-object v1, v1, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    check-cast v1, LN/f;

    invoke-direct {p1, v0, v2, v1}, Lv/a;-><init>(LN/f;LN/f;LN/f;)V

    iget-object p0, p0, LA/c;->a:LK0/m;

    invoke-virtual {p0, p1}, LK0/h;->m(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onSystemError(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, LA/c;->a:LK0/m;

    invoke-virtual {p0, p1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    return-void
.end method
