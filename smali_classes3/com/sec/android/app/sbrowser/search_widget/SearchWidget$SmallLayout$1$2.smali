.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1;->invoke(LK1/t;La0/m;I)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lx1/k;->b:La0/L0;

    move-object v4, p2

    check-cast v4, La0/q;

    invoke-virtual {v4, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lx1/k;->a:La0/L0;

    invoke-virtual {v4, p2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LH0/g;

    iget-wide p2, p2, LH0/g;->a:J

    invoke-static {p2, p3}, LH0/g;->a(J)F

    move-result p2

    invoke-virtual {v4, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f070fd2

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, LAd/a;->b(Landroid/content/Context;IF)F

    move-result p1

    mul-float/2addr p1, p2

    invoke-static {p1}, LG5/P3;->i(F)Lx1/r;

    move-result-object v0

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$2$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V

    const p0, -0x4ad4db75

    invoke-static {p0, p1, v4}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v3

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/16 v5, 0xc00

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    :cond_0
    return-void
.end method
