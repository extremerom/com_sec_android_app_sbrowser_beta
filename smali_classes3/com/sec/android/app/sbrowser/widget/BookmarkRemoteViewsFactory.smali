.class Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;


# instance fields
.field private mAdapterData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

.field private mContext:Landroid/content/Context;

.field private mWidgetId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    const-string p1, "appWidgetId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bookmark Widget items count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BookmarkRemoteViewsFactory"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0e005c

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f0e005b

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "BookmarkRemoteViewsFactory"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BookmarkWidgetItem is null : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils;->createBookmarkItemView(Landroid/content/Context;Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetItem;I)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, "mAdapterData is null or size() < position"

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getWidgetCount()I
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkWidgetRootManager;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "BOOKMARK_ID"

    const/4 v2, 0x0

    const-string v3, "sbrowser_bookmark_widget_shared_preference_no_"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_2
    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    iget-boolean p1, p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->isFolder:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookMarkRoot:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "7050"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->getWidgetCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mBookmarkWidgetModel:Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetUtils;->fetchBookmarkItems(Landroid/content/Context;ILcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mAdapterData:Ljava/util/List;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sbrowser_bookmark_widget_shared_preference_no_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/BookmarkRemoteViewsFactory;->mWidgetId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
