.class final Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.widget.BookmarkAppWidgetProvider$Companion$updateWidget$1"
    f = "BookmarkAppWidgetProvider.kt"
    l = {
        0xeb,
        0xef
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $widgetId:I

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$widgetId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
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

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$widgetId:I

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;-><init>(Landroid/content/Context;ILib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lx1/o;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_2
    new-instance p1, Lz1/i0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    invoke-direct {p1, v1}, Lz1/i0;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$widgetId:I

    iget-object p1, p1, Lz1/i0;->b:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {p1, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Lz1/e;

    invoke-direct {p1, v1}, Lz1/e;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    new-instance v5, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1$1;

    invoke-direct {v5, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1$1;-><init>(Lib/c;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-static {v1, p1, v5, p0}, LG5/C2;->g(Landroid/content/Context;Lx1/o;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, p1

    :goto_0
    new-instance p1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->getGlanceAppWidget()Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    move-result-object p1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$context:Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->label:I

    invoke-virtual {p1, v4, v1, p0}, Lz1/V;->update(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid AppWidget ID."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$updateWidget$1;->$widgetId:I

    const-string p1, "Invalid AppWidget ID "

    const-string v0, "BookmarkAppWidgetProvider"

    invoke-static {p0, p1, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
