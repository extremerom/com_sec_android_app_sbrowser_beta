.class public Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;
    }
.end annotation


# instance fields
.field private mCardAndAddressDataMoved:Z

.field private mMigrationCompletedDialog:Lm/l;

.field private mNameAndPasswordDataMoved:Z

.field private final mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList<",
            "Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->lambda$migrateAllData$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->lambda$migrateAllData$0(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;)Lm/l;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    return-object p0
.end method

.method private checkAndNotifyMigrationCompleted(Landroid/content/Context;)V
    .locals 2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mCardAndAddressDataMoved:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mNameAndPasswordDataMoved:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->setSync(Z)V

    sget-object p1, Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;->UPDATE_IMPORTANT_FOR_AUTOFILL:Lcom/sec/android/app/sbrowser/autofill/ActionOnAutofillServiceChanged;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/autofill/AutofillServiceChangeObserver;->updateTabsOnDataStorageChange(Ljava/util/EnumSet;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    const v0, 0x7f0b09e1

    invoke-virtual {p1, v0}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    const v1, 0x7f0b0928

    invoke-virtual {v0, v1}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->notifyObservers()V

    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;

    return-object v0
.end method

.method private synthetic lambda$migrateAllData$0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mNameAndPasswordDataMoved:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->checkAndNotifyMigrationCompleted(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$migrateAllData$1(Landroid/content/Context;)V
    .locals 2

    const-string v0, "0030"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->getInstance()Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/autofill/TerracePersonalDataManager;->forceReloadData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mCardAndAddressDataMoved:Z

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->checkAndNotifyMigrationCompleted(Landroid/content/Context;)V

    return-void
.end method

.method private migrateAllData(Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 5

    const-string v0, "SamsungPassDataMigrationController"

    const-string v1, "Data migration started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;-><init>()V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mNameAndPasswordDataMoved:Z

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->getDataMigrationService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/autofill/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p2, v4}, Lcom/sec/android/app/sbrowser/autofill/a;-><init>(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;Landroid/content/Context;I)V

    invoke-interface {v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;->migrateAllData(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mCardAndAddressDataMoved:Z

    new-instance v2, Lcom/sec/android/app/sbrowser/autofill/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p2, v3}, Lcom/sec/android/app/sbrowser/autofill/a;-><init>(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->migrateFromLocalToSamsungPass(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "migrate autofill data to Samsung Pass on Launch"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_0
    const-string p0, "Data migration failed"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyObservers()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;->onMigrationCompleted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showMigrationCompletedDialog(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lm/k;

    const v1, 0x7f1501c5

    invoke-direct {v0, p1, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object p1, v0, Lm/k;->a:Lm/h;

    const/4 v1, 0x0

    iput-object v1, p1, Lm/h;->u:Landroid/view/View;

    const v1, 0x7f0e08b0

    iput v1, p1, Lm/h;->t:I

    const v1, 0x7f14015c

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f14015b

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    const/4 v1, 0x0

    iput-boolean v1, p1, Lm/h;->m:Z

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mMigrationCompletedDialog:Lm/l;

    const v0, 0x7f0b09e1

    invoke-virtual {p1, v0}, Lm/y;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$1;-><init>(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public checkAndPerformDataMigration(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "migrate autofill data to Samsung Pass on Launch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->showMigrationCompletedDialog(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->migrateAllData(Landroid/content/SharedPreferences;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController$MigrationCompletedObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/SamsungPassDataMigrationController;->mObservers:Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method
