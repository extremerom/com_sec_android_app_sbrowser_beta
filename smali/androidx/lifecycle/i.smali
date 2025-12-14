.class public final Landroidx/lifecycle/i;
.super Lkb/c;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Landroidx/lifecycle/j;

.field public c:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/j;Lkb/c;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/j;

    invoke-direct {p0, p2}, Lkb/c;-><init>(Lib/c;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/lifecycle/i;->a:Ljava/lang/Object;

    iget p1, p0, Landroidx/lifecycle/i;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/lifecycle/i;->c:I

    iget-object p1, p0, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/j;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/j;->b(Lkb/c;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
