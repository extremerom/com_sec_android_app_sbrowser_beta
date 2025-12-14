.class public final Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/appfunctions/internal/AppFunctionInventory;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;",
        "Lcom/google/android/appfunctions/internal/AppFunctionInventory;",
        "<init>",
        "()V",
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


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v6, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const-string v9, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_createBookmark#PARAMETER_TYPE"

    const-string v10, "androidx.appsearch.functions"

    const/4 v14, 0x0

    const-string v11, "com.google.android.appfunctions.schema.common.v1.browser.CreateBookmarkParams"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v4, "createBookmarkParams"

    const-string v5, ""

    const-string v2, "createBookmarkParams"

    const-string v3, "androidx.appsearch.functions"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v7}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    iput-object v13, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->a:Ljava/util/List;

    new-instance v14, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const-string v2, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_createBookmark#RETURN_TYPE"

    const-string v3, "androidx.appsearch.functions"

    const/4 v7, 0x0

    const-string v4, "com.google.android.appfunctions.schema.common.v1.browser.Bookmark"

    move-object v1, v14

    invoke-direct/range {v1 .. v7}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v1, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v9, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_createBookmark"

    const-string v10, "androidx.appsearch.functions"

    const/4 v11, 0x1

    const-string v12, "createBookmark schema impl"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v8, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v7, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v13, 0x8

    const/4 v14, 0x1

    const-string v10, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_deleteBookmarks#PARAMETER_TYPE"

    const-string v11, "androidx.appsearch.functions"

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v15}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v5, "bookmarkIds"

    const-string v6, ""

    const-string v3, "bookmarkIds"

    const-string v4, "androidx.appsearch.functions"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v8}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iput-object v14, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->b:Ljava/util/List;

    new-instance v15, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v6, 0x8

    const/4 v7, 0x1

    const-string v3, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_deleteBookmarks#RETURN_TYPE"

    const-string v4, "androidx.appsearch.functions"

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v8}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v2, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v10, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_deleteBookmarks"

    const-string v11, "androidx.appsearch.functions"

    const/4 v12, 0x1

    const-string v13, "deleteBookmarks schema impl"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v9, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v8, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v14, 0x3

    const/4 v15, 0x0

    const-string v11, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_updateBookmark#PARAMETER_TYPE"

    const-string v12, "androidx.appsearch.functions"

    const/16 v16, 0x0

    const-string v13, "com.google.android.appfunctions.schema.common.v1.browser.UpdateBookmarkParams"

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v6, "updateBookmarkParams"

    const-string v7, ""

    const-string v4, "updateBookmarkParams"

    const-string v5, "androidx.appsearch.functions"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v9}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    iput-object v15, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->c:Ljava/util/List;

    new-instance v16, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-string v4, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_updateBookmark#RETURN_TYPE"

    const-string v5, "androidx.appsearch.functions"

    const/4 v9, 0x0

    const-string v6, "com.google.android.appfunctions.schema.common.v1.browser.Bookmark"

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v9}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v3, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v11, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_updateBookmark"

    const-string v12, "androidx.appsearch.functions"

    const/4 v13, 0x1

    const-string v14, "updateBookmark schema impl"

    move-object v10, v3

    invoke-direct/range {v10 .. v16}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v10, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v9, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const-string v12, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findBookmarks#PARAMETER_TYPE"

    const-string v13, "androidx.appsearch.functions"

    const/16 v17, 0x0

    const-string v14, "com.google.android.appfunctions.schema.common.v1.browser.FindBookmarksParams"

    move-object v11, v9

    invoke-direct/range {v11 .. v17}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v7, "findBookmarksParams"

    const-string v8, ""

    const-string v5, "findBookmarksParams"

    const-string v6, "androidx.appsearch.functions"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v10}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->d:Ljava/util/List;

    new-instance v17, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v9, 0x3

    const/4 v10, 0x1

    const-string v6, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findBookmarks#RETURN_TYPE"

    const-string v7, "androidx.appsearch.functions"

    const/4 v11, 0x0

    const-string v8, "com.google.android.appfunctions.schema.common.v1.browser.Bookmark"

    move-object/from16 v5, v17

    invoke-direct/range {v5 .. v11}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v5, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v12, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findBookmarks"

    const-string v13, "androidx.appsearch.functions"

    const/4 v14, 0x1

    const-string v15, "findBookmark schema impl"

    move-object v11, v5

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v17}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v13, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v7, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showBookmark#PARAMETER_TYPE"

    const-string v8, "androidx.appsearch.functions"

    const/4 v12, 0x0

    const/4 v9, 0x0

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v9, "bookmarkId"

    const-string v10, ""

    const-string v7, "bookmarkId"

    const-string v8, "androidx.appsearch.functions"

    move-object v6, v4

    move-object v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->e:Ljava/util/List;

    new-instance v20, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v10, 0x9

    const/4 v11, 0x0

    const-string v7, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showBookmark#RETURN_TYPE"

    const-string v8, "androidx.appsearch.functions"

    const/4 v9, 0x0

    move-object/from16 v6, v20

    invoke-direct/range {v6 .. v12}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v6, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v15, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showBookmark"

    const-string v16, "androidx.appsearch.functions"

    const/16 v17, 0x1

    const-string v18, "showBookmark schema impl"

    move-object v14, v6

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v14, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v11, 0x3

    const-string v8, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_getHistories#PARAMETER_TYPE"

    const-string v9, "androidx.appsearch.functions"

    const/4 v13, 0x0

    const-string v10, "com.google.android.appfunctions.schema.common.v1.browser.GetHistoriesParams"

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v10, "getHistoriesParams"

    const-string v11, ""

    const-string v8, "getHistoriesParams"

    const-string v9, "androidx.appsearch.functions"

    move-object v7, v4

    move-object v12, v14

    invoke-direct/range {v7 .. v12}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->f:Ljava/util/List;

    new-instance v21, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const-string v8, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_getHistories#RETURN_TYPE"

    const-string v9, "androidx.appsearch.functions"

    const-string v10, "com.google.android.appfunctions.schema.common.v1.types.Uri"

    move-object/from16 v7, v21

    invoke-direct/range {v7 .. v13}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v7, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v16, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_getHistories"

    const-string v17, "androidx.appsearch.functions"

    const/16 v18, 0x1

    const-string v19, "getHistory schema impl"

    move-object v15, v7

    move-object/from16 v20, v4

    invoke-direct/range {v15 .. v21}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v15, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v12, 0x3

    const-string v9, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showSite#PARAMETER_TYPE"

    const-string v10, "androidx.appsearch.functions"

    const/4 v14, 0x0

    const-string v11, "com.google.android.appfunctions.schema.common.v1.browser.ShowSiteParams"

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v11, "showSiteParams"

    const-string v12, ""

    const-string v9, "showSiteParams"

    const-string v10, "androidx.appsearch.functions"

    move-object v8, v4

    move-object v13, v15

    invoke-direct/range {v8 .. v13}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->g:Ljava/util/List;

    new-instance v22, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v12, 0x9

    const/4 v13, 0x0

    const-string v9, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showSite#RETURN_TYPE"

    const-string v10, "androidx.appsearch.functions"

    const/4 v11, 0x0

    move-object/from16 v8, v22

    invoke-direct/range {v8 .. v14}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v8, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v17, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showSite"

    const-string v18, "androidx.appsearch.functions"

    const/16 v19, 0x1

    const-string v20, "showSite schema impl"

    move-object/from16 v16, v8

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v22}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v16, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v13, 0x3

    const-string v10, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findTabs#PARAMETER_TYPE"

    const-string v11, "androidx.appsearch.functions"

    const/4 v15, 0x0

    const-string v12, "com.google.android.appfunctions.schema.common.v1.browser.FindTabsParams"

    move-object/from16 v9, v16

    invoke-direct/range {v9 .. v15}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v12, "findTabsParams"

    const-string v13, ""

    const-string v10, "findTabsParams"

    const-string v11, "androidx.appsearch.functions"

    move-object v9, v4

    move-object/from16 v14, v16

    invoke-direct/range {v9 .. v14}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->h:Ljava/util/List;

    new-instance v23, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/4 v13, 0x3

    const/4 v14, 0x1

    const-string v10, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findTabs#RETURN_TYPE"

    const-string v11, "androidx.appsearch.functions"

    const-string v12, "com.google.android.appfunctions.schema.common.v1.browser.Tab"

    move-object/from16 v9, v23

    invoke-direct/range {v9 .. v15}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v9, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v18, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findTabs"

    const-string v19, "androidx.appsearch.functions"

    const/16 v20, 0x1

    const-string v21, "findTabs schema impl"

    move-object/from16 v17, v9

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v23}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    new-instance v4, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;

    new-instance v17, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v14, 0x8

    const-string v11, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showTab#PARAMETER_TYPE"

    const-string v12, "androidx.appsearch.functions"

    const/16 v16, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, v17

    invoke-direct/range {v10 .. v16}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    const-string v13, "tabId"

    const-string v14, ""

    const-string v11, "tabId"

    const-string v12, "androidx.appsearch.functions"

    move-object v10, v4

    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v15}, Lcom/google/android/appfunctions/AppFunctionParameterMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    invoke-static {v4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->i:Ljava/util/List;

    new-instance v24, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const-string v11, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showTab#RETURN_TYPE"

    const-string v12, "androidx.appsearch.functions"

    const/4 v13, 0x0

    move-object/from16 v10, v24

    invoke-direct/range {v10 .. v16}, Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    new-instance v10, Lcom/google/android/appfunctions/AppFunctionMetadata;

    const-string v19, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showTab"

    const-string v20, "androidx.appsearch.functions"

    const/16 v21, 0x1

    const-string v22, "showTab schema impl"

    move-object/from16 v18, v10

    move-object/from16 v23, v4

    invoke-direct/range {v18 .. v24}, Lcom/google/android/appfunctions/AppFunctionMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Lcom/google/android/appfunctions/AppFunctionDataTypeMetadata;)V

    sget-object v4, Lv3/a;->a:Lv3/a;

    new-instance v11, Ldb/j;

    invoke-direct {v11, v4, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/b;->a:Lv3/b;

    new-instance v12, Ldb/j;

    invoke-direct {v12, v1, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/c;->a:Lv3/c;

    new-instance v13, Ldb/j;

    invoke-direct {v13, v1, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/d;->a:Lv3/d;

    new-instance v14, Ldb/j;

    invoke-direct {v14, v1, v5}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/e;->a:Lv3/e;

    new-instance v15, Ldb/j;

    invoke-direct {v15, v1, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/f;->a:Lv3/f;

    new-instance v2, Ldb/j;

    invoke-direct {v2, v1, v7}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/g;->a:Lv3/g;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v1, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/h;->a:Lv3/h;

    new-instance v4, Ldb/j;

    invoke-direct {v4, v1, v9}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lv3/i;->a:Lv3/i;

    new-instance v5, Ldb/j;

    invoke-direct {v5, v1, v10}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    filled-new-array/range {v11 .. v19}, [Ldb/j;

    move-result-object v1

    invoke-static {v1}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInventory_Impl;->j:Ljava/lang/Object;

    return-object p0
.end method
