.class public final synthetic Lcom/sec/android/app/sbrowser/contents_push/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->e:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->a:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/contents_push/b;->e:Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;

    invoke-static {v2, v0, v1, v3, p0}, Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;->a(Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/contents_push/ContentsPushNotificationManager$BitmapCallback;)V

    return-void
.end method
