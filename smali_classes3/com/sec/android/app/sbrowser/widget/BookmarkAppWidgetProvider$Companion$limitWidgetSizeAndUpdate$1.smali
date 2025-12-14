.class final Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->limitWidgetSizeAndUpdate(Landroid/content/Context;IZ)V
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
    c = "com.sec.android.app.sbrowser.widget.BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1"
    f = "BookmarkAppWidgetProvider.kt"
    l = {
        0x24b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $isUpdateAll:Z

.field final synthetic $widgetId:I

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZILib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$isUpdateAll:Z

    iput p3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$widgetId:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

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

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$isUpdateAll:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$widgetId:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;-><init>(Landroid/content/Context;ZILib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Lz1/i0;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "getApplicationContext(...)"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lz1/i0;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->getGlanceAppWidget()Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iput v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->label:I

    invoke-virtual {p1, v1, p0}, Lz1/i0;->f(Ljava/lang/Class;Lkb/c;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->hasMoreThenOneWidget(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "BookmarkAppWidgetProvider"

    if-nez v1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateHasMoreThenOneWidget(Landroid/content/Context;Z)V

    const-string v0, "Limit bookmark count in widget"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$isUpdateAll:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$widgetId:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/o;

    new-instance v3, Lz1/i0;

    invoke-direct {v3, v0}, Lz1/i0;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lz1/i0;->d(Lx1/o;)I

    move-result v2

    if-eqz v1, :cond_4

    sget-object v3, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    if-eq v2, p0, :cond_3

    sget-object v3, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v3, v0, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateHasMoreThenOneWidget(Landroid/content/Context;Z)V

    const-string v0, "Remove bookmark count limit in widget"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljava/lang/Iterable;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$context:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$limitWidgetSizeAndUpdate$1;->$widgetId:I

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/o;

    new-instance v2, Lz1/i0;

    invoke-direct {v2, v0}, Lz1/i0;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lz1/i0;->d(Lx1/o;)I

    move-result v1

    if-eq v1, p0, :cond_6

    sget-object v2, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    goto :goto_2

    :cond_7
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
