.class public final synthetic Lcom/sec/terrace/browser/autofill/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge$Callback;
.implements Lorg/chromium/webapk/lib/client/WebApkIdentityServiceClient$CheckBrowserBacksWebApkCallback;
.implements Lcom/sec/terrace/browser/browserservices/TinTrustedWebActivityClient$PermissionCallback;
.implements Lw2/m;
.implements Lorg/chromium/content/browser/webcontents/WebContentsImpl$RequestContextCallback;
.implements LK0/j;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LK0/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, LNc/I;

    new-instance v1, LC1/j;

    const/16 v2, 0x16

    invoke-direct {v1, v2, p1, v0}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LNc/t0;->q(Lsb/k;)LNc/P;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public onChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/base/Callback;

    invoke-static {p0, v0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->b(Lorg/chromium/base/Callback;Ljava/lang/String;Z)V

    return-void
.end method

.method public onPermission(Landroid/content/ComponentName;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;->e(Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinNotificationPermissionUpdater;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;->i(Lcom/sec/android/app/sbrowser/contents_push/ui/topic_setting/PushTopicSettingFragment;Lcom/sec/android/app/sbrowser/contents_push/domain/PushTopic;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onResult(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;->a(Lcom/sec/terrace/browser/autofill/TinAutofillPopupBridge;Ljava/lang/String;Z)V

    return-void
.end method

.method public run(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/autofill/a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/terrace/browser/autofill/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;

    invoke-static {p0, v0, p1, p2}, Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;->a(Lorg/chromium/content/browser/webcontents/WebContentsImpl$SmartClipCallback;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
