.class public final synthetic Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:Landroidx/activity/result/h;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/activity/result/a;

.field public final synthetic d:Lh/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/result/h;Ljava/lang/String;Landroidx/activity/result/a;Lh/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->a:Landroidx/activity/result/h;

    iput-object p2, p0, Landroidx/activity/result/c;->b:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/a;

    iput-object p4, p0, Landroidx/activity/result/c;->d:Lh/a;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 3

    sget-object p1, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    iget-object v0, p0, Landroidx/activity/result/c;->a:Landroidx/activity/result/h;

    iget-object v1, p0, Landroidx/activity/result/c;->b:Ljava/lang/String;

    if-ne p1, p2, :cond_1

    iget-object p1, v0, Landroidx/activity/result/h;->e:Ljava/util/LinkedHashMap;

    new-instance p2, Landroidx/activity/result/d;

    iget-object v2, p0, Landroidx/activity/result/c;->c:Landroidx/activity/result/a;

    iget-object p0, p0, Landroidx/activity/result/c;->d:Lh/a;

    invoke-direct {p2, p0, v2}, Landroidx/activity/result/d;-><init>(Lh/a;Landroidx/activity/result/a;)V

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Landroidx/activity/result/h;->f:Ljava/util/LinkedHashMap;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, v0, Landroidx/activity/result/h;->g:Landroid/os/Bundle;

    invoke-static {p1, v1}, LG5/m;->b(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/activity/result/ActivityResult;

    if-eqz p2, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget p1, p2, Landroidx/activity/result/ActivityResult;->a:I

    iget-object p2, p2, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lh/a;->c(ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/activity/result/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    if-ne p0, p2, :cond_2

    iget-object p0, v0, Landroidx/activity/result/h;->e:Ljava/util/LinkedHashMap;

    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    if-ne p0, p2, :cond_3

    invoke-virtual {v0, v1}, Landroidx/activity/result/h;->f(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
