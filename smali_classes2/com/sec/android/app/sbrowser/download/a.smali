.class public final synthetic Lcom/sec/android/app/sbrowser/download/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/download/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/download/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadImageHelperImpl;->b(Landroid/content/SharedPreferences;Ljava/lang/Runnable;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/a;->b:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/a;->d:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->a(Lcom/sec/android/app/sbrowser/download/DownloadHandler;Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
