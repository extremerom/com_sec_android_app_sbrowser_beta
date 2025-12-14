.class Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->requestPermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-static {p1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->a(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)V

    invoke-static {}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegateJni;->get()Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-static {p2}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->access$000(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)J

    move-result-wide v0

    iget-object p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    const/4 p2, 0x0

    invoke-interface {p1, v0, v1, p0, p2}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$Natives;->onPermissionResult(JLcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    invoke-static {p0}, Lorg/chromium/base/ApplicationStatus;->unregisterActivityStateListener(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-static {p1}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->a(Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate$1;->this$0:Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/permissions/TerracePermissionUpdateInfoBarDelegate;->notifyPermissionResult()V

    :cond_1
    :goto_0
    return-void
.end method
