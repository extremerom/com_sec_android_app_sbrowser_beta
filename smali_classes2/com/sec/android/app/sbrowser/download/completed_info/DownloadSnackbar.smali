.class public Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mSnackbar:LH6/o;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    const-string v1, "DownloadSnackbar"

    if-nez v0, :cond_0

    const-string p0, "Can\'t show snackbar, not TabActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabActivity;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Can\'t show snackbar, no terrace"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->mSnackbar:LH6/o;

    invoke-virtual {p1, p3, p4}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->mSnackbar:LH6/o;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LH6/m;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->mSnackbar:LH6/o;

    :cond_0
    return-void
.end method

.method public isCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->mSnackbar:LH6/o;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public show()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadSnackbar;->mSnackbar:LH6/o;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_0
    return-void
.end method
