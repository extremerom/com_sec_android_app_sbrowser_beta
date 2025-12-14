.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$TemplateContent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->TemplateContent(La0/m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsb/n;"
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$TemplateContent$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$TemplateContent$1;->invoke(La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(La0/m;I)V
    .locals 2
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    and-int/lit8 p2, p2, 0x3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p2, LR1/d;->d:La0/L0;

    check-cast p1, La0/q;

    invoke-virtual {p1, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM1/b;

    iget p2, p2, LM1/b;->a:I

    invoke-static {p2, v0}, LM1/b;->b(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const p2, 0x375bb3f

    invoke-virtual {p1, p2}, La0/q;->Q(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$TemplateContent$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$SmallLayout(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;La0/m;I)V

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    invoke-static {p2, v0}, LM1/b;->b(II)Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x375c263

    invoke-virtual {p1, p2}, La0/q;->Q(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$TemplateContent$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$WideSmallLayout(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;La0/m;I)V

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    goto :goto_1

    :cond_3
    const p0, 0x6b430010

    invoke-virtual {p1, p0}, La0/q;->Q(I)V

    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    :goto_1
    return-void
.end method
