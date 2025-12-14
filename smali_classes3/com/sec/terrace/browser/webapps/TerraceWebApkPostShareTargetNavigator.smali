.class public Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator$Natives;
    }
.end annotation


# direct methods
.method public static navigateIfPostShareTarget(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;LK/a;Lcom/sec/terrace/Terrace;)Z
    .locals 10

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil;->computePostData(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;LK/a;)Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object v0, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isValueFileUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [Z

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isValueFileUri:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigatorJni;->get()Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator$Natives;

    move-result-object v1

    iget-boolean v2, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->isMultipartEncoding:Z

    iget-object v0, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->names:Ljava/util/ArrayList;

    new-array v3, p2, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->values:Ljava/util/ArrayList;

    new-array v4, p2, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    iget-object v0, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->filenames:Ljava/util/ArrayList;

    new-array v6, p2, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/terrace/browser/webapps/TinWebApkShareTargetUtil$PostData;->types:Ljava/util/ArrayList;

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    invoke-static {p3}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v9

    move-object v8, p0

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator$Natives;->loadViewForShareTargetPost(Z[Ljava/lang/String;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V

    const/4 p0, 0x1

    return p0
.end method
