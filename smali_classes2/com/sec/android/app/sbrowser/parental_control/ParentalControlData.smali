.class Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sAllowedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBlockedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sProtectLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private isDataChanged(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    invoke-interface {p2, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    invoke-interface {p3, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static resetParentalControlData()V
    .locals 2

    const-string v0, "ParentalControlData"

    const-string v1, "resetParentalControlData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    sput-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->saveProtectLevel(I)V

    return-void
.end method

.method public static saveParentalControlData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "websites_selected"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    const-string v0, "allowed_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    const-string v0, "blocked_list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getParentalControlData, Success, protectLevel: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ParentalControlData"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isUserBinary()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getParentalControlData, Success, allowList count: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getParentalControlData, Success, blockList count: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getParentalControlData, Success, allowList: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getParentalControlData, Success, blockList: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->saveProtectLevel(I)V

    return-void
.end method

.method private static saveProtectLevel(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "parental_control_protect_level"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public fetchParentalControlWebSitesSettings()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "ParentalControlData"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.samsung.android.app.parentalcare.provider/ caresettings/*"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "GetSettings"

    const-string v4, "websites_settings"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    const-string v1, "getParentalControlData, no result"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    const-string v1, "getParentalControlData, Parental control unsupported"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getAllowedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->update()V

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getBlockedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->update()V

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getProtectLevel()Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->update()V

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public getProtectLevelWithoutUpdate()Ljava/lang/Integer;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    return-object p0
.end method

.method public update()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->fetchParentalControlWebSitesSettings()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "result_message"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ParentalControlData"

    if-nez v1, :cond_3

    sget-object v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sProtectLevel:Ljava/lang/Integer;

    sget-object v2, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    sget-object v5, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sAllowedList:Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    sget-object v5, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    sget-object v5, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->sBlockedList:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->saveParentalControlData(Landroid/os/Bundle;)V

    invoke-direct {p0, v1, v2, v4}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->isDataChanged(Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "getParentalControlData, Data changed"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->onParentalControlDataUpdated()V

    goto :goto_2

    :cond_3
    const/4 p0, 0x1

    if-ne v1, p0, :cond_4

    const-string p0, "getParentalControlData, Failed, resultMessage: "

    invoke-static {p0, v2, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlData;->resetParentalControlData()V

    goto :goto_2

    :cond_4
    const/4 p0, 0x2

    if-ne v1, p0, :cond_5

    const-string p0, "getParentalControlData, Error, resultMessage: "

    invoke-static {p0, v2, v3}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
