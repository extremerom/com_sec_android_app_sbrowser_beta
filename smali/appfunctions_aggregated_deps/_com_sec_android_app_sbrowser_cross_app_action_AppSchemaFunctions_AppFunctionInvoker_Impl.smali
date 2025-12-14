.class public final Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/appfunctions/internal/AppFunctionInvoker;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;",
        "Lcom/google/android/appfunctions/internal/AppFunctionInvoker;",
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
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v7, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findTabs"

    const-string v8, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showTab"

    const-string v0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_createBookmark"

    const-string v1, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_deleteBookmarks"

    const-string v2, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_updateBookmark"

    const-string v3, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findBookmarks"

    const-string v4, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showBookmark"

    const-string v5, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_getHistories"

    const-string v6, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showSite"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->I([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(LA4/b;Ljava/lang/String;Lgb/f;Lib/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lv3/j;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lv3/j;

    iget v1, v0, Lv3/j;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv3/j;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv3/j;

    check-cast p4, Lkb/c;

    invoke-direct {v0, p0, p4}, Lv3/j;-><init>(Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;Lkb/c;)V

    :goto_0
    iget-object p0, v0, Lv3/j;->a:Ljava/lang/Object;

    sget-object p4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, v0, Lv3/j;->c:I

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {p0}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showSite"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "showSiteParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.ShowSiteParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;

    const/4 p2, 0x7

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_showSite(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/ShowSiteParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_1
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showTab"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "tabId"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    const/16 p2, 0x9

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_showTab(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_2
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findTabs"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "findTabsParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.FindTabsParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;

    const/16 p2, 0x8

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_findTabs(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindTabsParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_3
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_createBookmark"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "createBookmarkParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.CreateBookmarkParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;

    const/4 p2, 0x1

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_createBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/CreateBookmarkParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_4
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_updateBookmark"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "updateBookmarkParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.UpdateBookmarkParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;

    const/4 p2, 0x3

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_updateBookmark(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/UpdateBookmarkParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_5
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_deleteBookmarks"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "bookmarkIds"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    const/4 p2, 0x2

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_deleteBookmarks(Lz4/a;Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_6
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_findBookmarks"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "findBookmarksParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.FindBookmarksParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;

    const/4 p2, 0x4

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_findBookmarks(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/FindBookmarksParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_7
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_getHistories"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "getHistoriesParams"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "null cannot be cast to non-null type com.google.android.appfunctions.schema.common.v1.browser.GetHistoriesParams"

    invoke-static {p0, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;

    const/4 p2, 0x6

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_getHistories(Lz4/a;Lcom/google/android/appfunctions/schema/common/v1/browser/GetHistoriesParams;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :sswitch_8
    const-string p0, "com.sec.android.app.sbrowser.cross_app_action#BrowserFunctions_showBookmark"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "bookmarkId"

    invoke-virtual {p3, p0}, Lgb/f;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    const/4 p2, 0x5

    iput p2, v0, Lv3/j;->c:I

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/cross_app_action/AppSchemaFunctionsKt;->BrowserFunctions_showBookmark(Lz4/a;Ljava/lang/String;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p4, :cond_1

    return-object p4

    :cond_1
    :goto_1
    return-object p0

    :cond_2
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Function ["

    const-string p3, "] is not available."

    invoke-static {p1, p2, p3}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x78161d0e -> :sswitch_8
        -0x568f62e5 -> :sswitch_7
        -0x55fb4b7b -> :sswitch_6
        -0x40fd176d -> :sswitch_5
        -0x32d4b702 -> :sswitch_4
        -0x2fb531cf -> :sswitch_3
        0x3bab0bf6 -> :sswitch_2
        0x4ce6dc59 -> :sswitch_1
        0x4ff45b03 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lappfunctions_aggregated_deps/_com_sec_android_app_sbrowser_cross_app_action_AppSchemaFunctions_AppFunctionInvoker_Impl;->a:Ljava/util/Set;

    return-object p0
.end method
