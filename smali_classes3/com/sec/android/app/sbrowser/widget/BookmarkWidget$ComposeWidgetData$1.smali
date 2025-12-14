.class final Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->ComposeWidgetData(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V
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
.field final synthetic $colorProvider:Lf2/a;

.field final synthetic $dividerColorProvider:Lf2/a;

.field final synthetic $widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;Lf2/a;Lf2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$colorProvider:Lf2/a;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$dividerColorProvider:Lf2/a;

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

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->invoke(La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final invoke(La0/m;I)V
    .locals 20
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    move-object/from16 v0, p0

    and-int/lit8 v1, p2, 0x3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object/from16 v1, p1

    check-cast v1, La0/q;

    invoke-virtual {v1}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, La0/q;->K()V

    goto/16 :goto_6

    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, p1

    check-cast v10, La0/q;

    const v3, -0x4aee872

    invoke-virtual {v10, v3}, La0/q;->Q(I)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAdapterData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-string v4, "iterator(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v11, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "next(...)"

    invoke-static {v5, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getId()J

    move-result-wide v7

    const-string v9, "BOOKMARK_ID"

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "IS_BOOKMARK_ITEM_FOLDER"

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "BOOKMARK_ITEM_URL"

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v7, -0x4aeb473

    invoke-virtual {v10, v7}, La0/q;->Q(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isPrevious()Z

    move-result v7

    const/16 v8, 0xf0

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getParentId()J

    move-result-wide v12

    invoke-virtual {v6, v9, v12, v13}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v7, LR1/p;

    new-instance v9, Lx1/a;

    const v12, 0x7f08053e

    invoke-direct {v9, v12}, Lx1/a;-><init>(I)V

    sget-object v12, LR1/o;->Icon:LR1/o;

    sget-wide v13, Ls0/b;->f:J

    new-instance v15, Lf2/i;

    invoke-direct {v15, v13, v14}, Lf2/i;-><init>(J)V

    invoke-direct {v7, v9, v12, v15, v8}, LR1/p;-><init>(Lx1/u;LR1/o;Lf2/i;I)V

    :goto_2
    move-object/from16 p1, v3

    :goto_3
    move v3, v2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->isFolder()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, LR1/p;

    new-instance v9, Lx1/a;

    const v12, 0x7f08053d

    invoke-direct {v9, v12}, Lx1/a;-><init>(I)V

    sget-object v12, LR1/o;->Icon:LR1/o;

    sget-wide v13, Ls0/b;->f:J

    new-instance v15, Lf2/i;

    invoke-direct {v15, v13, v14}, Lf2/i;-><init>(J)V

    invoke-direct {v7, v9, v12, v15, v8}, LR1/p;-><init>(Lx1/u;LR1/o;Lf2/i;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTouchIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v9, LR1/p;

    new-instance v12, Lx1/f;

    invoke-direct {v12, v7}, Lx1/f;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v7, LR1/o;->Icon:LR1/o;

    sget-wide v13, Ls0/b;->f:J

    new-instance v15, Lf2/i;

    invoke-direct {v15, v13, v14}, Lf2/i;-><init>(J)V

    invoke-direct {v9, v12, v7, v15, v8}, LR1/p;-><init>(Lx1/u;LR1/o;Lf2/i;I)V

    move-object/from16 p1, v3

    move-object v7, v9

    goto :goto_3

    :cond_4
    iget-object v7, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->this$0:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->access$getDominantText(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v8, "getDefault(...)"

    invoke-static {v4, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "toUpperCase(...)"

    invoke-static {v4, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_5
    sget-object v7, Lx1/k;->b:La0/L0;

    invoke-virtual {v10, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f071748

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v10, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f071747

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const-string v13, "createBitmap(...)"

    invoke-static {v12, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v14, Landroid/graphics/Paint;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/graphics/Paint;-><init>(I)V

    const v15, -0x4adc9c7

    invoke-virtual {v10, v15}, La0/q;->Q(I)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v15

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-eqz v15, :cond_6

    move-object/from16 p1, v3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getDominantColor()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_6
    move-object/from16 p1, v3

    invoke-virtual {v10, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f060bcd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_4
    invoke-virtual {v10, v11}, La0/q;->p(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v13, v3, v9, v9, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v10, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f060179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v10, v7}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07174a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v13}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v8, v3

    const/4 v3, 0x2

    int-to-float v9, v3

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    invoke-virtual {v13, v4, v2, v7, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v7, LR1/p;

    new-instance v2, Lx1/f;

    invoke-direct {v2, v12}, Lx1/f;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v8, 0xfe

    const/4 v9, 0x0

    invoke-direct {v7, v2, v9, v9, v8}, LR1/p;-><init>(Lx1/u;LR1/o;Lf2/i;I)V

    :goto_5
    invoke-virtual {v10, v11}, La0/q;->p(Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v8, "SBROWSER_BOOKMARK_WIDGET_ITEM_CLICKED"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lx1/k;->b:La0/L0;

    invoke-virtual {v10, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-virtual {v9}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v9

    const-string v11, "appWidgetId"

    invoke-virtual {v6, v11, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v6, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;

    new-instance v9, LR1/x;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$colorProvider:Lf2/a;

    new-instance v5, Le2/k;

    invoke-virtual {v10, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f071749

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    int-to-float v15, v11

    invoke-virtual {v10, v8}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    const v11, 0x7f060180

    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-static {v8}, Ls0/e;->b(I)J

    move-result-wide v18

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v14, v5

    invoke-direct/range {v14 .. v19}, Le2/k;-><init>(FFFJ)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x7dfc

    move-object v11, v9

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v18}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;ILe2/c;ILe2/k;I)V

    new-instance v5, LA1/h;

    invoke-direct {v5, v2}, LA1/h;-><init>(Landroid/content/Intent;)V

    invoke-direct {v6, v9, v7, v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkCustomListItem;-><init>(LR1/x;LR1/p;Ly1/a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    move-object/from16 v3, p1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v10, v11}, La0/q;->p(Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const v2, 0x6f206d73

    invoke-virtual {v10, v2}, La0/q;->Q(I)V

    new-instance v2, Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$dividerColorProvider:Lf2/a;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1, v0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-static {v2, v10, v0}, LG5/D;->a(Lcom/samsung/android/motionphoto/utils/ex/e;La0/m;I)V

    invoke-virtual {v10, v11}, La0/q;->p(Z)V

    goto :goto_6

    :cond_8
    const v1, 0x6f25e31d

    invoke-virtual {v10, v1}, La0/q;->Q(I)V

    sget-object v1, Lx1/p;->a:Lx1/p;

    invoke-static {v1}, LG5/P3;->c(Lx1/r;)Lx1/r;

    move-result-object v3

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;->$widgetData:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1$1;-><init>(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;)V

    const v0, -0x7feb444f

    invoke-static {v0, v1, v10}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v8, 0xc00

    const/4 v9, 0x0

    move-object v7, v10

    invoke-static/range {v3 .. v9}, LG5/M3;->a(Lx1/r;IILi0/a;La0/m;II)V

    invoke-virtual {v10, v11}, La0/q;->p(Z)V

    :goto_6
    return-void
.end method
