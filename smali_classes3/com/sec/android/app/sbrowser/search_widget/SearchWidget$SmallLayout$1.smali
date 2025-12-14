.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->SmallLayout(La0/m;I)V
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


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 9
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    const-string v2, "$this$Row"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, p1

    check-cast v8, LK1/u;

    invoke-virtual {v8}, LK1/u;->a()Lx1/r;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V

    const v3, -0x5e439a3f

    invoke-static {v3, v2, p2}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v6, 0xc00

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v1 .. v7}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-virtual {v8}, LK1/u;->a()Lx1/r;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V

    const v0, -0x50b47316

    invoke-static {v0, v2, p2}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xc00

    const/4 v6, 0x0

    move-object v0, v1

    move v1, v2

    move v2, v4

    move-object v4, p2

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    return-void
.end method
