.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1;->invoke(LK1/t;La0/m;I)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 8
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    const/4 v0, 0x0

    invoke-static {p3, p2, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$getIconSizeModifier(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;La0/m;I)Lx1/r;

    move-result-object v1

    invoke-static {p3, v1, p2, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$Icon(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;La0/m;I)V

    const p3, 0x7f070fd5

    invoke-static {p3}, LG5/P3;->j(I)Lx1/r;

    move-result-object v1

    invoke-static {v1, p2, v0}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    check-cast p1, LK1/u;

    invoke-virtual {p1}, LK1/u;->a()Lx1/r;

    move-result-object v1

    new-instance p1, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1$1;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-direct {p1, v2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1$1;-><init>(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;)V

    const v2, 0x371553d0

    invoke-static {v2, p1, p2}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0xc00

    const/4 v7, 0x6

    move-object v5, p2

    invoke-static/range {v1 .. v7}, LG5/O3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-static {p3}, LG5/P3;->j(I)Lx1/r;

    move-result-object p1

    invoke-static {p1, p2, v0}, LG5/Q3;->a(Lx1/r;La0/m;I)V

    sget-object p1, Lx1/k;->b:La0/L0;

    check-cast p2, La0/q;

    invoke-virtual {p2, p1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isRecognizeSpeechAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$WideSmallLayout$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    invoke-static {p0, p2, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$getIconSizeModifier(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;La0/m;I)Lx1/r;

    move-result-object p1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$VoiceIcon(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;La0/m;I)V

    :cond_0
    return-void
.end method
