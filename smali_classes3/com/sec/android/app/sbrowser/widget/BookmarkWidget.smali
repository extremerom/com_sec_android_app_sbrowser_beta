.class public final Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;
.super LR1/m;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$Companion;,
        Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0002\"#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001f\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\'\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0008H\u0017\u00a2\u0006\u0004\u0008!\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;",
        "LR1/m;",
        "<init>",
        "()V",
        "",
        "showPreview",
        "Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;",
        "widgetData",
        "Ldb/r;",
        "ComposeWidgetData",
        "(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V",
        "",
        "url",
        "title",
        "getDominantText",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "Landroid/content/Context;",
        "context",
        "",
        "appWidgetId",
        "LR1/u;",
        "getBackgroundShape",
        "(Landroid/content/Context;I)LR1/u;",
        "resetSharedPreferenceValue",
        "(ILandroid/content/Context;)V",
        "Lx1/o;",
        "glanceId",
        "GetWidgetData",
        "(Landroid/content/Context;Lx1/o;ZLa0/m;I)Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;",
        "isMediumWidget",
        "(Landroid/content/Context;I)Z",
        "PreviewContent",
        "(La0/m;I)V",
        "TemplateContent",
        "Companion",
        "WidgetData",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static previewUpdateStateKey:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static updateStateKey:Lp1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp1/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$Companion;

    new-instance v0, Lp1/f;

    const-string v1, "UpdateState"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->updateStateKey:Lp1/f;

    new-instance v0, Lp1/f;

    const-string v1, "PreviewUpdateState"

    invoke-direct {v0, v1}, Lp1/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->previewUpdateStateKey:Lp1/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LR1/m;-><init>()V

    return-void
.end method

