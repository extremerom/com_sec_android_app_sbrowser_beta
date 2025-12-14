.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->WideSmallLayout(La0/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb/o;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LK1/t;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lx1/k;->b:La0/L0;

    move-object v4, p2

    check-cast v4, La0/q;

    invoke-virtual {v4, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p2, 0x7f070fdd

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result p1

    const p2, 0x3c652f59

    invoke-virtual {v4, p2}, La0/q;->R(I)V

    sget-object p2, Lx1/k;->f:La0/L0;

    invoke-virtual {v4, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, LK1/p;

    new-instance p3, Lf2/c;

    sget-object v0, Lx1/k;->a:La0/L0;

    invoke-virtual {v4, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH0/g;

    iget-wide v0, v0, LH0/g;->a:J

    invoke-static {v0, v1}, LH0/g;->a(J)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {p3, v0}, Lf2/c;-><init>(F)V

    invoke-direct {p2, p3}, LK1/p;-><init>(Lf2/h;)V

    goto :goto_0

    :cond_0
    new-instance p2, LK1/p;

    new-instance p3, Lf2/c;

    const/4 v0, 0x1

    int-to-float v0, v0

    invoke-direct {p3, v0}, Lf2/c;-><init>(F)V

    invoke-direct {p2, p3}, LK1/p;-><init>(Lf2/h;)V

    new-instance p3, LD1/a;

    invoke-direct {p3, p1}, LD1/a;-><init>(F)V

    invoke-interface {p2, p3}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object p2

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {v4, p1}, La0/q;->p(Z)V

    invoke-static {p2}, LG5/P3;->d(Lx1/r;)Lx1/r;

    move-result-object v0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V

    const p0, 0x2ef6eeb4

    invoke-static {p0, p1, v4}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v5, 0xc00

    const/4 v6, 0x2

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    return-void
.end method
