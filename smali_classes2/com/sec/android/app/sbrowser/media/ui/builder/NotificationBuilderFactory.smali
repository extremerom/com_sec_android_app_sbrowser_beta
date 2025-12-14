.class public Lcom/sec/android/app/sbrowser/media/ui/builder/NotificationBuilderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createNotificationBuilder(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/builder/INotificationBuilder;
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/media/ui/builder/NotificationCompatBuilder;

    invoke-direct {v1, v0, p0}, Lcom/sec/android/app/sbrowser/media/ui/builder/NotificationCompatBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method
