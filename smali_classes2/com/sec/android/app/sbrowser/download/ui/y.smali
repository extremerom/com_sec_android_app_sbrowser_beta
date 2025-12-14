.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/y;->a:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/download/ui/y;->b:Z

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/y;->a:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/y;->b:Z

    invoke-static {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->d(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
