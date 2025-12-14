.class public final synthetic Lcom/sec/android/app/sbrowser/webapp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/webapp/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/b;->b:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/webapp/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/b;->b:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/b;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->d(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/b;->b:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/b;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->a(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
