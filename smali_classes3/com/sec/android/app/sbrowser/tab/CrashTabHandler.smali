.class public Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mCrashTabView:Landroid/view/View;

.field private mDelegate:Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;

.field private mWasShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p2, 0x7f0e01b4

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mCrashTabView:Landroid/view/View;

    const p2, 0x7f0b037d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p2, 0x7f1403e6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mCrashTabView:Landroid/view/View;

    const p2, 0x7f0b037e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance p2, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;->reload()V

    return-void
.end method


# virtual methods
.method public destroyCrashView()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mWasShown:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mCrashTabView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;->removeCrashView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mCrashTabView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mWasShown:Z

    return-void
.end method

.method public showCrashView()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mWasShown:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mDelegate:Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mCrashTabView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/tab/CrashTabDelegate;->addCrashView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mWasShown:Z

    return-void
.end method

.method public wasShown()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab/CrashTabHandler;->mWasShown:Z

    return p0
.end method
