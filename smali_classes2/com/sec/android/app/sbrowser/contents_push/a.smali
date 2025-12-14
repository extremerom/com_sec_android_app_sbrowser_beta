.class public final synthetic Lcom/sec/android/app/sbrowser/contents_push/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

.field public final synthetic b:LU0/o;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroid/app/NotificationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->b:LU0/o;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->c:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->e:Landroid/content/Context;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->f:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public final onFinished(Landroid/graphics/Bitmap;)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->b:LU0/o;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->c:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/contents_push/a;->f:Landroid/app/NotificationManager;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;->a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager;LU0/o;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushSmpMessage;Ljava/lang/String;Landroid/content/Context;Landroid/app/NotificationManager;Landroid/graphics/Bitmap;)V

    return-void
.end method
