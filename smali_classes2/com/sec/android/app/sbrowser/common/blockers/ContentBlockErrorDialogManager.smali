.class public Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$LazyHolder;,
        Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$ErrorNotifyType;
    }
.end annotation


# instance fields
.field mCurrentErrorNotifyType:I

.field private mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

.field private mErrorPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;-><init>()V

    return-void
.end method

.method private convertToAppNamesFromPackages(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$LazyHolder;->a()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    move-result-object v0

    return-object v0
.end method

.method private validWhiteAppAvailable(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getContentBlockerDataList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->isWhite()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return p1
.end method


# virtual methods
.method public dismissIfNeeded()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    return-void
.end method

.method public getErrorPackageNameList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public removeAppFromErrorPackageList(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method public showErrorNotificationIfNeeded(Landroid/content/Context;Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mCurrentErrorNotifyType:I

    return-void

    :cond_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mCurrentErrorNotifyType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    new-instance p2, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    invoke-direct {p2, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mDialog:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mCurrentErrorNotifyType:I

    return-void

    :cond_5
    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->convertToAppNamesFromPackages(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f140340

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    :cond_7
    :goto_2
    if-le v4, v5, :cond_9

    invoke-static {v3, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_3

    :cond_8
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    goto :goto_2

    :cond_9
    :goto_3
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f14036f

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_a
    const v1, 0x7f140370

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    const/4 v0, -0x1

    invoke-static {p2, p1, v2, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-virtual {p1}, LH6/o;->l()V

    iput v2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mCurrentErrorNotifyType:I

    :cond_b
    return-void
.end method

.method public showValidationErrorDialog(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->validWhiteAppAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f140372

    goto :goto_0

    :cond_0
    const v1, 0x7f140373

    :goto_0
    new-instance v2, Lm/k;

    const v3, 0x7f1501c5

    invoke-direct {v2, p1, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f140375

    invoke-virtual {v2, v3}, Lm/k;->e(I)V

    invoke-virtual {v2, v1}, Lm/k;->a(I)V

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$2;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;)V

    const v1, 0x7f140371

    invoke-virtual {v2, v1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$1;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;Landroid/content/Context;)V

    const p0, 0x7f140374

    invoke-virtual {v0, p0, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$3;-><init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;)V

    const p0, 0x104000a

    invoke-virtual {v2, p0, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void
.end method

.method public updateErrorPackagesStatus(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mCurrentErrorNotifyType:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->mErrorPackageList:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method
