.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadLocaleCallbak;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$AppInfoCreateCallback;
    }
.end annotation


# instance fields
.field private mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

.field private mCurrentInstanceId:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;-><init>()V

    return-object v0
.end method

.method private declared-synchronized getConfiguration()Lcom/samsung/android/sdk/scs/ai/language/Configuration;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getConfiguration(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mConfiguration:Lcom/samsung/android/sdk/scs/ai/language/Configuration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;

    return-object v0
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.android.settings.action.LANGUAGE_PACK_SELECTED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.settings.action.LANGUAGE_PACK_ADDED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.settings.action.LANGUAGE_PACK_REMOVED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method public getLocales(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadLocaleCallbak;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getConfiguration()Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getTranslateSupportLanguage()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$1;

    invoke-direct {p2, p0, p5, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadLocaleCallbak;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LangPackManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadLocaleCallbak;->onFailed()V

    :goto_0
    return-void
.end method

.method public getSupportAllLanguageInfo(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getConfiguration()Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getTranslateSupportLanguage()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LangPackManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;->onFailed()V

    :goto_0
    return-void
.end method

.method public getSupportAllLanguageList(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;)V
    .locals 0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getConfiguration()Lcom/samsung/android/sdk/scs/ai/language/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/Configuration;->getTranslateSupportLanguage()Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$2;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LangPackManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageList;->onFailed()V

    :goto_0
    return-void
.end method

.method public getTargetLang()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserLanguage(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public onUpdateLang(Landroid/os/Bundle;)Z
    .locals 1

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->setTargetLang(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public openLangpackSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :goto_0
    const-string p5, "com.samsung.android.settings.action.LANGUAGE_PACK_SETTINGS"

    invoke-virtual {p0, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p5, "package"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "title"

    if-eqz p5, :cond_1

    const p2, 0x7f140669

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p5, "description"

    if-eqz p2, :cond_2

    const p2, 0x7f14066c

    :try_start_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "type"

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const p2, 0x7f140666

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f140668

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "primary_category"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "secondary_category"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    goto :goto_4

    :goto_3
    const-string p1, "LangPackManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_4
    return p0
.end method

.method public setTargetLang(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\\-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mCurrentInstanceId:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setUserLanguage(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public showDownloadLangpackDialog(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;)V
    .locals 6
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$4;

    invoke-direct {v5, p0, p1, p3, p8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$4;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->getLocales(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadLocaleCallbak;)V

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Mode"

    invoke-virtual {p0, p1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Result"

    const-string p2, "DownloadLangpack"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    const-string p2, "20050"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "LangPackManager"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;->onFailed()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateInstanceId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager;->mCurrentInstanceId:Ljava/lang/Integer;

    return-void
.end method
