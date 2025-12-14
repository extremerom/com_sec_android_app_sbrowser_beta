.class Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabCreatingHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCreateCount:I

.field private mDialog:Lm/l;

.field private mRemainCount:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->lambda$createProgressDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->requestCreatingNewTab()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->createProgressDialog(I)V

    return-void
.end method

.method private createProgressDialog(I)V
    .locals 2

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lm/k;-><init>(Landroid/content/Context;)V

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mCreateCount:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mRemainCount:I

    const-string p1, "Creating..."

    invoke-virtual {v0, p1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/debug/t;

    const/4 v1, 0x0

    invoke-direct {p1, v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/t;-><init>(ILjava/lang/Object;)V

    const v1, 0x7f1402c1

    invoke-virtual {v0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->requestCreatingNewTab()V

    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mRemainCount:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mDialog:Lm/l;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lm/y;->dismiss()V

    return-void
.end method

.method private synthetic lambda$createProgressDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->dismissProgressDialog()V

    return-void
.end method

.method private requestCreatingNewTab()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mRemainCount:I

    if-gtz v0, :cond_0

    const-string v0, "TabManagerDebugPreferenceFragment"

    const-string v1, "[createNewTab] parameter is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->dismissProgressDialog()V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mRemainCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mDialog:Lm/l;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating... "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mCreateCount:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mRemainCount:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->mCreateCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/l;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;->dismissProgressDialog()V

    return-void

    :cond_1
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/TabManagerDebugPreferenceFragment$TabCreatingHelper;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->addListener(Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_UI:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->createNewTab(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method
