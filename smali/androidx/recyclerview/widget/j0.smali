.class public final Landroidx/recyclerview/widget/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/i;

.field public final b:Landroidx/recyclerview/widget/s1;

.field public final c:Landroidx/recyclerview/widget/u0;

.field public final d:LB0/M;

.field public e:I

.field public final f:LJ6/m;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/u0;LB0/M;Landroidx/recyclerview/widget/F1;Landroidx/recyclerview/widget/s1;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LJ6/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, LJ6/m;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/j0;->f:LJ6/m;

    iput-object p1, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    iput-object p2, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lo3/i;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p3, p2, Lo3/i;->d:Ljava/lang/Object;

    new-instance p3, Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p2, Lo3/i;->a:Ljava/lang/Object;

    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p3, p2, Lo3/i;->b:Ljava/lang/Object;

    iput-object p0, p2, Lo3/i;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/recyclerview/widget/j0;->a:Lo3/i;

    iput-object p4, p0, Landroidx/recyclerview/widget/j0;->b:Landroidx/recyclerview/widget/s1;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result p2

    iput p2, p0, Landroidx/recyclerview/widget/j0;->e:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/u0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    return-void
.end method
