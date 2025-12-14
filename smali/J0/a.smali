.class public final LJ0/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LJ0/q;

.field public final synthetic c:Landroidx/compose/ui/node/a;


# direct methods
.method public synthetic constructor <init>(LJ0/q;Landroidx/compose/ui/node/a;I)V
    .locals 0

    iput p3, p0, LJ0/a;->a:I

    iput-object p1, p0, LJ0/a;->b:LJ0/q;

    iput-object p2, p0, LJ0/a;->c:Landroidx/compose/ui/node/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ldb/r;->a:Ldb/r;

    iget-object v1, p0, LJ0/a;->c:Landroidx/compose/ui/node/a;

    iget-object v2, p0, LJ0/a;->b:LJ0/q;

    const/4 v3, 0x0

    iget p0, p0, LJ0/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lz0/j;

    invoke-static {v2, v1}, LJ0/k;->c(LJ0/q;Landroidx/compose/ui/node/a;)V

    return-object v0

    :pswitch_0
    check-cast p1, Lz0/F;

    invoke-static {v2, v1}, LJ0/k;->c(LJ0/q;Landroidx/compose/ui/node/a;)V

    return-object v0

    :pswitch_1
    check-cast p1, LB0/P;

    instance-of p0, p1, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    goto :goto_0

    :cond_0
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/i;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/i;->a()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/i;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/i;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/i;->b()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance p0, Landroidx/compose/ui/platform/f;

    invoke-direct {p0, p1, v1, p1}, Landroidx/compose/ui/platform/f;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/node/a;Landroidx/compose/ui/platform/AndroidComposeView;)V

    invoke-static {v2, p0}, Lf1/W;->j(Landroid/view/View;Lf1/b;)V

    :cond_1
    invoke-virtual {v2}, LJ0/i;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v2, :cond_2

    invoke-virtual {v2}, LJ0/i;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
