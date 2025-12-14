.class public Lcom/sec/terrace/browser/net/TerracePolicyProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static refreshPolicies()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->refresh()V

    return-void
.end method

.method public static setProxyBypassList(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->setProxyBypassList(Ljava/lang/String;)V

    return-void
.end method

.method public static setProxyPacUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->setProxyPacUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static setProxyServer(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->setProxyServer(Ljava/lang/String;)V

    return-void
.end method

.method public static setProxyType(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->getInstance()Lcom/sec/terrace/browser/net/TinPolicyProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TinPolicyProvider;->setProxyType(Ljava/lang/String;)V

    return-void
.end method
