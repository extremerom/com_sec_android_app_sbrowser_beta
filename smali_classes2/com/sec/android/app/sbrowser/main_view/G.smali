.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/G;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/G;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/G;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/G;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/main_view/G;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/Intent;Lw2/A;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/G;->b:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/G;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/G;->f:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/G;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/G;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->e:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/G;->f:Ljava/lang/Object;

    check-cast v1, Lw2/A;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/main_view/G;->b:Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/G;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->d:Ljava/lang/String;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->b(ZLandroid/content/Intent;Lw2/A;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->f:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/G;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/G;->e:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/G;->d:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/G;->b:Z

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;->e(Lcom/sec/android/app/sbrowser/main_view/MainViewImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
