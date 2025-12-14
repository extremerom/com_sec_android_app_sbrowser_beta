.class public final LJ0/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lsb/k;

.field public final synthetic c:La0/o;

.field public final synthetic d:Lj0/k;

.field public final synthetic e:I

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsb/k;La0/o;Lj0/k;ILandroid/view/View;)V
    .locals 0

    iput-object p1, p0, LJ0/o;->a:Landroid/content/Context;

    iput-object p2, p0, LJ0/o;->b:Lsb/k;

    iput-object p3, p0, LJ0/o;->c:La0/o;

    iput-object p4, p0, LJ0/o;->d:Lj0/k;

    iput p5, p0, LJ0/o;->e:I

    iput-object p6, p0, LJ0/o;->f:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v7, LJ0/q;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.Owner"

    iget-object v1, p0, LJ0/o;->f:Landroid/view/View;

    invoke-static {v1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, LB0/P;

    iget-object v3, p0, LJ0/o;->c:La0/o;

    iget-object v1, p0, LJ0/o;->a:Landroid/content/Context;

    iget-object v2, p0, LJ0/o;->b:Lsb/k;

    iget-object v4, p0, LJ0/o;->d:Lj0/k;

    iget v5, p0, LJ0/o;->e:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LJ0/q;-><init>(Landroid/content/Context;Lsb/k;La0/o;Lj0/k;ILB0/P;)V

    invoke-virtual {v7}, LJ0/i;->getLayoutNode()Landroidx/compose/ui/node/a;

    move-result-object p0

    return-object p0
.end method
