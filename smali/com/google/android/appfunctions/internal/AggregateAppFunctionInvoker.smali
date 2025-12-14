.class public final Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/appfunctions/internal/AppFunctionInvoker;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;",
        "Lcom/google/android/appfunctions/internal/AppFunctionInvoker;",
        "java.com.google.android.libraries.llm.appfunctions.appfunctions_appfunctions"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/google/android/appfunctions/internal/ClassRegistry;

.field public final b:Ldb/o;


# direct methods
.method public constructor <init>(Lcom/google/android/appfunctions/internal/ClassRegistry;)V
    .locals 1

    const-string v0, "classRegistry"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->a:Lcom/google/android/appfunctions/internal/ClassRegistry;

    new-instance p1, LA4/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->b:Ldb/o;

    return-void
.end method


# virtual methods
.method public final a(LA4/b;Ljava/lang/String;Lgb/f;Lib/c;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->a:Lcom/google/android/appfunctions/internal/ClassRegistry;

    invoke-interface {p0}, Lcom/google/android/appfunctions/internal/ClassRegistry;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/appfunctions/internal/AppFunctionInvoker;

    invoke-interface {v0}, Lcom/google/android/appfunctions/internal/AppFunctionInvoker;->b()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/appfunctions/internal/AppFunctionInvoker;->a(LA4/b;Ljava/lang/String;Lgb/f;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Function ["

    const-string p3, "] is not available."

    invoke-static {p1, p2, p3}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->b:Ldb/o;

    invoke-virtual {p0}, Ldb/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method
