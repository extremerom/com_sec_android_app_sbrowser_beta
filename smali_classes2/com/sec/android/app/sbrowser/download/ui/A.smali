.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/SitesHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->b:Z

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->a(Lcom/sec/android/app/sbrowser/sites/SitesHelper;ZLandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/A;->b:Z

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->i(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
