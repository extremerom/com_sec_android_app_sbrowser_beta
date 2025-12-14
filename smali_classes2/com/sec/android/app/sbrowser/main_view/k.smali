.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/k;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/k;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/k;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;->b(Lcom/sec/android/app/sbrowser/main_view/ToolbarEventHandler;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;->c(Lcom/sec/android/app/sbrowser/main_view/NewGuiSelectionDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewActivityResult;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/DownloadLanguageDialog;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
