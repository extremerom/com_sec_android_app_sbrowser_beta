.class final Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->previewAppWidget(Landroid/content/Context;Ljava/lang/Class;)V
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
    c = "com.sec.android.app.sbrowser.widget.BookmarkAppWidgetProvider$Companion$previewAppWidget$1"
    f = "BookmarkAppWidgetProvider.kt"
    l = {
        0x23e,
        0x243
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $receiverClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$receiverClass:Ljava/lang/Class;

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

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$receiverClass:Ljava/lang/Class;

    invoke-direct {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Lib/c;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$context:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1$1;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1$1;-><init>(Lib/c;)V

    iput v4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->label:I

    sget v4, LM1/b;->b:I

    const-class v6, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-static {p1, v6}, LG5/B3;->b(Landroid/content/Context;Ljava/lang/Class;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    const-string v7, " "

    const-string v8, "msg"

    const-string v9, "GWT:PreviewState"

    if-nez v4, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t found providerInfo about "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    invoke-static {v1, v7, p1, v9}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p1, v2

    goto :goto_0

    :cond_4
    invoke-static {v4, p1}, La3/a;->b(Landroid/appwidget/AppWidgetProviderInfo;Landroid/content/Context;)I

    move-result v10

    invoke-static {v10}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Supported preview size : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Le7/a;->a:Ljava/lang/String;

    invoke-static {v8, v7, v4, v9}, Lw2/j;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Ld2/j;->a:Ld2/j;

    new-instance v8, LZ1/x;

    invoke-direct {v8, v1, v5}, LZ1/x;-><init>(Lsb/n;Lib/c;)V

    move-object v4, p1

    move-object v5, v7

    move v7, v10

    move-object v9, p0

    invoke-static/range {v4 .. v9}, LG5/A3;->e(Landroid/content/Context;Ld2/j;Ljava/lang/Class;ILZ1/x;Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    :goto_0
    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->$receiverClass:Ljava/lang/Class;

    iput v3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion$previewAppWidget$1;->label:I

    invoke-static {p1, v1, p0}, LG5/A3;->d(Landroid/content/Context;Ljava/lang/Class;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    return-object v2
.end method
