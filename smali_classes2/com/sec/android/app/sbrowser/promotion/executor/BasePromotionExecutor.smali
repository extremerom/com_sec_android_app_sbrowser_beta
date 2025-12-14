.class abstract Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

.field private mDialog:Lm/l;

.field private mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAction:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->lambda$execute$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->lambda$execute$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->lambda$execute$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$1;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->feedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->lambda$execute$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic lambda$execute$0(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->POSITIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;->onPositive(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->release()V

    return-void
.end method

.method private synthetic lambda$execute$1(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;->onNeutral(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->release()V

    return-void
.end method

.method private synthetic lambda$execute$2(Landroid/content/DialogInterface;I)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEGATIVE:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;->onNegative(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->release()V

    return-void
.end method

.method private synthetic lambda$execute$3(Landroid/content/DialogInterface;)V
    .locals 0

    sget-object p1, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;->NEUTRAL:Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->callFeedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;->onNeutral(Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->release()V

    return-void
.end method

.method private logging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/promotion/model/Category;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "det"

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p0, "201"

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mDialog:Lm/l;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mActivityReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public execute(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mDialog:Lm/l;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mResultInterface:Lcom/sec/android/app/sbrowser/promotion/executor/IPromotionExecutor$PromotionResultInterface;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mActivityReference:Ljava/lang/ref/WeakReference;

    new-instance p2, Lm/k;

    const v0, 0x7f1501c5

    invoke-direct {p2, p1, v0}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;->getTitleText()I

    move-result p1

    invoke-virtual {p2, p1}, Lm/k;->e(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;->getBodyText()I

    move-result p1

    invoke-virtual {p2, p1}, Lm/k;->a(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;->getPositiveButtonText()I

    move-result p1

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/promotion/executor/a;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;I)V

    invoke-virtual {p2, p1, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;->getNeutralButtonText()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/promotion/executor/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/a;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;I)V

    invoke-virtual {p1, v0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;->getNegativeButtonText()I

    move-result v0

    new-instance v1, Lcom/sec/android/app/sbrowser/promotion/executor/a;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/promotion/executor/a;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;I)V

    invoke-virtual {p1, v0, v1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/promotion/executor/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/promotion/executor/b;-><init>(Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;)V

    iget-object p1, p1, Lm/k;->a:Lm/h;

    iput-object v0, p1, Lm/h;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p2}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mDialog:Lm/l;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mDialog:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const-string p1, "5500"

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->logging(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public feedback(Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor$2;->$SwitchMap$com$sec$android$app$sbrowser$promotion$executor$IFeedbackInterface$Result:[I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface;->getResult()Lcom/sec/android/app/sbrowser/promotion/executor/IFeedbackInterface$Result;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-string p1, "Never"

    goto :goto_0

    :cond_1
    const-string p1, "Not now"

    goto :goto_0

    :cond_2
    const-string p1, "OK"

    :goto_0
    const-string v0, "5501"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->logging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getCategory()Lcom/sec/android/app/sbrowser/promotion/model/Category;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public setViewAdapter(Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/promotion/executor/BasePromotionExecutor;->mAdapter:Lcom/sec/android/app/sbrowser/promotion/executor/PromotionViewAdapter;

    return-void
.end method
