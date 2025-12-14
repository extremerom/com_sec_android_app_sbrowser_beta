.class Lcom/sec/terrace/browser/net/TinPolicyProvider;
.super Lorg/chromium/components/policy/PolicyProvider;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/net/TinPolicyProvider;


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/policy/PolicyProvider;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method private cleanBundle()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;
    .locals 2

    sget-object v0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->sInstance:Lcom/sec/terrace/browser/net/TinPolicyProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/net/TinPolicyProvider;

    invoke-direct {v0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->sInstance:Lcom/sec/terrace/browser/net/TinPolicyProvider;

    invoke-static {}, Lorg/chromium/components/policy/CombinedPolicyProvider;->get()Lorg/chromium/components/policy/CombinedPolicyProvider;

    move-result-object v0

    sget-object v1, Lcom/sec/terrace/browser/net/TinPolicyProvider;->sInstance:Lcom/sec/terrace/browser/net/TinPolicyProvider;

    invoke-virtual {v0, v1}, Lorg/chromium/components/policy/CombinedPolicyProvider;->registerProvider(Lorg/chromium/components/policy/PolicyProvider;)V

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->sInstance:Lcom/sec/terrace/browser/net/TinPolicyProvider;

    return-object v0
.end method


# virtual methods
.method public getBundleForTesing()Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public refresh()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->cleanBundle()V

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lorg/chromium/components/policy/PolicyProvider;->notifySettingsAvailable(Landroid/os/Bundle;)V

    return-void
.end method

.method public setProxyBypassList(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    const-string v0, "ProxyBypassList"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProxyPacUrl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    const-string v0, "ProxyPacUrl"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProxyServer(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    const-string v0, "ProxyServer"

    invoke-virtual {p0, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProxyType(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProxyMode"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "DIRECT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "PAC_URL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "PROXY_SERVER"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v1, "direct"

    goto :goto_1

    :pswitch_1
    const-string v1, "pac_script"

    goto :goto_1

    :pswitch_2
    const-string v1, "fixed_servers"

    :goto_1
    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinPolicyProvider;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3cbd45ac -> :sswitch_2
        -0x545dbfe -> :sswitch_1
        0x78348fe9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
