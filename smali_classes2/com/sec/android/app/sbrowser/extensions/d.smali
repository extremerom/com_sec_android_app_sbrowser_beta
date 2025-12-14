.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/extensions/SixDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/extensions/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/d;->b:Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/d;->c:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/d;->b:Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/d;->c:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;->d(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/d;->b:Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/d;->c:Lcom/sec/android/app/sbrowser/extensions/SixDialog;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;->e(Lcom/sec/android/app/sbrowser/extensions/SixSIUpdateDialog;Lcom/sec/android/app/sbrowser/extensions/SixDialog;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
