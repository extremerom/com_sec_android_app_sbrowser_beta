.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/i;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/i;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/i;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->d(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->a(Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
