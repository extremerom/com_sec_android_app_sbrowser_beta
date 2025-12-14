.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->c:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->b:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;->a(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroHelper;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/B;->b:Z

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->e(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;ZLandroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
