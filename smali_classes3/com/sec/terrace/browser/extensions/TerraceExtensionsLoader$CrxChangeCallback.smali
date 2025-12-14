.class public interface abstract Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader$CrxChangeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceExtensionsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CrxChangeCallback"
.end annotation


# virtual methods
.method public abstract onCrxInstallFailed(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
.end method

.method public abstract onCrxInstalled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
.end method

.method public abstract onCrxUninstalled(Ljava/lang/String;ZLjava/lang/String;)V
.end method
