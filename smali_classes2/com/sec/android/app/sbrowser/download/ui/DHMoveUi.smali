.class public Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentProgress:I

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mTotalCount:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->initDialog()V

    return-void
.end method

.method private initDialog()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mCurrentProgress:I

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mContext:Landroid/content/Context;

    const v3, 0x7f140476

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mTotalCount:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public finishMoveOperation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public updateProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mCurrentProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMoveUi;->mCurrentProgress:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
