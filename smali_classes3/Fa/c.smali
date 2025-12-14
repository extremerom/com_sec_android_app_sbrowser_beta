.class public final synthetic LFa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LFa/c;->a:I

    iput-object p2, p0, LFa/c;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, LFa/c;->a:I

    iget-object p0, p0, LFa/c;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->c(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/widget/ImageButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/IntelligentFeaturesUtil$Companion;->a(Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;->d(Lcom/sec/android/app/sbrowser/tab_group/TabGroupNameDialog;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
