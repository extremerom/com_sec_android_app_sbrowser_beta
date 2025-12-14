.class public Lcom/sec/android/app/sbrowser/common/model/webapp/WebappScopePolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/model/webapp/WebappScopePolicy$NavigationDirective;,
        Lcom/sec/android/app/sbrowser/common/model/webapp/WebappScopePolicy$Type;
    }
.end annotation


# direct methods
.method public static applyPolicyForNavigationToUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/model/webapp/WebappScopePolicy;->isUrlInScope(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUrlInScope(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p3, p2}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->isUrlWithinScope(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {p1, p3, v0}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->sameDomainOrHost(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
