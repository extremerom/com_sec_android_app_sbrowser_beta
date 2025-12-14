.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SiteItemUpdater$Callback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/i;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->c(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
