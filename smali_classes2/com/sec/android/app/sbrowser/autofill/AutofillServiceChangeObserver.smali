.class public Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;)V

    return-void
.end method

.method public static updateTabsOnDataStorageChange(Ljava/util/EnumSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->get(I)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v7, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-virtual {p0, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/terrace/Terrace;->reloadNonWebUIPage(Z)V

    :cond_1
    sget-object v7, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-virtual {p0, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v1}, Lcom/sec/terrace/Terrace;->setImportantForAutofillForVirtualView(Z)V

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-ne v6, v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v6

    if-eqz v6, :cond_3

    sget-object v7, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-virtual {p0, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v2}, Lcom/sec/terrace/Terrace;->reloadNonWebUIPage(Z)V

    :cond_5
    sget-object v7, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-virtual {p0, v7}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v1}, Lcom/sec/terrace/Terrace;->setImportantForAutofillForVirtualView(Z)V

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method


# virtual methods
.method public onAutofillServiceChanged()V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->REFRESH_ALL_TABS:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    sget-object v0, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-static {p0, v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;->updateTabsOnDataStorageChange(Ljava/util/EnumSet;)V

    return-void
.end method

.method public unRegisterObserver()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->getInstance()Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/SystemSettingsObserver$AutofillServiceChangeObserver;)V

    return-void
.end method
