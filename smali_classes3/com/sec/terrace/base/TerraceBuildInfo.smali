.class public Lcom/sec/terrace/base/TerraceBuildInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isTargetAtLeastT()Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/BuildInfo;->targetsAtLeastT()Z

    move-result v0

    return v0
.end method
