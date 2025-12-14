.class final Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->invoke(La0/m;I)V
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
.field final synthetic $widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LK1/i;

    check-cast p2, La0/m;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;->invoke(LK1/i;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(LK1/i;La0/m;I)V
    .locals 14
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    const-string v0, "$this$Column"

    move-object v1, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx1/k;->b:La0/L0;

    move-object/from16 v5, p2

    check-cast v5, La0/q;

    invoke-virtual {v5, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    move-object v2, p0

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static {v1, v2, v4, v6, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired$default(Landroid/content/Context;IZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lf2/j;

    const v2, 0x7f060183

    invoke-direct {v1, v2}, Lf2/j;-><init>(I)V

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lf2/j;

    const v2, 0x7f060182

    invoke-direct {v1, v2}, Lf2/j;-><init>(I)V

    goto :goto_0

    :goto_1
    invoke-virtual {v5, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f140f55

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "getString(...)"

    invoke-static {v7, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LR1/x;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/16 v13, 0x7fb8

    move-object v6, v1

    invoke-direct/range {v6 .. v13}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;ILe2/c;ILe2/k;I)V

    invoke-virtual {v5, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c00cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-wide v2, 0x100000000L

    int-to-float v0, v0

    invoke-static {v2, v3, v0}, LG5/W2;->b(JF)J

    move-result-wide v2

    const/16 v6, 0xc08

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static/range {v1 .. v6}, LG5/t2;->a(LR1/x;JFLa0/m;I)V

    return-void
.end method
