.class public Lcom/sec/terrace/TerraceSecurityStateModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceSecurityStateModel$Natives;
    }
.end annotation


# direct methods
.method public static getSecurityLevelForWebContents(Lcom/sec/terrace/Terrace;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceSecurityStateModelJni;->get()Lcom/sec/terrace/TerraceSecurityStateModel$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/TerraceSecurityStateModel$Natives;->getSecurityLevelForWebContents(Lorg/chromium/content_public/browser/WebContents;)I

    move-result p0

    return p0
.end method
