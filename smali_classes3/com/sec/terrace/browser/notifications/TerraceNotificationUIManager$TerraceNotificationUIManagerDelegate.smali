.class public final Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceNotificationUIManagerDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;,
        Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->a()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->a()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$DelegateFactory;->getDelegate()Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;->mDelegate:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public requestNotificationPermission(Landroid/app/Activity;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate;->mDelegate:Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager;->runPermissionCallback(JZ)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/notifications/TerraceNotificationUIManager$TerraceNotificationUIManagerDelegate$Delegate;->requestNotificationPermission(Landroid/app/Activity;J)V

    return-void
.end method
