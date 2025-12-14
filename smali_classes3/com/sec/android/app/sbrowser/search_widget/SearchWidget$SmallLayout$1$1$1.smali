.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1;->invoke(LK1/t;La0/m;I)V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1$1;->invoke(LK1/t;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/t;La0/m;I)V
    .locals 0
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    const-string p3, "$this$Row"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$SmallLayout$1$1$1;->this$0:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$getIconSizeModifier(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;La0/m;I)Lx1/r;

    move-result-object p3

    invoke-static {p0, p3, p2, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->access$Icon(Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;Lx1/r;La0/m;I)V

    return-void
.end method
