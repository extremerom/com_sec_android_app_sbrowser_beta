.class public final Lv2/d;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lv2/T0;

.field public final synthetic b:Lv2/i;


# direct methods
.method public constructor <init>(Lv2/T0;Lv2/i;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lv2/d;->a:Lv2/T0;

    iput-object p2, p0, Lv2/d;->b:Lv2/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance p1, Lv2/d;

    iget-object v0, p0, Lv2/d;->a:Lv2/T0;

    iget-object p0, p0, Lv2/d;->b:Lv2/i;

    invoke-direct {p1, v0, p0, p2}, Lv2/d;-><init>(Lv2/T0;Lv2/i;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lv2/d;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lv2/d;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lv2/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lv2/d;->a:Lv2/T0;

    iget-object v1, p1, Lv2/T0;->c:Lv2/j1;

    iget-object v2, p1, Lv2/T0;->b:Lv2/J0;

    iget-object p0, p0, Lv2/d;->b:Lv2/i;

    iget-object v3, p0, Lv2/i;->a:Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;

    const-string p0, "<this>"

    invoke-static {v1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "diffCallback"

    invoke-static {v3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, v1

    check-cast p0, Lv2/J0;

    iget v4, p0, Lv2/J0;->b:I

    iget v5, v2, Lv2/J0;->b:I

    new-instance p1, Lv2/k1;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lv2/k1;-><init>(Lv2/j1;Lv2/J0;Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;II)V

    invoke-static {p1}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/x;)Landroidx/recyclerview/widget/z;

    move-result-object p1

    iget p0, p0, Lv2/J0;->b:I

    const/4 v0, 0x0

    invoke-static {v0, p0}, LG5/d3;->l(II)Lzb/d;

    move-result-object p0

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lzb/b;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    move-object v1, p0

    check-cast v1, Lzb/c;

    iget-boolean v1, v1, Lzb/c;->c:Z

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Lzb/c;

    invoke-virtual {v1}, Lzb/c;->b()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/z;->a(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    new-instance p0, Lv2/i1;

    invoke-direct {p0, p1, v0}, Lv2/i1;-><init>(Landroidx/recyclerview/widget/z;Z)V

    return-object p0
.end method
