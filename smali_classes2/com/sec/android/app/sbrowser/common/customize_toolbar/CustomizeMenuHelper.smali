.class public Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static clearPreference(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->remove(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static getBooleanPref(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getItemResourceNameFromId(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "getMenuStringFromId() - return Extensions Action Id: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "CustomizeMenuHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static saveMenuList(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "failed to save menu items "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomizeMenuHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->getItemResourceNameFromId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static setBooleanPref(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object v0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->setBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
