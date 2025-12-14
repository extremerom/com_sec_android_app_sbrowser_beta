.class final Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion;->updateGlanceWidget(Lx1/o;ZLib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lp1/b;",
        "state",
        "Ldb/r;",
        "<anonymous>",
        "(Lp1/b;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.search_widget.SearchWidgetProvider$Companion$updateGlanceWidget$2"
    f = "SearchWidgetProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $glanceId:Lx1/o;

.field final synthetic $isSviEnabled:Z

.field synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(ZLx1/o;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lx1/o;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$isSviEnabled:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$glanceId:Lx1/o;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$isSviEnabled:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$glanceId:Lx1/o;

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;-><init>(ZLx1/o;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lp1/b;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->invoke(Lp1/b;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lp1/b;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/b;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lp1/b;

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget;->Companion:Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$Companion;->getUpdateStateKey()Lp1/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$Companion;->getUpdateStateKey()Lp1/f;

    move-result-object v2

    invoke-virtual {p1, v2}, Lp1/b;->a(Lp1/f;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    xor-int/lit8 v2, v3, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lp1/b;->b(Lp1/f;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_widget/SearchWidget$Companion;->isSviEnabledKey()Lp1/f;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$isSviEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lp1/b;->b(Lp1/f;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_widget/SearchWidgetProvider$Companion$updateGlanceWidget$2;->$glanceId:Lx1/o;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateAppWidgetState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ") exception: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchWidgetProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
