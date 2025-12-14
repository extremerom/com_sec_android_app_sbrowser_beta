.class public final synthetic Lcom/sec/android/app/sbrowser/web_push/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;


# instance fields
.field public final synthetic a:Landroid/content/SharedPreferences;

.field public final synthetic b:I

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_push/a;->a:Landroid/content/SharedPreferences;

    iput p2, p0, Lcom/sec/android/app/sbrowser/web_push/a;->b:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/web_push/a;->c:J

    return-void
.end method


# virtual methods
.method public final onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_push/a;->a:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/sec/android/app/sbrowser/web_push/a;->b:I

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/web_push/a;->c:J

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/web_push/WebPushNotificationManager$NotificationUIManagerDelegate;->a(Landroid/content/SharedPreferences;IJ[Ljava/lang/String;[I)V

    return-void
.end method
