.class public Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;
.super Landroidx/fragment/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# static fields
.field protected static sIsShowing:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mDialog:Lm/l;

.field mSelectedOptions:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeRange:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/u;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->lambda$clearBrowsingData$1()V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->lambda$clearBrowsingData$0()V

    return-void
.end method

.method private static synthetic lambda$clearBrowsingData$0()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/logging/GateMessage;->printGateMessage(I)V

    return-void
.end method

.method private lambda$clearBrowsingData$1()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ll4/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/bumptech/glide/b;->a:LS3/p;

    iget-object p0, p0, LS3/p;->f:LS3/o;

    invoke-virtual {p0}, LS3/o;->a()LU3/a;

    move-result-object p0

    invoke-interface {p0}, LU3/a;->clear()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must call this method on a background thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private sendSALogs(Ljava/util/EnumSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mTimeRange:I

    const-string v1, "1h"

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "All"

    goto :goto_0

    :cond_1
    const-string v1, "4w"

    goto :goto_0

    :cond_2
    const-string v1, "7d"

    goto :goto_0

    :cond_3
    const-string v1, "24h"

    :cond_4
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Period"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->getScreenID()Ljava/lang/String;

    move-result-object v1

    const-string v3, "5111"

    invoke-static {v1, v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    shl-int/2addr v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    shl-int/2addr v0, v2

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Options"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setIsShowing(Z)V
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->sIsShowing:Z

    return-void
.end method


# virtual methods
.method public final clearBrowsingData(Ljava/util/EnumSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    sget-object v9, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    sget-object v10, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v4, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v7

    iget v8, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mTimeRange:I

    const/4 v11, 0x0

    move v5, v6

    move v6, v11

    invoke-static/range {v0 .. v8}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->clearBrowsingData(Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge$ClearBrowsingDataObserver;ZZZZZZZI)Z

    invoke-virtual {p1, v9}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, LNc/N;->c:LWc/e;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository$Companion;->getInstance(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mTimeRange:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryRepository;->deleteHistoryBetween(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mTimeRange:I

    invoke-static {v0, v6, v7}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;->getStartTime(IJ)J

    move-result-wide v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->getInstance()Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->deleteMediaHistoryDataByVisitTime(Landroid/content/Context;JJ)Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerHandler;->clearHistory()V

    new-instance v0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->clearHistory()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sbrowser_history_delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p1, v10}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/T;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/T;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "581"

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    sget-boolean p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->sIsShowing:Z

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->setIsShowing(Z)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->sendSALogs(Ljava/util/EnumSet;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->onOptionSelected(Ljava/util/EnumSet;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->getScreenID()Ljava/lang/String;

    move-result-object p2

    const-string v0, "5110"

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    const v3, 0x7f1402c1

    const v4, 0x7f140433

    const v5, 0x7f1501c5

    if-ne v1, v2, :cond_2

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v0, p1, Lm/k;->a:Lm/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lm/h;->m:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1, v4, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/e;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p1, v3, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    return-object p0

    :cond_2
    new-instance v1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lm/k;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u2022 "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->getResourceId()I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v6, 0x7f0e01d9

    invoke-virtual {p1, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f0b03db

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f140439

    invoke-virtual {v1, v9}, Lm/k;->e(I)V

    move v9, v7

    :goto_2
    if-ge v9, v2, :cond_4

    const v10, 0x7f0e01da

    invoke-virtual {p1, v10, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b03d9

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    aget-object v12, v5, v9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mActivity:Landroid/app/Activity;

    const/16 v5, 0x10

    invoke-static {v2, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v7, v0, v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v1, v6}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1, v4, p1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/e;

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/settings/e;-><init>(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {v1, v3, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    return-object p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onDismiss(Landroid/content/DialogInterface;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->setIsShowing(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    :cond_0
    return-void
.end method

.method public onOptionSelected(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->clearBrowsingData(Ljava/util/EnumSet;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/u;->onStart()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lm/l;->g(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f0600fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setSelectedOptions(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mSelectedOptions:Ljava/util/EnumSet;

    return-void
.end method

.method public setTimeRange(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->mTimeRange:I

    return-void
.end method

.method public show(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/settings/SettingsActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const-string v1, "ClearDataConfirmDeleteDialog"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Landroidx/fragment/app/a;->h(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :try_start_0
    iget-boolean p0, p1, Landroidx/fragment/app/a;->g:Z

    if-nez p0, :cond_1

    iput-boolean v0, p1, Landroidx/fragment/app/a;->h:Z

    iget-object p0, p1, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/f0;->A(Landroidx/fragment/app/a;Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, " IllegalStateException "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    :goto_0
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->setIsShowing(Z)V

    return-void

    :cond_2
    :goto_1
    const-string p0, "Can\'t show dialog in invalid state"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