.method private final ComposeWidgetData(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V
    .locals 73
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v13, p3

    check-cast v13, La0/q;

    const v3, -0x51476035

    invoke-virtual {v13, v3}, La0/q;->S(I)La0/q;

    and-int/lit8 v3, v2, 0x30

    if-nez v3, :cond_1

    invoke-virtual {v13, v1}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    or-int/2addr v3, v2

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit16 v4, v2, 0x180

    if-nez v4, :cond_3

    invoke-virtual {v13, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v3, v4

    :cond_3
    and-int/lit16 v3, v3, 0x91

    const/16 v4, 0x90

    if-ne v3, v4, :cond_5

    invoke-virtual {v13}, La0/q;->x()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v13}, La0/q;->K()V

    goto/16 :goto_9

    :cond_5
    :goto_3
    const-string v3, "BookmarkWidget"

    const-string v4, "ComposeWidgetData"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lx1/k;->b:La0/L0;

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getCount()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const v7, 0x7f120005

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getQuantityString(...)"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getWidgetBackgroundColorWithAlpha-wmQWz5c$default(Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;Landroid/content/Context;IIIILjava/lang/Object;)J

    move-result-wide v71

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetBackground()Z

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v5

    const v6, 0x7f060179

    const/4 v7, 0x0

    const v8, 0x7f060177

    if-eqz v5, :cond_6

    const v5, -0x5c3ebb1f

    invoke-virtual {v13, v5}, La0/q;->Q(I)V

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ls0/e;->b(I)J

    move-result-wide v9

    invoke-virtual {v13, v7}, La0/q;->p(Z)V

    :goto_4
    move-wide/from16 v43, v9

    goto :goto_5

    :cond_6
    const v5, -0x5c3b859f

    invoke-virtual {v13, v5}, La0/q;->Q(I)V

    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ls0/e;->b(I)J

    move-result-wide v9

    invoke-virtual {v13, v7}, La0/q;->p(Z)V

    goto :goto_4

    :goto_5
    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetBackground()Z

    move-result v9

    invoke-static {v5, v7, v9}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lf2/j;

    invoke-direct {v5, v8}, Lf2/j;-><init>(I)V

    goto :goto_6

    :cond_7
    new-instance v5, Lf2/j;

    invoke-direct {v5, v6}, Lf2/j;-><init>(I)V

    :goto_6
    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetBackground()Z

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    new-instance v6, Lf2/j;

    const v7, 0x7f060175

    invoke-direct {v6, v7}, Lf2/j;-><init>(I)V

    goto :goto_7

    :cond_8
    new-instance v6, Lf2/j;

    const v7, 0x7f060174

    invoke-direct {v6, v7}, Lf2/j;-><init>(I)V

    :goto_7
    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v8

    invoke-direct {v0, v7, v8}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->getBackgroundShape(Landroid/content/Context;I)LR1/u;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;->getAppWidgetId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v9}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getWidgetBackground(ZI)Z

    move-result v8

    new-instance v9, LZ/a;

    move-object v14, v9

    move-wide/from16 v15, v71

    move-wide/from16 v17, v71

    move-wide/from16 v19, v71

    move-wide/from16 v21, v71

    move-wide/from16 v23, v71

    move-wide/from16 v25, v71

    move-wide/from16 v27, v71

    move-wide/from16 v29, v71

    move-wide/from16 v31, v71

    move-wide/from16 v33, v71

    move-wide/from16 v35, v71

    move-wide/from16 v37, v71

    move-wide/from16 v39, v71

    move-wide/from16 v41, v71

    move-wide/from16 v45, v71

    move-wide/from16 v47, v71

    move-wide/from16 v49, v71

    move-wide/from16 v51, v71

    move-wide/from16 v53, v71

    move-wide/from16 v55, v71

    move-wide/from16 v57, v71

    move-wide/from16 v59, v71

    move-wide/from16 v61, v71

    move-wide/from16 v63, v71

    move-wide/from16 v65, v71

    move-wide/from16 v67, v71

    move-wide/from16 v69, v71

    invoke-direct/range {v14 .. v72}, LZ/a;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    invoke-static {v9}, LG5/Y3;->a(LZ/a;)LJ1/b;

    move-result-object v9

    new-instance v10, LV9/a;

    new-instance v11, LR1/x;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x7ffe

    move-object v14, v11

    move-object v15, v4

    invoke-direct/range {v14 .. v21}, LR1/x;-><init>(Ljava/lang/String;Lf2/a;ILe2/c;ILe2/k;I)V

    invoke-direct {v10, v11}, LV9/a;-><init>(LR1/x;)V

    if-nez v8, :cond_9

    sget-object v7, LR1/b;->c:LR1/b;

    goto :goto_8

    :cond_9
    new-instance v8, LR1/a;

    invoke-direct {v8, v7}, LR1/a;-><init>(LR1/u;)V

    move-object v7, v8

    :goto_8
    invoke-virtual {v13, v3}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v8, 0x7f14028f

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v3, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;

    invoke-direct {v3, v1, v0, v5, v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$ComposeWidgetData$1;-><init>(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;Lf2/a;Lf2/a;)V

    const v5, 0x64b07397

    invoke-static {v5, v3, v13}, Li0/b;->c(ILdb/b;La0/m;)Li0/a;

    move-result-object v11

    const/16 v12, 0x10

    const/4 v14, 0x0

    const v15, 0x181000

    move-object v3, v4

    move-object v4, v7

    move-object v5, v9

    move-object v6, v10

    move-object v7, v14

    move-object v9, v11

    move-object v10, v13

    move v11, v15

    invoke-static/range {v3 .. v12}, LG5/h3;->b(Ljava/lang/String;LF3/f;LJ1/b;LV9/a;Ly1/a;Ljava/lang/String;Li0/a;La0/m;II)V

    :goto_9
    invoke-virtual {v13}, La0/q;->r()La0/i0;

    move-result-object v3

    if-eqz v3, :cond_a

    new-instance v4, Lcom/sec/android/app/sbrowser/widget/b;

    move/from16 v5, p1

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/sec/android/app/sbrowser/widget/b;-><init>(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;I)V

    iput-object v4, v3, La0/i0;->d:Lsb/n;

    :cond_a
    return-void
.end method

.method private static final ComposeWidgetData$lambda$0(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;ILa0/m;I)Ldb/r;
    .locals 0

    or-int/lit8 p3, p3, 0x1

    invoke-static {p3}, La0/d;->P(I)I

    move-result p3

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->ComposeWidgetData(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final GetWidgetData(Landroid/content/Context;Lx1/o;ZLa0/m;I)Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;
    .locals 28
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    move-object/from16 v6, p1

    move/from16 v0, p3

    move-object/from16 v7, p4

    check-cast v7, La0/q;

    const v1, -0x63d7c97d

    invoke-virtual {v7, v1}, La0/q;->Q(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lz1/i0;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getApplicationContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lz1/i0;-><init>(Landroid/content/Context;)V

    invoke-static/range {p2 .. p2}, Lz1/i0;->d(Lx1/o;)I

    move-result v15

    invoke-static {v15}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getBackground(I)Z

    move-result v14

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sbrowser_bookmark_widget_shared_preference_no_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "getSharedPreferences(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-direct {v12, v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->setPCBookmarkDataForGlance()V

    invoke-virtual {v12}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v2

    const-string v3, "BOOKMARK_ID"

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getDefaultBookmarkIdForWidget()J

    move-result-wide v4

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v9

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v16

    cmp-long v1, v3, v16

    if-nez v1, :cond_0

    cmp-long v1, v3, v9

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    :cond_0
    invoke-virtual {v12, v3, v4}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkItem(J)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v11

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    sget-object v5, Lx1/k;->b:La0/L0;

    invoke-virtual {v7, v5}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->hasMoreThenOneWidget(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v12, v3, v4, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildren(JZZ)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    if-nez v11, :cond_2

    invoke-virtual {v12, v9, v10, v0, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getChildren(JZZ)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->resetSharedPreferenceValue(ILandroid/content/Context;)V

    :cond_2
    const/4 v10, 0x0

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    :cond_3
    move-object/from16 v22, v5

    move-object/from16 v23, v13

    const-string v13, "getTitle(...)"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    cmp-long v0, v3, v0

    if-nez v0, :cond_5

    :cond_4
    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move/from16 v27, v14

    move v0, v15

    goto :goto_0

    :cond_5
    if-eqz v11, :cond_4

    new-instance v9, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v16

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v18

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v20, 0x1

    move-object v11, v9

    move-object/from16 v24, v11

    move-wide/from16 v10, v16

    move-object/from16 v25, v12

    move-object/from16 v26, v13

    move-wide/from16 v12, v18

    move/from16 v27, v14

    move-object v14, v0

    move v0, v15

    move-object v15, v5

    move/from16 v16, v20

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v1

    move/from16 v21, v0

    invoke-direct/range {v9 .. v21}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    move-object/from16 v1, v24

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const-string v1, "iterator(...)"

    invoke-static {v15, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "next(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v1

    check-cast v22, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    new-instance v14, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v10

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v12

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v9, v26

    invoke-static {v3, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getGUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v5

    move/from16 p0, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getUpdatedStrings(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getDominantColor()I

    move-result v1

    int-to-long v1, v1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v4, v9

    move-object v9, v14

    move-object v5, v14

    move-object v14, v0

    move-object v0, v15

    move-object v15, v3

    move-wide/from16 v19, v1

    move/from16 v21, p0

    invoke-direct/range {v9 .. v21}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;-><init>(JJLjava/lang/String;Ljava/lang/String;ZZ[BJI)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setFolder(Z)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTouchiconData()[B

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;->setTouchIcon([B)V

    :goto_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v15, v0

    move-object/from16 v26, v4

    move/from16 v0, p0

    goto :goto_1

    :cond_7
    move/from16 p0, v0

    const/4 v1, 0x0

    if-nez v23, :cond_8

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    move/from16 v2, p0

    move-object/from16 v3, v25

    invoke-virtual {v0, v2, v6, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->getBookmarkCount(ILandroid/content/Context;Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    goto :goto_3

    :cond_8
    move/from16 v2, p0

    :goto_3
    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v4, v27

    invoke-direct {v0, v2, v4, v8, v3}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;-><init>(IZLjava/util/ArrayList;I)V

    invoke-virtual {v7, v1}, La0/q;->p(Z)V

    return-object v0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;ILa0/m;I)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->ComposeWidgetData$lambda$0(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;ILa0/m;I)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDominantText(Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreviewUpdateStateKey$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->previewUpdateStateKey:Lp1/f;

    return-object v0
.end method

.method public static final synthetic access$getUpdateStateKey$cp()Lp1/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->updateStateKey:Lp1/f;

    return-object v0
.end method

.method private final getBackgroundShape(Landroid/content/Context;I)LR1/u;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->isMediumWidget(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, LR1/u;->None:LR1/u;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getWidgetBackgroundShape(II)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    if-eq p0, p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    sget-object p0, LR1/u;->None:LR1/u;

    goto :goto_0

    :cond_1
    sget-object p0, LR1/u;->RightSpeechBalloon:LR1/u;

    goto :goto_0

    :cond_2
    sget-object p0, LR1/u;->LeftSpeechBalloon:LR1/u;

    goto :goto_0

    :cond_3
    sget-object p0, LR1/u;->LeftLeaf:LR1/u;

    goto :goto_0

    :cond_4
    sget-object p0, LR1/u;->RightLeaf:LR1/u;

    :goto_0
    return-object p0
.end method

.method private final getDominantText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "getDefault(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toUpperCase(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private final isMediumWidget(Landroid/content/Context;I)Z
    .locals 0

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->calculateWidth(Landroid/os/Bundle;)I

    move-result p2

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->calculateHeight(Landroid/os/Bundle;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    if-ne p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final resetSharedPreferenceValue(ILandroid/content/Context;)V
    .locals 2

    sget-object p0, LNc/N;->a:LWc/f;

    sget-object p0, LUc/q;->a:LNc/w0;

    invoke-static {p0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$resetSharedPreferenceValue$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$resetSharedPreferenceValue$1;-><init>(Landroid/content/Context;ILib/c;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v1, v0, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method


# virtual methods
.method public PreviewContent(La0/m;I)V
    .locals 7
    .param p1    # La0/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    check-cast p1, La0/q;

    const v0, -0x64179876

    invoke-virtual {p1, v0}, La0/q;->Q(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->previewUpdateStateKey:Lp1/f;

    const v1, 0x572a6f87

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    sget-object v1, LR1/d;->d:La0/L0;

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LM1/b;

    iget v1, v1, LM1/b;->a:I

    sget-object v2, LR1/d;->j:La0/L0;

    invoke-virtual {p1, v2}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LZ1/i;

    if-eqz v2, :cond_0

    iget-object v2, v2, LZ1/i;->a:Ljava/util/LinkedHashMap;

    new-instance v3, LM1/b;

    invoke-direct {v3, v1}, LM1/b;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lp1/b;->a(Lp1/f;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    check-cast v0, Ljava/lang/Long;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PreviewContent->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lx1/k;->b:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget-object v0, Lx1/k;->d:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lx1/o;

    shl-int/lit8 v0, p2, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v5, v0, 0x180

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->GetWidgetData(Landroid/content/Context;Lx1/o;ZLa0/m;I)Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    move-result-object v0

    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x380

    or-int/lit8 p2, p2, 0x6

    invoke-direct {p0, v6, v0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->ComposeWidgetData(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    return-void
.end method

.method public TemplateContent(La0/m;I)V
    .locals 7
    .param p1    # La0/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
    .end annotation

    check-cast p1, La0/q;

    const v0, 0x11dda17c

    invoke-virtual {p1, v0}, La0/q;->Q(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->updateStateKey:Lp1/f;

    const v1, 0x4f828278    # 4.379177E9f

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    const v1, -0x1fdef903

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    sget-object v1, Lx1/k;->c:La0/I;

    invoke-virtual {p1, v1}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lp1/b;

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    invoke-virtual {v1, v0}, Lp1/b;->a(Lp1/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    check-cast v0, Ljava/lang/Long;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TemplateContent->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkWidget"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lx1/k;->b:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    sget-object v0, Lx1/k;->d:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lx1/o;

    shl-int/lit8 v0, p2, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit16 v5, v0, 0x180

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->GetWidgetData(Landroid/content/Context;Lx1/o;ZLa0/m;I)Lcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;

    move-result-object v0

    shl-int/lit8 p2, p2, 0x6

    and-int/lit16 p2, p2, 0x380

    or-int/lit8 p2, p2, 0x6

    invoke-direct {p0, v6, v0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidget;->ComposeWidgetData(ZLcom/sec/android/app/sbrowser/widget/BookmarkWidget$WidgetData;La0/m;I)V

    invoke-virtual {p1, v6}, La0/q;->p(Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type androidx.datastore.preferences.core.Preferences"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
