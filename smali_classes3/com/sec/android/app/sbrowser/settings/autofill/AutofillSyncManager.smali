.class public Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;,
        Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;,
        Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOffState;
    }
.end annotation


# static fields
.field private static final SYNC_OFF:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

.field private static final SYNC_ON:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;


# instance fields
.field private mSyncState:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->SYNC_ON:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOffState;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOffState;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->SYNC_OFF:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->updateSyncState()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    return-object v0
.end method

.method private updateSyncState()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->SYNC_ON:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->SYNC_OFF:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->mSyncState:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    return-void
.end method


# virtual methods
.method public launchCreditCardSettings(Landroid/app/Activity;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->updateSyncState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->mSyncState:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;->launchCreditCardSettings(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    const-string p0, "AutofillSyncManager"

    const-string p1, "Activity is destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public launchProfileSettings(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->updateSyncState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->mSyncState:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;->launchProfileSettings(Landroid/app/Activity;)V

    return-void
.end method

.method public launchUsernameAndPasswordSettings(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->updateSyncState()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->mSyncState:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncState;->launchUsernameAndPasswordSettings(Landroid/app/Activity;)V

    return-void
.end method

.method public setSync(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSync : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->setPersonalDataSync(Z)V

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setPersonalDataSyncSetFlag(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->updateSyncState()V

    return-void
.end method
