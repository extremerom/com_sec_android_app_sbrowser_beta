.class public interface abstract Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper$TerraceSixTabHelperDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/extensions/TerraceSixTabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TerraceSixTabHelperDelegate"
.end annotation


# virtual methods
.method public abstract closeCurrentTab()V
.end method

.method public abstract closeTab(II)V
.end method

.method public abstract getCurrentActivityId()I
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getCurrentTabIndex()I
.end method

.method public abstract getLockedStatusByIndex(ZI)I
.end method

.method public abstract getTabIdByIndex(ZI)I
.end method

.method public abstract getTabIdList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isIncognito()Z
.end method

.method public abstract openInNewWindow(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setCurrentTab(II)V
.end method
