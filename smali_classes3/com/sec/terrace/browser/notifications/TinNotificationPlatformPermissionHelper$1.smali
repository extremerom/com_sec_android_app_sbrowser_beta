.class Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->requestNotificationPermissionForExt(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$nativeCallback:J

.field final synthetic val$terraceActivity:Lcom/sec/terrace/TerraceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$terraceActivity:Lcom/sec/terrace/TerraceActivity;

    iput-object p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$key:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    iget-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$terraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$key:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    aget p2, p2, p1

    if-nez p2, :cond_0

    iget-wide v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$nativeCallback:J

    invoke-static {v0, v1, p1}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallbackForExt(JI)V

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper$1;->val$nativeCallback:J

    const/4 p2, -0x1

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformPermissionHelper;->runPermissionCallbackForExt(JI)V

    :goto_0
    return-void
.end method
