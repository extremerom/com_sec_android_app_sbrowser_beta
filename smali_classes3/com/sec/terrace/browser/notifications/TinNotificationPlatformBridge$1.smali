.class Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->addNotificationDataToDBOnWorkerThread(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$origin:Ljava/lang/String;

.field final synthetic val$persid:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->this$0:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    iput-object p2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$origin:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$icon:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$body:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$persid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->this$0:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    iget-object v1, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$origin:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$icon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$body:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge$1;->val$persid:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->h(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
