.class public final synthetic Lcom/sec/android/app/sbrowser/webapp/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/c;->a:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/c;->a:Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/c;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/webapp/WebApkHelper;->c(Lcom/sec/android/app/sbrowser/webapp/WebApkHelper$DialogListener;Landroid/content/Context;Landroid/content/DialogInterface;)V

    return-void
.end method
